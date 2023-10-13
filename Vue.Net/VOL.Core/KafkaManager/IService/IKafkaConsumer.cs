using Confluent.Kafka;
using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.KafkaManager.IService
{
    public interface IKafkaConsumer<TKey, TValue> : IDisposable
    {
        /// <summary>
        /// 订阅回調模式-消费(持续订阅)
        /// </summary>
        /// <param name="Func">回調函数,若配置為非自动提交(默認為否),则通過回調函数的返回值判断是否提交</param>
        /// <param name="Topic">主题</param>
        void Consume(Func<ConsumeResult<TKey, TValue>, bool> Func, string Topic);

        /// <summary>
        /// 批量订阅回調模式-消费(持续订阅)
        /// </summary>
        /// <param name="Func">回調函数,若配置為非自动提交(默認為否),则通過回調函数的返回值判断是否提交</param>
        /// <param name="Topics">主题集合</param>
        void ConsumeBatch(Func<ConsumeResult<TKey, TValue>, bool> Func, List<string> Topics);

        /// <summary>
        /// 批量消费模式-单次消费(消费出當前Kafka緩存的所有数据,并持续监听 300ms,如无新数据生产,则返回(最多一次消费 100条)
        /// </summary>
        /// <param name="Topic">主题</param>
        /// <param name="TimeOut">持续监听时间,单位ms 默認值:300ms</param>
        /// <param name="MaxRow">最多单次消费行数 默認值:100行</param>
        /// <returns>待消费数据</returns>
        List<ConsumeResult<TKey, TValue>> ConsumeOnce(string Topic, int TimeOut = 300, int MaxRow = 100);

        /// <summary>
        /// 单笔消费模式-单行消费
        /// </summary>
        /// <param name="Topic">主题</param>
        /// <param name="TimeOut">持续监听时间,单位ms 默認值:300ms</param>
        /// <returns>待消费数据</returns>
        ConsumeResult<TKey, TValue> ConsumeOneRow(string Topic, int TimeOut = 300);
    }
}
