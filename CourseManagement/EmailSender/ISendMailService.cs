using System.Threading.Tasks;
namespace CourseManagement.EmailSender
{
    public interface ISendMailService
    {
        Task SendMail(MailContent mailContent);

        Task SendEmailAsync(string email, string subject, string htmlMessage);
    }
}
