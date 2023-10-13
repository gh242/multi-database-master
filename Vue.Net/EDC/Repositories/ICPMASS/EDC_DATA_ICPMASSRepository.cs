/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供數據庫操作，如果要增加數據庫操作請在當前目錄下Partial文件夹EDC_DATA_ICPMASSRepository编写代码
 */
using EDC.IRepositories;
using VOL.Core.BaseProvider;
using VOL.Core.EFDbContext;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace EDC.Repositories
{
    public partial class EDC_DATA_ICPMASSRepository : RepositoryBase<EDC_DATA_ICPMASS> , IEDC_DATA_ICPMASSRepository
    {
    public EDC_DATA_ICPMASSRepository(EDCDbContext dbContext)
    : base(dbContext)
    {

    }
    public static IEDC_DATA_ICPMASSRepository Instance
    {
      get {  return AutofacContainerModule.GetService<IEDC_DATA_ICPMASSRepository>(); } }
    }
}
