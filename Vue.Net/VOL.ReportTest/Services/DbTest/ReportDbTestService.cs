/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下ReportDBTestService與IReportDBTestService中编写
 */
using VOL.ReportTest.IRepositories;
using VOL.ReportTest.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.ReportTest.Services
{
    public partial class ReportDBTestService : ServiceBase<ReportDBTest, IReportDBTestRepository>
    , IReportDBTestService, IDependency
    {
    public ReportDBTestService(IReportDBTestRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IReportDBTestService Instance
    {
      get { return AutofacContainerModule.GetService<IReportDBTestService>(); } }
    }
 }
