using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.WorkFlow
{
    public enum AuditStatus
    {
        待审核 = 0,
        审核通過 = 1,
        审核中 = 2,
        审核未通過 = 3,
        驳回 = 4
    }

    public enum AuditType
    {
        用戶审批 = 1,
        角色审批 = 2,
        部门审批 = 3
    }
}
