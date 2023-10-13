﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace VOL.Core.CacheManager
{
    public interface ICacheService : IDisposable
    {
        /// <summary>
        /// 验证緩存项是否存在
        /// </summary>
        /// <param name="key">緩存Key</param>
        /// <returns></returns>
        bool Exists(string key);



        /// <summary>
        /// List写入head
        /// </summary>
        /// <param name="key"></param>
        /// <param name="val"></param>
        void LPush(string key, string val);

        void RPush(string key, string val);
        /// <summary>
        /// List出队 lpop
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        object ListDequeue(string key);

        /// <summary>
        /// List出队 lpop
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        T ListDequeue<T>(string key) where T : class;

        /// <summary>
        /// 移除list中的数据，keepIndex為保留的位置到最后一个元素如list 元素為1.2.3.....100
        /// 需要移除前3个数，keepindex應该為4
        /// </summary>
        /// <param name="key"></param>
        /// <param name="keepIndex"></param>
        void ListRemove(string key, int keepIndex);

        /// <summary>
        /// 添加緩存
        /// </summary>
        /// <param name="key">緩存Key</param>
        /// <param name="value">緩存Value</param>
        /// <param name="expiresIn">緩存时长</param>
        /// <param name="isSliding">是否滑动過期（如果在過期时间内有操作，则以當前时间点延长過期时间） //new TimeSpan(0, 60, 0);</param>
        /// <returns></returns>
        bool AddObject(string key, object value, int expireSeconds = -1, bool isSliding = false);

        bool Add(string key, string value, int expireSeconds = -1, bool isSliding = false);

        /// <summary>
        /// 删除緩存
        /// </summary>
        /// <param name="key">緩存Key</param>
        /// <returns></returns>
        bool Remove(string key);


        /// <summary>
        /// 批量删除緩存
        /// </summary>
        /// <param name="key">緩存Key集合</param>
        /// <returns></returns>
        void RemoveAll(IEnumerable<string> keys);




        /// <summary>
        /// 獲取緩存
        /// </summary>
        /// <param name="key">緩存Key</param>
        /// <returns></returns>
        T Get<T>(string key) where T : class;



        /// <summary>
        /// 獲取緩存
        /// </summary>
        /// <param name="key">緩存Key</param>
        /// <returns></returns>
        string Get(string key);
    }
}
