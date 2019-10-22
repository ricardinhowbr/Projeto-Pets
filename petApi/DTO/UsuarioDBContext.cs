using System;
using System.Collections.Generic;
using JetBrains.Annotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;

namespace petApi.DTO
{
    public class UsuarioDBContext : DbContext
    {
        public UsuarioDBContext(DbContextOptions<UsuarioDBContext> options) : base(options)
        {
        }

        public DbSet<Usuario> Usuarios {get; set;}
    }
}