/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供數據庫操作，如果要增加數據庫操作請在當前目錄下Partial文件夹Sys_WorkFlowTableAuditLogRepository编写代码
 */
using VOL.System.IRepositories;
using VOL.Core.BaseProvider;
using VOL.Core.EFDbContext;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.System.Repositories
{
    public partial class Sys_WorkFlowTableAuditLogRepository : RepositoryBase<Sys_WorkFlowTableAuditLog> , ISys_WorkFlowTableAuditLogRepository
    {
    public Sys_WorkFlowTableAuditLogRepository(SysDbContext dbContext)
    : base(dbContext)
    {

    }
    public static ISys_WorkFlowTableAuditLogRepository Instance
    {
      get {  return AutofacContainerModule.GetService<ISys_WorkFlowTableAuditLogRepository>(); } }
    }
}
