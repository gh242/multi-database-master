using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.Services
{
   public class ActionObserver
    {
        //public ActionObserver(IHttpContextAccessor httpContextAccessor)
        //{
        //    this.RequestDate = DateTime.Now;
        //    this.HttpContext = httpContextAccessor.HttpContext;
        //}
        /// <summary>
        /// 记錄action執行的开始时间
        /// </summary>
        public DateTime RequestDate { get; set; }

        /// <summary>
        /// 當前請求是否已經写過日志,防止手动與系統自动重复写日志
        /// </summary>
        public bool IsWrite { get; set; }

        public HttpContext HttpContext { get; }
    }
}
