/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下ServiceDbTestService與IServiceDbTestService中编写
 */
using VOL.ServiceTest.IRepositories;
using VOL.ServiceTest.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.ServiceTest.Services
{
    public partial class ServiceDbTestService : ServiceBase<ServiceDbTest, IServiceDbTestRepository>
    , IServiceDbTestService, IDependency
    {
    public ServiceDbTestService(IServiceDbTestRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IServiceDbTestService Instance
    {
      get { return AutofacContainerModule.GetService<IServiceDbTestService>(); } }
    }
 }
