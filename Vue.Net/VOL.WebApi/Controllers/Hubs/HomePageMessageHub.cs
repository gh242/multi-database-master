using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VOL.Core.CacheManager;
using VOL.Core.Extensions;
using VOL.Core.ManageUser;
using VOL.System.IServices;

namespace VOL.WebApi.Controllers.Hubs
{
    /// <summary>
    /// https://docs.microsoft.com/zh-cn/aspnet/core/signalr/introduction?view=aspnetcore-3.1
    /// https://docs.microsoft.com/zh-cn/aspnet/core/signalr/javascript-client?view=aspnetcore-6.0&tabs=visual-studio
    /// </summary>
    public class HomePageMessageHub : Hub
    {
        private readonly ICacheService _cacheService;


        private static ConcurrentDictionary<string, string> _connectionIds = new ConcurrentDictionary<string, string>();

        /// <summary>
        /// 构造 注入
        /// </summary>
        public HomePageMessageHub(ICacheService cacheService)
        {
            _cacheService = cacheService;
        }

        /// <summary>
        /// 建立連接时异步触发
        /// </summary>
        /// <returns></returns>
        public override async Task OnConnectedAsync()
        {
            //Console.WriteLine($"建立連接{Context.ConnectionId}");
            _connectionIds[Context.ConnectionId] = Context.GetHttpContext().Request.Query["userName"].ToString();
            //添加到一个組下
            //await Groups.AddToGroupAsync(Context.ConnectionId, "SignalR Users");
            //发送上线消息
            //await Clients.All.SendAsync("ReceiveHomePageMessage", 1, new { title = "系統消息", content = $"{Context.ConnectionId} 上线" });
            await base.OnConnectedAsync();
        }

        /// <summary>
        /// 离开連接时异步触发
        /// </summary>
        /// <param name="ex"></param>
        /// <returns></returns>
        public override async Task OnDisconnectedAsync(Exception ex)
        {
            //Console.WriteLine($"断开連接{Context.ConnectionId}");
            //从組中删除
            // await Groups.RemoveFromGroupAsync(Context.ConnectionId, "SignalR Users");
            //可自行調用下线業務處理方法...
            await UserOffline();
            //发送下线消息
            //   await Clients.All.SendAsync("ReceiveHomePageMessage", 4, new { title = "系統消息", content = $"{Context.ConnectionId} 离线" });
            await base.OnDisconnectedAsync(ex);
        }

        /// <summary>
        /// 根据用戶名獲取所有的客戶端
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        private IEnumerable<string> GetCnnectionIds(string username)
        {
            foreach (var item in _connectionIds)
            {
                if (item.Value == username)
                {
                    yield return item.Key;
                }
            }
        }

        /// <summary>
        /// 发送给指定的人
        /// </summary>
        /// <param name="username">sys_user表的登陆帐号</param>
        /// <param name="message">发送的消息</param>
        /// <returns></returns>
        public async Task<bool> SendHomeMessage(string username, string title, string message)
        {
            if (_connectionIds[Context.ConnectionId]!="admin")
            {
                return false;
            }
            await Clients.Clients(GetCnnectionIds(username).ToArray()).SendAsync("ReceiveHomePageMessage", new
            {
                //   username,
                title,
                message,
                date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:sss")
            });
            return true;
        }

        /// <summary>
        /// 断开連接
        /// </summary>
        /// <returns></returns>
        public async Task<bool> UserOffline()
        {
            var cid = Context.ConnectionId;//也可以从緩存中獲取ConnectionId
            //  await Clients.Client(cid).SendAsync("ReceiveHomePageMessage", 3, new { title = "系統消息", content = "离线成功" });
            //移除緩存
            if (_connectionIds.TryRemove(cid, out string value))
            {
            }
            await Task.CompletedTask;
            return true;
        }


    }
}
