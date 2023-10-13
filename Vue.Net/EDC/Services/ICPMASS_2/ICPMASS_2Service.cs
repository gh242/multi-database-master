/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此處任何更改都可能导致被代码生成器覆盖
 *所有業務编写全部應在Partial文件夹下ICPMASS_2Service與IICPMASS_2Service中编写
 */
using EDC.IRepositories;
using EDC.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace EDC.Services
{
    public partial class ICPMASS_2Service : ServiceBase<ICPMASS_2, IICPMASS_2Repository>
    , IICPMASS_2Service, IDependency
    {
    public ICPMASS_2Service(IICPMASS_2Repository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static IICPMASS_2Service Instance
    {
      get { return AutofacContainerModule.GetService<IICPMASS_2Service>(); } }
    }
 }
