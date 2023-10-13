﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using VOL.Core.DBManager;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.SystemModels;

namespace VOL.Core.EFDbContext
{
    public class ServiceDbContext : BaseDbContext, IDependency
    {
        protected override string ConnectionString
        {
            get
            {
                return DBServerProvider.ServiceUserCurrnetConnectingString;
            }
        }
        public ServiceDbContext() : base() { }

        public ServiceDbContext(DbContextOptions<BaseDbContext> options) : base(options) { }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.UseDbType(optionsBuilder, ConnectionString);
            //默認禁用实体跟踪
            optionsBuilder = optionsBuilder.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
            base.OnConfiguring(optionsBuilder);
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder, typeof(ServiceEntity));
        }
    }
}
