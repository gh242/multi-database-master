using VOL.Entity.MappingConfiguration;
using VOL.Entity.DomainModels;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace VOL.Entity.MappingConfiguration
{
    public class EDC_DATA_ICPMASSMapConfig : EntityMappingConfiguration<EDC_DATA_ICPMASS>
    {
        public override void Map(EntityTypeBuilder<EDC_DATA_ICPMASS>
        builderTable)
        {
          //b.Property(x => x.StorageName).HasMaxLength(45);
        }
     }
}

