/*
 *接口编写處...
*如果接口需要做Action的权限验证，請在Action上使用屬性
*如: [ApiActionPermission("ICPMASS_2",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using VOL.Entity.DomainModels;
using EDC.IServices;

namespace EDC.Controllers
{
    public partial class ICPMASS_2Controller
    {
        private readonly IICPMASS_2Service _service;//訪問業務代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public ICPMASS_2Controller(
            IICPMASS_2Service service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }
    }
}
