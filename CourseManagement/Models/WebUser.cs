using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CourseManagement.Models
{
public class WebUser : IdentityUser
{
    public string FirstName { get; set; } = "";
    public string LastName { get; set; } = "";
    public DateTime Dob { get; set; }
    public string Address { get; set; } = "";
    public DateTime CreatedAt { get; set; }
    public string? Image { get; set; } 
    public virtual ICollection<Enrollment> Enrollments { get; set; }
    public virtual Teacher Teacher { get; set; }
    public virtual Admin Admin { get; set; }
    public virtual Parent Parent { get; set; }
    public virtual ICollection<Submission> Submissions { get; set; }
}

    public class Course
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public string Description { get; set; }

        [ForeignKey("Instructor")]
        public string InstructorId { get; set; }
        public WebUser? Instructor { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public string? Image { get; set; } 
        public virtual ICollection<Lesson>? Lessons { get; set; }
        public virtual ICollection<Assignment>? Assignments { get; set; }
        public virtual ICollection<Enrollment>? Enrollments { get; set; }
    }

    public class Enrollment
    {
        public int EnrollmentId { get; set; }

        [ForeignKey("User")]
        public string UserId { get; set; }
        public WebUser User { get; set; }

        [ForeignKey("Course")]
        public int CourseId { get; set; }
        public Course Course { get; set; }
        public DateTime EnrolledAt { get; set; } = DateTime.UtcNow;
    }

    public class Lesson
    {
        public int LessonId { get; set; }

        [ForeignKey("Course")]
        public int CourseId { get; set; }
        public Course? Course { get; set; }

        public string LessonTitle { get; set; }
        public string Content { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public string? Link { get; set; }
        public string Level { get; set; }
    }
    public class Assignment
    {
        public int AssignmentId { get; set; }

        [ForeignKey("Course")]
        public int CourseId { get; set; }
        public Course? Course { get; set; }

        public string AssignmentTitle { get; set; }
        public string Description { get; set; }
        public DateTime DueDate { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

        public virtual ICollection<Submission>? Submissions { get; set; }
        public virtual ICollection<AssignmentQuestion>? AssignmentQuestions { get; set; } // New navigation property
    }
    public class AssignmentQuestion
    {
        public int AssignmentId { get; set; }
        public Assignment? Assignment { get; set; }

        public int QuestionId { get; set; }
        public Question? Question { get; set; }
    }
    public class Submission
    {
        public int SubmissionId { get; set; }

        [ForeignKey("Assignment")]
        public int AssignmentId { get; set; }
        public Assignment Assignment { get; set; }

        [ForeignKey("User")]
        public string UserId { get; set; }
        public WebUser User { get; set; }

        public string Content { get; set; }
        public DateTime SubmittedAt { get; set; } = DateTime.UtcNow;
        public float? Grade { get; set; }
    }

    public class Teacher
    {
        [Key, ForeignKey("User")]
        public string TeacherId { get; set; }
        public WebUser User { get; set; }

        public string Qualification { get; set; }
        public string Biography { get; set; }
    }

    public class Admin
    {
        [Key, ForeignKey("User")]
        public string AdminId { get; set; }
        public WebUser User { get; set; }

        public string Department { get; set; }
        public DateTime HireDate { get; set; }
    }

    public class Parent
    {
        [Key, ForeignKey("User")]
        public string ParentId { get; set; }
        public WebUser User { get; set; }

        [ForeignKey("Student")]
        public string StudentId { get; set; }
        public WebUser Student { get; set; }
    }

    public class Question
    {
        [Key]
        public int Qid { get; set; }
        public string QContent { get; set; }
        public string Opt1 { get; set; }
        public string Opt2 { get; set; }
        public string Opt3 { get; set; }
        public string Opt4 { get; set; }
        public string Correctans { get; set; }
        public virtual ICollection<AssignmentQuestion>? AssignmentQuestions { get; set; } // New navigation property
    }
}
