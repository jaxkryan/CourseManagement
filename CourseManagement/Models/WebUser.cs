using Microsoft.AspNetCore.Identity;

namespace CourseManagement.Models
{
    public class WebUser : IdentityUser
    {
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public DateTime Dob { get; set; }
        public string Address { get; set; } = "";
        public DateTime CreatedAt { get; set; }
    }
}
