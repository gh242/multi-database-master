using VOL.Entity.MappingConfiguration;
using VOL.Entity.DomainModels;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace VOL.Entity.MappingConfiguration
{
    public class ReportDbTest2MapConfig : EntityMappingConfiguration<ReportDbTest2>
    {
        public override void Map(EntityTypeBuilder<ReportDbTest2>
        builderTable)
        {
          //b.Property(x => x.StorageName).HasMaxLength(45);
        }
     }
}

