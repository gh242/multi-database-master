/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下ReportDbTest2Service與IReportDbTest2Service中编写
 */
using VOL.ReportTest.IRepositories;
using VOL.ReportTest.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.ReportTest.Services
{
    public partial class ReportDbTest2Service : ServiceBase<ReportDbTest2, IReportDbTest2Repository>
    , IReportDbTest2Service, IDependency
    {
    public ReportDbTest2Service(IReportDbTest2Repository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IReportDbTest2Service Instance
    {
      get { return AutofacContainerModule.GetService<IReportDbTest2Service>(); } }
    }
 }
