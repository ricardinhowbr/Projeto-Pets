using System;
using System.Collections.Generic;
using JetBrains.Annotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using petApi.DTO;

namespace petApi.DataEF
{
    public class VacinaDBContext : DbContext
    {
        public VacinaDBContext(DbContextOptions<VacinaDBContext> options) : base(options)
        {
        }

        public DbSet<Vacina> Vacina {get; set;}
    }
}