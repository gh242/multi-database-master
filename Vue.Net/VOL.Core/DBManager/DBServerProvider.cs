using Microsoft.EntityFrameworkCore;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using VOL.Core.Configuration;
using VOL.Core.Const;
using VOL.Core.Dapper;
using VOL.Core.EFDbContext;
using VOL.Core.Enums;
using VOL.Core.Extensions;
using VOL.Entity.SystemModels;

namespace VOL.Core.DBManager
{.
    public class DBServerProvider
    {
        private static readonly string _netcoredevserver = "netcoredevserver";
        private static readonly string _report = "report";
        private static readonly string _edc = "edc";
        private static Dictionary<string, string> ConnectionPool = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase)
        { 
            //配置業務數據庫連接  
            {_netcoredevserver, AppSetting.GetSettingString("ServiceConnectingString")},
            //配置報表數據庫連接
            {_report, AppSetting.GetSettingString("ReportConnectingString")},
            {_edc, AppSetting.GetSettingString("EDCConnectingString")}
            //系統庫不用配置了，已經在appsetting.json中配置過了
          };

        private static readonly string DefaultConnName = "default";

        static DBServerProvider()
        {
            SetConnection(DefaultConnName, AppSetting.DbConnectionString);
        }
        public static void SetConnection(string key, string val)
        {
            ConnectionPool[key] = val;
        }
        /// <summary>
        /// 設置默認數據庫連接
        /// </summary>
        /// <param name="val"></param>
        public static void SetDefaultConnection(string val)
        {
            SetConnection(DefaultConnName, val);
        }

        public static string GetConnectionString(string key)
        {
            key = key ?? DefaultConnName;
            if (ConnectionPool.ContainsKey(key))
            {
                return ConnectionPool[key];
            }
            return key;
        }
        /// <summary>
        /// 獲取默認數據庫連接
        /// </summary>
        /// <returns></returns>
        public static string GetConnectionString()
        {
            return GetConnectionString(DefaultConnName);
        }
        public static IDbConnection GetDbConnection(string connString = null)
        {
            if (connString == null)
            {
                connString = ConnectionPool[DefaultConnName];
            }
            if (DBType.Name == DbCurrentType.MySql.ToString())
            {
                return new MySql.Data.MySqlClient.MySqlConnection(connString);
            }
            if (DBType.Name == DbCurrentType.PgSql.ToString())
            {
                return new NpgsqlConnection(connString);
            }
            return new SqlConnection(connString);
        }


        /// <summary>
        /// 擴展dapper 獲取MSSQL數據庫DbConnection，默認系統獲取配置文件的DBType數據庫類型，
        /// </summary>
        /// <param name="connString">如果connString為null 執行重载GetDbConnection(string connString = null)</param>
        /// <param name="dapperType">指定連接數據庫的類型：MySql/MsSql/PgSql</param>
        /// <returns></returns>
        public static IDbConnection GetDbConnection(string connString = null, DbCurrentType dbCurrentType = DbCurrentType.Default)
        {
            //默認獲取DbConnection
            if (connString.IsNullOrEmpty() || DbCurrentType.Default == dbCurrentType)
            {
                return GetDbConnection(connString);
            }
            if (dbCurrentType == DbCurrentType.MySql)
            {
                return new MySql.Data.MySqlClient.MySqlConnection(connString);
            }
            if (dbCurrentType == DbCurrentType.PgSql)
            {
                return new NpgsqlConnection(connString);
            }
            return new SqlConnection(connString);

        }

        /// <summary>
        /// 獲取系統庫(2020.08.22)
        /// </summary>
        public static SysDbContext SysDbContext
        {
            get { return Utilities.HttpContext.Current.GetService<SysDbContext>(); ; }
        }

        /// <summary>
        /// 獲取系統庫(2020.08.22)
        /// </summary>
        public static SysDbContext DbContext
        {
            get { return GetEFDbContext(); }
        }
        /// <summary>
        /// 獲取系統庫(2020.08.22)
        /// </summary>
        public static SysDbContext GetEFDbContext()
        {
            return SysDbContext;
        }

        /// <summary>
        /// 獲取業務庫(2020.08.22)
        /// </summary>
        public static ServiceDbContext ServiceDbContext
        {
            get { return Utilities.HttpContext.Current.GetService<ServiceDbContext>(); ; }
        }

        /// <summary>
        /// 獲取報表庫(2020.08.22)
        /// </summary>
        public static ReportDbContext ReportDbContext
        {
            get { return Utilities.HttpContext.Current.GetService<ReportDbContext>(); ; }
        }
        public static EDCDbContext EDCDbContext
        {
            get { return Utilities.HttpContext.Current.GetService<EDCDbContext>(); ; }
        }


