using VOL.Entity.MappingConfiguration;
using VOL.Entity.DomainModels;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace VOL.Entity.MappingConfiguration
{
    public class SysDbTestMapConfig : EntityMappingConfiguration<SysDbTest>
    {
        public override void Map(EntityTypeBuilder<SysDbTest>
        builderTable)
        {
          //b.Property(x => x.StorageName).HasMaxLength(45);
        }
     }
}

