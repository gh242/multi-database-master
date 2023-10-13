/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下EDC_DATA_ICPMASS_2Service與IEDC_DATA_ICPMASS_2Service中编写
 */
using EDC.IRepositories;
using EDC.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace EDC.Services
{
    public partial class EDC_DATA_ICPMASS_2Service : ServiceBase<EDC_DATA_ICPMASS_2, IEDC_DATA_ICPMASS_2Repository>
    , IEDC_DATA_ICPMASS_2Service, IDependency
    {
    public EDC_DATA_ICPMASS_2Service(IEDC_DATA_ICPMASS_2Repository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IEDC_DATA_ICPMASS_2Service Instance
    {
      get { return AutofacContainerModule.GetService<IEDC_DATA_ICPMASS_2Service>(); } }
    }
 }
