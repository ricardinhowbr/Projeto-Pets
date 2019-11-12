using System;
using System.Collections.Generic;
using JetBrains.Annotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;

using petApi.DTO;

namespace petApi.DataEF
{
    public class AnimalDBContext : DbContext
    {
        public AnimalDBContext(DbContextOptions<AnimalDBContext> options) : base(options)
        {
            
        }        

        public DbSet<Animal> Animal {get; set;}
    }
}