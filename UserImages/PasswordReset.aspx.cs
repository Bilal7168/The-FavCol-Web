using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserImages
{
    public partial class PasswordReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            if(password1.Text != "" && password2.Text != "" && password1.Text == password2.Text && password1.Text.Length >= 8)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}