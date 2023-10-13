/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *Repository提供數據庫操作，如果要增加數據庫操作請在當前目錄下Partial文件夹ICPMASS_2Repository编写代码
 */
using EDC.IRepositories;
using VOL.Core.BaseProvider;
using VOL.Core.EFDbContext;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace EDC.Repositories
{
    public partial class ICPMASS_2Repository : RepositoryBase<ICPMASS_2> , IICPMASS_2Repository
    {
    public ICPMASS_2Repository(EDCDbContext dbContext)
    : base(dbContext)
    {

    }
    public static IICPMASS_2Repository Instance
    {
      get {  return AutofacContainerModule.GetService<IICPMASS_2Repository>(); } }
    }
}
