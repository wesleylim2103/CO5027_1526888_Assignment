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

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("wesleylim2103@gmail.com", "wes210395");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("wesleylim2103@gmail.com", txtemail.Text);
            msg.Subject = "Name: " + txtname.Text + "Subject: " + txtsubject.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                LitMessage.Text = "<p>Success, Mail was sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception exp)
            {
                LitMessage.Text = "<p>Send Failed" + exp.Message + ":" + exp.InnerException + "</P>";
            }
        }
    }
}