        /// <summary>
        /// 獲取調用系統庫的Dapper(2020.08.22)
        /// </summary>
        public static ISqlDapper SqlDapper
        {
            get
            {
                return new SqlDapper(DefaultConnName);
            }
        }

        /// <summary>
        /// 獲取連接報表庫的dapper(2020.08.22)
        /// </summary>
        public static ISqlDapper SqlDapperReport
        {
            get
            {
                return new SqlDapper(ReportConnectingString);
            }
        }
        public static ISqlDapper SqlDapperEDC
        {
            get
            {
                return new SqlDapper(EDCConnectingString);
            }
        }

        /// <summary>
        /// 獲取連接業務庫的dapper(2020.08.22)
        /// </summary>
        public static ISqlDapper SqlDapperService
        {
            get
            {
                return new SqlDapper(ServiceConnectingString);
            }
        }

        /// <summary>
        /// 獲取當前用戶所屬的業務庫，需要添加存儲用戶所屬數據庫的字段(2020.08.22)
        /// </summary>
        public static ISqlDapper SqlDapperUserCurrentService
        {
            get
            {
                return new SqlDapper(ServiceUserCurrnetConnectingString);
            }
        }

        /// <summary>
        /// 默認獲取連接系統庫的dapper(2020.08.22)
        /// </summary>
        public static ISqlDapper GetSqlDapper(string dbName = null)
        {
            return new SqlDapper(dbName ?? DefaultConnName);
        }

        public static ISqlDapper GetSqlDapperWithName(string name)
        {
            string dbName = null;
            if (name == typeof(SysEntity).Name)
            {
                dbName = SysConnectingString;
            }
            else if (name == typeof(ServiceEntity).Name)
            {
                dbName = ServiceConnectingString;
            }
            else if (name == typeof(ReportEntity).Name)
            {
                dbName = ReportConnectingString;
            }
            else if (name == typeof(EDCEntity).Name)
            {
                dbName = EDCConnectingString;
            }

            return new SqlDapper(dbName ?? DefaultConnName);
        }

        //(2020.08.22)
        public static ISqlDapper GetSqlDapper<TEntity>()
        {
            return GetSqlDapperWithName(typeof(TEntity).BaseType.Name);
        }

        /// <summary>
        /// 獲取報表數據庫的字符串連接(2020.08.22)
        /// </summary>
        public static string ReportConnectingString
        {
            //netcoredevserver為ConnectionPool字典中的key，如果字典中的key改變了，這裡也要改變
            get { return GetDbConnectionString(_report); }
        }
        public static string EDCConnectingString
        {
            //netcoredevserver為ConnectionPool字典中的key，如果字典中的key改變了，這裡也要改變
            get { return GetDbConnectionString(_edc); }
        }

        /// <summary>
        /// 獲取業務庫的字符串連接(2020.08.22)
        /// </summary>
        public static string ServiceConnectingString
        {
            //netcoredevserver為ConnectionPool字典中的key，如果字典中的key改變了，這裡也要改變
            get { return GetDbConnectionString(_netcoredevserver); }
        }

        /// <summary>
        /// 獲取業務庫的字符串連接(2020.08.22)
        /// 獲取當前用戶所屬的數據庫連接，需要添加存儲用戶所屬數據庫的字段(2020.08.22)
        /// </summary>
        public static string ServiceUserCurrnetConnectingString
        {
            get
            {
                //UserContext.Current.DbName用戶所屬性數據庫。需要自己添加字段
                // return ConnectionPool[UserContext.Current.DbName];
                return ServiceConnectingString;
            }
        }


        /// <summary>
        /// 獲取系統庫的字符串連接(2020.08.22)
        /// </summary>
        public static string SysConnectingString
        {
            get { return GetDbConnectionString(DefaultConnName); }
        }

        /// <summary>
        /// key為ConnectionPool初始化的所有數據庫連接(2020.08.22)
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static string GetDbConnectionString(string key)
        {
            if (ConnectionPool.TryGetValue(key, out string connString))
            {
                return connString;
            }
            throw new Exception($"未配置[{key}]的數據庫連接");
        }
        public static string GetContextName(string DBServer)
        {
            //  業務庫
            if (DBServer == typeof(ServiceDbContext).Name)
            {
                return typeof(ServiceEntity).Name;
            }//報表庫
            else if (DBServer == typeof(ReportDbContext).Name)
            {
                return typeof(ReportEntity).Name;
            }
            else if (DBServer == typeof(EDCDbContext).Name)
            {
                return typeof(EDCEntity).Name;
            }
            else//系統庫
            {
                return typeof(SysEntity).Name;
            }
        }


    }
}
