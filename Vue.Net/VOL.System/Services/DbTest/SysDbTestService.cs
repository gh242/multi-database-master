/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下SysDbTestService與ISysDbTestService中编写
 */
using VOL.System.IRepositories;
using VOL.System.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.System.Services
{
    public partial class SysDbTestService : ServiceBase<SysDbTest, ISysDbTestRepository>
    , ISysDbTestService, IDependency
    {
    public SysDbTestService(ISysDbTestRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static ISysDbTestService Instance
    {
      get { return AutofacContainerModule.GetService<ISysDbTestService>(); } }
    }
 }
