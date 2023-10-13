/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法請在當前目錄下Partial文件夹SysDbTestController编写
 */
using Microsoft.AspNetCore.Mvc;
using VOL.Core.Controllers.Basic;
using VOL.Entity.AttributeManager;
using VOL.System.IServices;
namespace VOL.System.Controllers
{
    [Route("api/SysDbTest")]
    [PermissionTable(Name = "SysDbTest")]
    public partial class SysDbTestController : ApiBaseController<ISysDbTestService>
    {
        public SysDbTestController(ISysDbTestService service)
        : base(service)
        {
        }
    }
}

