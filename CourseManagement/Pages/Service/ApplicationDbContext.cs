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

        public DbSet<Enrollment> Enrollments { get; set; }
        public DbSet<Course> Courses { get; set; }
        public DbSet<Lesson> Lessons { get; set; }
        public DbSet<Assignment> Assignments { get; set; }
        public DbSet<Submission> Submissions { get; set; }
        public DbSet<Teacher> Teachers { get; set; }
        public DbSet<Admin> Admins { get; set; }
        public DbSet<Parent> Parents { get; set; }
        public DbSet<Question> Questions { get; set; }
        public DbSet<StudentResponse> StudentResponses { get; set; }

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

            builder.Entity<Enrollment>()
               .HasOne(e => e.User)
               .WithMany(u => u.Enrollments)
               .HasForeignKey(e => e.UserId);

            builder.Entity<Enrollment>()
                .HasOne(e => e.Course)
                .WithMany(c => c.Enrollments)
                .HasForeignKey(e => e.CourseId);

            builder.Entity<Lesson>()
                .HasOne(l => l.Course)
                .WithMany(c => c.Lessons)
                .HasForeignKey(l => l.CourseId);

            builder.Entity<Assignment>()
                .HasOne(a => a.Course)
                .WithMany(c => c.Assignments)
                .HasForeignKey(a => a.CourseId);

            builder.Entity<Submission>()
                .HasOne(s => s.Assignment)
                .WithMany(a => a.Submissions)
                .HasForeignKey(s => s.AssignmentId);

            builder.Entity<Submission>()
                .HasOne(s => s.User)
                .WithMany(u => u.Submissions)
                .HasForeignKey(s => s.UserId);

            builder.Entity<Submission>()
                .Property(s => s.Grade)
                .HasColumnType("float");

            builder.Entity<Teacher>()
                .HasOne(t => t.User)
                .WithOne(u => u.Teacher)
                .HasForeignKey<Teacher>(t => t.TeacherId);

            builder.Entity<Admin>()
                .HasOne(a => a.User)
                .WithOne(u => u.Admin)
                .HasForeignKey<Admin>(a => a.AdminId);

            builder.Entity<Parent>()
                .HasOne(p => p.User)
                .WithOne(u => u.Parent)
                .HasForeignKey<Parent>(p => p.ParentId);

            builder.Entity<Parent>()
                .HasOne(p => p.Student)
                .WithMany()
                .HasForeignKey(p => p.StudentId);

            builder.Entity<AssignmentQuestion>()
                .HasKey(aq => new { aq.AssignmentId, aq.QuestionId });

            builder.Entity<AssignmentQuestion>()
                .HasOne(aq => aq.Assignment)
                .WithMany(a => a.AssignmentQuestions)
                .HasForeignKey(aq => aq.AssignmentId);

            builder.Entity<AssignmentQuestion>()
                .HasOne(aq => aq.Question)
                .WithMany(q => q.AssignmentQuestions)
                .HasForeignKey(aq => aq.QuestionId);

            builder.Entity<StudentResponse>()
                .HasOne(sr => sr.Submission)
                .WithMany(s => s.StudentResponses)
                .HasForeignKey(sr => sr.SubmissionId);

            builder.Entity<StudentResponse>()
                .HasOne(sr => sr.Question)
                .WithMany()
                .HasForeignKey(sr => sr.QuestionId);
        }

        public DbSet<CourseManagement.Models.AssignmentQuestion>? AssignmentQuestion { get; set; }
    }
}
