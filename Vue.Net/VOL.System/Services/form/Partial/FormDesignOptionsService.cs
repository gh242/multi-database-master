/*
 *所有关于FormDesignOptions類的業務代码應在此處编写
*可使用repository.調用常用方法，獲取EF/Dapper等信息
*如果需要事务請使用repository.DbContextBeginTransaction
*也可使用DBServerProvider.手动獲取數據庫相关信息
*用戶信息、权限、角色等使用UserContext.Current操作
*FormDesignOptionsService对增、删、改查、导入、导出、审核業務代码擴展参照ServiceFunFilter
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

namespace VOL.System.Services
{
    public partial class FormDesignOptionsService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IFormDesignOptionsRepository _repository;//訪問數據庫

        [ActivatorUtilitiesConstructor]
        public FormDesignOptionsService(
            IFormDesignOptionsRepository dbRepository,
            IHttpContextAccessor httpContextAccessor
            )
        : base(dbRepository)
        {
            _httpContextAccessor = httpContextAccessor;
            _repository = dbRepository;
            //多租戶会用到这init代码，其他情况可以不用
            //base.Init(dbRepository);
        }

        public override PageGridData<FormDesignOptions> GetPageData(PageDataOptions options)
        {
            return base.GetPageData(options);
        }
    }
}
