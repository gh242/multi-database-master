/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供數據庫操作，如果要增加數據庫操作請在當前目錄下Partial文件夹ServiceDbTestRepository编写代码
 */
using VOL.ServiceTest.IRepositories;
using VOL.Core.BaseProvider;
using VOL.Core.EFDbContext;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.ServiceTest.Repositories
{
    public partial class ServiceDbTestRepository : RepositoryBase<ServiceDbTest> , IServiceDbTestRepository
    {
    public ServiceDbTestRepository(ServiceDbContext dbContext)
    : base(dbContext)
    {

    }
    public static IServiceDbTestRepository Instance
    {
      get {  return AutofacContainerModule.GetService<IServiceDbTestRepository>(); } }
    }
}
