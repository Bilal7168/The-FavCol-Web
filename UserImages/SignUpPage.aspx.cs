using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace UserImages
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            if(fname.Text != "" && lname.Text != "" && emailaddr.Text != "" && uname.Text != "" && pass.Text != "" && confrmpass.Text != "" && pass.Text == confrmpass.Text && pass.Text.Length >= 8)
            {
                //we now write the sql connection
                DAL x = new DAL();
                if(x.signup(fname.Text, lname.Text, emailaddr.Text, uname.Text, pass.Text)) { 
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    unamewarn.Text = "* Username already exists";
                    unamewarn.Visible = true;
                }
                //--also to test if there is already a user with an existing name
            }
        }
    }
}