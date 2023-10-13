using VOL.Entity.MappingConfiguration;
using VOL.Entity.DomainModels;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace VOL.Entity.MappingConfiguration
{
    public class ServiceDbTestMapConfig : EntityMappingConfiguration<ServiceDbTest>
    {
        public override void Map(EntityTypeBuilder<ServiceDbTest>
        builderTable)
        {
          //b.Property(x => x.StorageName).HasMaxLength(45);
        }
     }
}

