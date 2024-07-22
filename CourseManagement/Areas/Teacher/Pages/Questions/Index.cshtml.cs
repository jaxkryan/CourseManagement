using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authorization;

namespace CourseManagement.Areas.Teacher.Pages.Questions
{
    [Authorize(Roles = "teacher")]
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public IndexModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public PaginatedList<Question> PaginatedQuestions { get; set; }

        // Pagination properties
        [BindProperty(SupportsGet = true)]
        public int PageIndex { get; set; } = 1;
        public int PageSize { get; set; } = 10; // Number of items per page

        // Search properties
        [BindProperty(SupportsGet = true)]
        public string SearchString { get; set; }

        public async Task OnGetAsync(int pageIndex = 1, string searchString = null)
        {
            var questionsQuery = _context.Questions.AsQueryable();

            if (!string.IsNullOrEmpty(searchString))
            {
                questionsQuery = questionsQuery.Where(q => q.QContent.Contains(searchString)
                                                        || q.Opt1.Contains(searchString)
                                                        || q.Opt2.Contains(searchString)
                                                        || q.Opt3.Contains(searchString)
                                                        || q.Opt4.Contains(searchString)
                                                        || q.Correctans.Contains(searchString));
            }

            PaginatedQuestions = await PaginatedList<Question>.CreateAsync(questionsQuery, pageIndex, PageSize);
        }
    }
}
