/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法請在當前目錄下Partial文件夹ServiceDbTestController编写
 */
using Microsoft.AspNetCore.Mvc;
using VOL.Core.Controllers.Basic;
using VOL.Entity.AttributeManager;
using VOL.ServiceTest.IServices;
namespace VOL.ServiceTest.Controllers
{
    [Route("api/ServiceDbTest")]
    [PermissionTable(Name = "ServiceDbTest")]
    public partial class ServiceDbTestController : ApiBaseController<IServiceDbTestService>
    {
        public ServiceDbTestController(IServiceDbTestService service)
        : base(service)
        {
        }
    }
}

