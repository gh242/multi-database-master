/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供數據庫操作，如果要增加數據庫操作請在當前目錄下Partial文件夹ReportDbTest2Repository编写代码
 */
using VOL.ReportTest.IRepositories;
using VOL.Core.BaseProvider;
using VOL.Core.EFDbContext;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.ReportTest.Repositories
{
    public partial class ReportDbTest2Repository : RepositoryBase<ReportDbTest2> , IReportDbTest2Repository
    {
    public ReportDbTest2Repository(ReportDbContext dbContext)
    : base(dbContext)
    {

    }
    public static IReportDbTest2Repository Instance
    {
      get {  return AutofacContainerModule.GetService<IReportDbTest2Repository>(); } }
    }
}
