using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using VOL.Core.Const;
using VOL.Core.Enums;
using VOL.Core.ManageUser;
using VOL.Core.UserManager;

namespace VOL.Core.Infrastructure
{
    public static class DictionaryHandler
    {
        /*2020.05.01增加根据用戶信息加载字典数据源sql*/

        /// <summary>
        /// 獲取自定义数据源sql
        /// </summary>
        /// <param name="dicNo"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetCustomDBSql(string dicNo, string originalSql)
        {
            switch (dicNo)
            {
                case "roles":
                    originalSql = GetRolesSql(originalSql);
                    break;
                //2020.05.24增加绑定table表时，獲取所有的角色列表
                //注意，如果是2020.05.24之前獲取的數據庫脚本
                //請在菜单【下拉框绑定設置】添加一个字典编号【t_roles】,除了字典编号，其他内容随便填写
                case "t_roles":
                    originalSql = GetRolesSql();
                    break;
                default:
                    break;
            }
            return originalSql;
        }
        /// <summary>
        /// 2020.05.24增加绑定table表时，獲取所有的角色列表
        /// </summary>
        /// <param name="context"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetRolesSql()
        {
            if (DBType.Name == DbCurrentType.PgSql.ToString())
            {
                return "SELECT \"Role_Id\" as key,\"RoleName\" as value from Sys_Role";
            }
            return $@"SELECT Role_Id as 'key',RoleName as 'value' FROM Sys_Role 
                           WHERE Enable=1 ";
        }

        /// <summary>
        /// 獲取解决的数据源，只能看到自己與下级所有角色
        /// </summary>
        /// <param name="context"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetRolesSql(string originalSql)
        {
            if (UserContext.Current.IsSuperAdmin)
            {
                return originalSql;
            }
            int currnetRoleId = UserContext.Current.RoleId;
            List<int> roleIds = RoleContext.GetAllChildrenIds(currnetRoleId);
            roleIds.Add(currnetRoleId);
            string sql = $@"SELECT Role_Id as 'key',RoleName as 'value' FROM Sys_Role 
                           WHERE Enable=1  and Role_Id in ({string.Join(',', roleIds)})";
            return sql;
        }
    }
}
