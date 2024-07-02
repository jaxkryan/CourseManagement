using CourseManagement.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CourseManagement.Pages.Service
{
    public class ApplicationDbContext : IdentityDbContext<WebUser>
    {
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            var guest = new IdentityRole("guest");
            guest.NormalizedName = "guest";

            var student = new IdentityRole("student");
            student.NormalizedName = "student";

            var teacher = new IdentityRole("teacher");
            teacher.NormalizedName = "teacher";

            var parent = new IdentityRole("parent");
            parent.NormalizedName = "parent";

            var admin = new IdentityRole("admin");
            admin.NormalizedName = "admin";

            builder.Entity<IdentityRole>().HasData(guest, student, teacher, parent, admin);
        }
    }
}
