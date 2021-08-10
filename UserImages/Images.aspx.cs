using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserImages
{
    public partial class Images : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void images_Click(object sender, EventArgs e)
        {
            Response.Redirect("Images.aspx");
        }

        protected void message_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chat.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}