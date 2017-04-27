using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Razer_Company
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("wes21038@gmail.com", "wes210395");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("wes21038@gmail.com", TxtEmail.Text);
            msg.Subject = "Name: " + TxtMessage.Text + TxtName.Text + "subject: " + TxtSubject.Text;
            msg.Body = TxtMessage.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                LitError.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception exp)
            {
                LitError.Text = "<p>Send failed:" + exp.Message + ":" + exp.InnerException + "</p>";
            }
        }
    }
}