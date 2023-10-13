/*
 *所有关于Sys_Department類的業務代码應在此處编写
*可使用repository.調用常用方法，獲取EF/Dapper等信息
*如果需要事务請使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动獲取數據庫相关信息
*用戶信息、权限、角色等使用UserContext.Current操作
*Sys_DepartmentService对增、删、改查、导入、导出、审核業務代码擴展参照ServiceFunFilter
*/
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;
using System.Linq;
using VOL.Core.Utilities;
using System.Linq.Expressions;
using VOL.Core.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using VOL.System.IRepositories;
using System.Collections.Generic;
using VOL.Core.ManageUser;
using VOL.Core.UserManager;

namespace VOL.System.Services
{
    public partial class Sys_DepartmentService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly ISys_DepartmentRepository _repository;//訪問數據庫

        [ActivatorUtilitiesConstructor]
        public Sys_DepartmentService(
            ISys_DepartmentRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租戶会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public override PageGridData<Sys_Department> GetPageData(PageDataOptions options)
        {
            FilterData();
            return base.GetPageData(options);
        }

        private void FilterData()
        {
            //限制 只能看自己部门及下级組织的数据
            QueryRelativeExpression = (IQueryable<Sys_Department> queryable) =>
            {
                if (UserContext.Current.IsSuperAdmin)
                {
                    return queryable;
                }
                var deptIds = UserContext.Current.GetAllChildrenDeptIds();
                return queryable.Where(x => deptIds.Contains(x.DepartmentId));
            };
        }
        public override WebResponseContent Export(PageDataOptions pageData)
        {
            FilterData();
            return base.Export(pageData);
        }

        WebResponseContent webResponse = new WebResponseContent();
        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            AddOnExecuting = (Sys_Department dept, object list) =>
            {
                return webResponse.OK();
            };
            return base.Add(saveDataModel).Reload();
        }
        public override WebResponseContent Update(SaveModel saveModel)
        {
            UpdateOnExecuting = (Sys_Department dept, object addList, object updateList, List<object> delKeys) =>
            {
                if (_repository.Exists(x => x.DepartmentId == dept.ParentId && x.DepartmentId == dept.DepartmentId))
                {
                    return webResponse.Error("上级組织不能选择自己");
                }
                if (_repository.Exists(x => x.ParentId == dept.DepartmentId) && _repository.Exists(x => x.DepartmentId == dept.ParentId))
                {
                    return webResponse.Error("不能选择此上级組织");
                }
                return webResponse.OK();
            };
            return base.Update(saveModel).Reload();
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            return base.Del(keys, delList).Reload();
        }
    }

}
