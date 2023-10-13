﻿using Confluent.Kafka;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;

namespace VOL.Core.KafkaManager
{
    /// <summary>
    /// 辅助類
    /// </summary>
    public class KafkaHelper
    {
        /// <summary>
        /// 獲取當前應用程式名称(仅控制台應用程序和Windows應用程序可用)
        /// </summary>
        /// <returns></returns>
        public static string GetApplicationName()
        {
            try
            {
                return Assembly.GetEntryAssembly().GetName().Name;
            }
            catch
            {
                return "Kafka_Test";
            }
        }

        /// <summary>
        /// 獲取服务器名称
        /// </summary>
        /// <returns></returns>
        public static string GetServerName()
        {
            return Dns.GetHostName();
        }

        /// <summary>
        /// 獲取服务器IP
        /// </summary>
        /// <returns></returns>
        public static string GetServerIp()
        {
            IPHostEntry ips = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in ips.AddressList)
            {
                if (Regex.IsMatch(ip.ToString(), @"^10\.((25[0-5]|2[0-4]\d|1\d{2}|\d?\d)\.){2}(25[0-5]|2[0-4]\d|1\d{2}|\d?\d)$"))
                {
                    return ip.ToString();
                };
            }
            return "127.0.0.1";
        }

        /// <summary>  
        /// 將c# DateTime时间格式转换為Unix时间戳格式(毫秒级)  
        /// </summary>  
        /// <returns>long</returns>  
        public static long GetTimeStamp()
        {
            DateTime time = DateTime.Now;
            long t = (time.Ticks - 621356256000000000) / 10000;
            return t;
        }
    }

    #region 实现消息序列化和反序列化
    public class KafkaConverter<T> : ISerializer<T>
    {
        /// <summary>
        /// 序列化数据成字节
        /// </summary>
        /// <param name="data"></param>
        /// <param name="context"></param>
        /// <returns></returns>
        public byte[] Serialize(T data, SerializationContext context)
        {
            var json = JsonConvert.SerializeObject(data);
            return Encoding.UTF8.GetBytes(json);
        }
    }

    public class KafkaDConverter<T> : IDeserializer<T>
    {
        /// <summary>
        /// 反序列化字节数据成实体数据
        /// </summary>
        /// <param name="data"></param>
        /// <param name="isNull"></param>
        /// <param name="context"></param>
        /// <returns></returns>
        public T Deserialize(ReadOnlySpan<byte> data, bool isNull, SerializationContext context)
        {
            if (isNull) return default(T);

            var json = Encoding.UTF8.GetString(data.ToArray());
            try
            {
                return JsonConvert.DeserializeObject<T>(json);
            }
            catch
            {
                return default(T);
            }
        }
    }
    #endregion

    #region 日志類
    /// <summary>
    /// 默認日志類 可自行构造使用
    /// </summary>
    public class KafkaLogModel
    {
        /// <summary>
        /// 构造默認日志類(設置默認值 ServerIp,ServerName,TimeStamp,ApplicationVersion)
        /// </summary>
        public KafkaLogModel()
        {
            ServerIp = KafkaHelper.GetServerIp();
            ServerName = KafkaHelper.GetServerName();
            TimeStamp = DateTime.Now;
            ApplicationName = KafkaHelper.GetApplicationName();
            ApplicationVersion = "V1.0.0";
        }

        /// <summary>
        /// 程式名称(默認獲取當前程式名称,Web應用 默認為 ISD_Kafka)
        /// </summary>
        public string ApplicationName { get; set; }

        /// <summary>
        /// 程式版本(默認為V1.0.0)
        /// </summary>
        public string ApplicationVersion { get; set; }

        /// <summary>
        /// 发生时间(默認為當前时间)
        /// </summary>
        public DateTime TimeStamp { get; set; }

        /// <summary>
        /// 开始时间
        /// </summary>
        public DateTime BeginDate { get; set; }

        /// <summary>
        /// 結束时间
        /// </summary>
        public DateTime EndDate { get; set; }

        /// <summary>
        /// 服务器IP(默認抓取當前服务器IP)
        /// </summary>
        public string ServerIp { get; set; }

        /// <summary>
        /// 服务器名称(默認抓取當前服务器名称)
        /// </summary>
        public string ServerName { get; set; }

        /// <summary>
        /// 客戶端IP
        /// </summary>
        public string ClientIp { get; set; }

        /// <summary>
        /// 模块(页面路徑)
        /// </summary>
        public string Module { get; set; }

        /// <summary>
        /// 操作人
        /// </summary>
        public string Operator { get; set; }

        /// <summary>
        /// 操作類型 如:Query,Add,Update,Delete,Export等,可自定义
        /// </summary>
        public string OperationType { get; set; }

        /// <summary>
        /// 操作状态 如:http請求使用200,404,503等,其他操作 1:成功,0失败等 可自定义
        /// </summary>
        public string Status { get; set; }

        /// <summary>
        /// 其他信息
        /// </summary>
        public string Message { get; set; }
    }
    #endregion
}
