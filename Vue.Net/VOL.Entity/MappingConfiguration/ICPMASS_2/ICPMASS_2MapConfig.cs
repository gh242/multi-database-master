using VOL.Entity.MappingConfiguration;
using VOL.Entity.DomainModels;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace VOL.Entity.MappingConfiguration
{
    public class ICPMASS_2MapConfig : EntityMappingConfiguration<ICPMASS_2>
    {
        public override void Map(EntityTypeBuilder<ICPMASS_2>
        builderTable)
        {
          //b.Property(x => x.StorageName).HasMaxLength(45);
        }
     }
}

