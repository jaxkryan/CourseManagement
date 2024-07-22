﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;

namespace CourseManagement.Areas.Teacher.Pages.Lessons
{
    public class EditModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;

        public EditModel(CourseManagement.Pages.Service.ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Lesson Lesson { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Lesson = await _context.Lessons
                .Include(l => l.Course).FirstOrDefaultAsync(m => m.LessonId == id);

            if (Lesson == null)
            {
                return NotFound();
            }
           ViewData["CourseId"] = new SelectList(_context.Courses, "CourseId", "CourseName");
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var lessonToUpdate = await _context.Lessons.FindAsync(Lesson.LessonId);

            if (lessonToUpdate == null)
            {
                return NotFound();
            }

            // Update the properties of the entity
            lessonToUpdate.CourseId = Lesson.CourseId;
            lessonToUpdate.LessonTitle = Lesson.LessonTitle;
            lessonToUpdate.Content = Lesson.Content;
            lessonToUpdate.CreatedAt = Lesson.CreatedAt;
            lessonToUpdate.Link = Lesson.Link;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LessonExists(Lesson.LessonId))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }


        private bool LessonExists(int id)
        {
            return _context.Lessons.Any(e => e.LessonId == id);
        }
    }
}