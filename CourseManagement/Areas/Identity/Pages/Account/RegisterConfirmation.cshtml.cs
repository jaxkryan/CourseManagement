﻿using Microsoft.AspNetCore.Authorization;
using System.Text;
using System.Threading.Tasks;
using CourseManagement.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.WebUtilities;
using MimeKit;

namespace CourseManagement.Areas.Identity.Pages.Account
{
    [AllowAnonymous]
    public class RegisterConfirmationModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        public RegisterConfirmationModel(UserManager<WebUser> userManager)
        {
            _userManager = userManager;
        }

        public string Email { get; set; }

        public string UrlContinue { set; get; }


        public async Task<IActionResult> OnGetAsync(string email, string returnUrl = null)
        {
            if (email == null)
            {
                return RedirectToPage("~/");
            }


            var user = await _userManager.FindByEmailAsync(email);
            if (user == null)
            {
                return NotFound($"Không có user với email: '{email}'.");
            }

            if (user.EmailConfirmed)
            {
                String urlredirect = (returnUrl != null) ? returnUrl : Url.Page("~/");
                // Tài khoản đã xác thực email
                return RedirectToPage(urlredirect);
            }

            Email = email;

            if (returnUrl != null)
            {
                UrlContinue = Url.Page("RegisterConfirmation", new { email = Email, returnUrl = returnUrl });
            }
            else
                UrlContinue = Url.Page("RegisterConfirmation", new { email = Email });


            return Page();
        }
    }
}
