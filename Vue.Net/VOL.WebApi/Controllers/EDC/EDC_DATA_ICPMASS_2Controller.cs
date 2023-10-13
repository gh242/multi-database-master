/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果要增加方法請在當前目錄下Partial文件夹EDC_DATA_ICPMASS_2Controller编写
 */
using Microsoft.AspNetCore.Mvc;
using VOL.Core.Controllers.Basic;
using VOL.Entity.AttributeManager;
using EDC.IServices;
namespace EDC.Controllers
{
    [Route("api/EDC_DATA_ICPMASS_2")]
    [PermissionTable(Name = "EDC_DATA_ICPMASS_2")]
    public partial class EDC_DATA_ICPMASS_2Controller : ApiBaseController<IEDC_DATA_ICPMASS_2Service>
    {
        public EDC_DATA_ICPMASS_2Controller(IEDC_DATA_ICPMASS_2Service service)
        : base(service)
        {
        }
    }
}

