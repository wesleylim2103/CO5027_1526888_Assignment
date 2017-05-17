using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Razer_Company
{
    public partial class Uploadimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];

            string filename = ProductID + ".png";
            Image1.ImageUrl = "/ImageUpload/" + filename;
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];

            string filename = ProductID + ".png";
            string saveLocation = Server.MapPath("/ImageUpload/" + filename);

            FileUpload1.SaveAs(saveLocation);

        }
    }
}