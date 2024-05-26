using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eszak_kozephegyseg_kilatoi_GUI
{
    class Context : DbContext
    {
        public DbSet<Location> Locations { get; set; }
        public DbSet<ViewPoint> ViewPoints { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySql("Server=localhost;Database=ncmviewpoints;Uid=root;Pwd=;", ServerVersion.AutoDetect("Server=localhost;Database=ncmviewpoints;Uid=root;Pwd=;"));
        }

    }
}
