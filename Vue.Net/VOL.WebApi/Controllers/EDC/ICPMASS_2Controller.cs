/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法請在當前目錄下Partial文件夹ICPMASS_2Controller编写
 */
using Microsoft.AspNetCore.Mvc;
using VOL.Core.Controllers.Basic;
using VOL.Entity.AttributeManager;
using EDC.IServices;
namespace EDC.Controllers
{
    [Route("api/ICPMASS_2")]
    [PermissionTable(Name = "ICPMASS_2")]
    public partial class ICPMASS_2Controller : ApiBaseController<IICPMASS_2Service>
    {
        public ICPMASS_2Controller(IICPMASS_2Service service)
        : base(service)
        {
        }
    }
}

