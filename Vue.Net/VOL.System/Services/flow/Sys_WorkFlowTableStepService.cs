/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下Sys_WorkFlowTableStepService與ISys_WorkFlowTableStepService中编写
 */
using VOL.System.IRepositories;
using VOL.System.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.System.Services
{
    public partial class Sys_WorkFlowTableStepService : ServiceBase<Sys_WorkFlowTableStep, ISys_WorkFlowTableStepRepository>
    , ISys_WorkFlowTableStepService, IDependency
    {
    public Sys_WorkFlowTableStepService(ISys_WorkFlowTableStepRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static ISys_WorkFlowTableStepService Instance
    {
      get { return AutofacContainerModule.GetService<ISys_WorkFlowTableStepService>(); } }
    }
 }
