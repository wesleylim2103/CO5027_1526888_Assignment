using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Razer_Company
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //create a dbcontent that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create user store and user manager 
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            //create user
            var user = new IdentityUser() { UserName = TextUsername.Text, Email = TextEmail.Text };
            IdentityResult result = manager.Create(user, TextPassword.Text);

            IdentityRole endUserRole = new IdentityRole("endUser");
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "endUser");

            if (result.Succeeded)
            {
                Server.Transfer("login.aspx", true);
            }

            else
            {
                LitError.Text = "An Error has occurred: " + result.Errors.FirstOrDefault();
            }
        }
    }
}