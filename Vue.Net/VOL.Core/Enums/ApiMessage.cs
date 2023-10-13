using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.Enums
{
    public struct ApiMessage
    {

        /// <summary>
        /// 参数有误
        /// </summary>
        public const string ParameterError = "請求参数不正确!";
        /// <summary>
        /// 没有配置好输入参数
        /// </summary>
        public const string NotInputEntity = "没有配置好输入参数!";
        /// <summary>
        /// token丢失
        /// </summary>
        public const string TokenLose = "token丢失!";

        /// <summary>
        /// 版本号不能為空
        /// </summary>

        public const string VersionEmpty = "版本号不能為空!";
        /// <summary>
        /// content不能為空
        /// </summary>

        public const string ContentEmpty = "biz_content不能為空!";
        /// <summary>
        /// content不能為空
        /// </summary>
        public const string TokenError = "token不正确";

        public const string AccountLocked = "帐号已被锁定!";

        public const string PhoneNoInvalid = "输入的不是手机号";


        public const string PINTypeNotRange= "獲取验证的類型不正确";
        public const string OperToBusy = "操作太频繁，請稍后再试";

        public const string SendSTKError = "短信发送异常,請稍后再试";
        public const string SendSTKSuccess = "短信发送成功";
        public const string STKNotSend = "請先獲取验证码";
        public const string AccountExists = "手机号已經被注册";

        public const string AccountNotExists = "手机号没有注册";

        public const string PINExpire = "验证码已過期,請重新獲取";

        public const string PINError = "验证码不正确";

        public const string ParameterEmpty = "参数不能為空";
    }
}
