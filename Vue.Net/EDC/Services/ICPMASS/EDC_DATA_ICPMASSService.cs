/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下EDC_DATA_ICPMASSService與IEDC_DATA_ICPMASSService中编写
 */
using EDC.IRepositories;
using EDC.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace EDC.Services
{
    public partial class EDC_DATA_ICPMASSService : ServiceBase<EDC_DATA_ICPMASS, IEDC_DATA_ICPMASSRepository>
    , IEDC_DATA_ICPMASSService, IDependency
    {
    public EDC_DATA_ICPMASSService(IEDC_DATA_ICPMASSRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IEDC_DATA_ICPMASSService Instance
    {
      get { return AutofacContainerModule.GetService<IEDC_DATA_ICPMASSService>(); } }
    }
 }
