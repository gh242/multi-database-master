/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果數據庫字段发生變化，請在代码生器重新生成此Model
 */
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VOL.Entity.SystemModels;

namespace VOL.Entity.DomainModels
{
    [Entity(TableCnName = "系統日志",TableName = "Sys_Log",DBServer = "SysDbContext")]
    public class Sys_Log:SysEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="Id")]
       [Column(TypeName="int")]
       [Required(AllowEmptyStrings=false)]
       public int Id { get; set; }

       /// <summary>
       ///开始时间
       /// </summary>
       [Display(Name ="开始时间")]
       [Column(TypeName="datetime")]
       public DateTime? BeginDate { get; set; }

       /// <summary>
       ///用戶名称
       /// </summary>
       [Display(Name ="用戶名称")]
       [Column(TypeName="nvarchar(max)")]
       public string UserName { get; set; }

       /// <summary>
       ///請求地址
       /// </summary>
       [Display(Name ="請求地址")]
       [Column(TypeName="nvarchar(max)")]
       public string Url { get; set; }

       /// <summary>
       ///日志類型
       /// </summary>
       [Display(Name ="日志類型")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string LogType { get; set; }

       /// <summary>
       ///响應状态
       /// </summary>
       [Display(Name ="响應状态")]
       [Column(TypeName="int")]
       public int? Success { get; set; }

       /// <summary>
       ///时长
       /// </summary>
       [Display(Name ="时长")]
       [Column(TypeName="int")]
       public int? ElapsedTime { get; set; }

       /// <summary>
       ///請求参数
       /// </summary>
       [Display(Name ="請求参数")]
       [Column(TypeName="nvarchar(max)")]
       public string RequestParameter { get; set; }

       /// <summary>
       ///响應参数
       /// </summary>
       [Display(Name ="响應参数")]
       [Column(TypeName="nvarchar(max)")]
       public string ResponseParameter { get; set; }

       /// <summary>
       ///异常信息
       /// </summary>
       [Display(Name ="异常信息")]
       [Column(TypeName="nvarchar(max)")]
       public string ExceptionInfo { get; set; }

       /// <summary>
       ///用戶IP
       /// </summary>
       [Display(Name ="用戶IP")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string UserIP { get; set; }

       /// <summary>
       ///服务器IP
       /// </summary>
       [Display(Name ="服务器IP")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string ServiceIP { get; set; }

       /// <summary>
       ///浏览器類型
       /// </summary>
       [Display(Name ="浏览器類型")]
       [MaxLength(400)]
       [Column(TypeName="nvarchar(400)")]
       public string BrowserType { get; set; }

       /// <summary>
       ///用戶ID
       /// </summary>
       [Display(Name ="用戶ID")]
       [Column(TypeName="int")]
       public int? User_Id { get; set; }

       /// <summary>
       ///角色ID
       /// </summary>
       [Display(Name ="角色ID")]
       [Column(TypeName="int")]
       public int? Role_Id { get; set; }

       /// <summary>
       ///結束时间
       /// </summary>
       [Display(Name ="結束时间")]
       [Column(TypeName="datetime")]
       public DateTime? EndDate { get; set; }

       
    }
}