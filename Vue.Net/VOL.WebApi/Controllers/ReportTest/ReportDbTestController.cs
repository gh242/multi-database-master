/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法請在當前目錄下Partial文件夹ReportDBTestController编写
 */
using Microsoft.AspNetCore.Mvc;
using VOL.Core.Controllers.Basic;
using VOL.Entity.AttributeManager;
using VOL.ReportTest.IServices;
namespace VOL.ReportTest.Controllers
{
    [Route("api/ReportDBTest")]
    [PermissionTable(Name = "ReportDBTest")]
    public partial class ReportDBTestController : ApiBaseController<IReportDBTestService>
    {
        public ReportDBTestController(IReportDBTestService service)
        : base(service)
        {
        }
    }
}

