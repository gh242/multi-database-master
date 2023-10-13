/*
 *接口编写處...
*如果接口需要做Action的权限验证，請在Action上使用屬性
*如: [ApiActionPermission("ReportDBTest",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using VOL.Entity.DomainModels;
using VOL.ReportTest.IServices;

namespace VOL.ReportTest.Controllers
{
    public partial class ReportDBTestController
    {
        private readonly IReportDBTestService _service;//訪問業務代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public ReportDBTestController(
            IReportDBTestService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }
    }
}
