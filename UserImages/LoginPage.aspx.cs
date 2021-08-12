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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL x = new DAL();
            x.helperDestroyKey();
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (username.Text != "" && password.Text != "")
            {
                DAL x = new DAL();
                int num = x.loginMethod(username.Text, password.Text);
                switch (num)
                {
                    case 0:
                        unamewarn.Text = "* User doesnt Exist";
                        unamewarn.Visible = true;
                        break;
                    case 1:
                        unamewarn.Text = "*Incorrect Password";
                        unamewarn.Visible = true;
                        break;
                    case 2:
                        unamewarn.Text = "Login Success..";
                        unamewarn.Attributes.Add("style", "color:green");
                        unamewarn.Visible = true;
                        load.Visible = true;
                        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS", "setTimeout(function() { window.location.replace('Dashboard.aspx') }, 10000);", true);
                        break;
                }
                
            }
        }
    }
}