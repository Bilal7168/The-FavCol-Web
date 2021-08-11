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

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (username.Text != "" && password.Text != "")
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9LIFDV6;Initial Catalog=FavColDb;Integrated Security=True");
                conn.Open();
                string command = "select * from Login where Username = '" + username.Text + "' ";
                SqlCommand soc = new SqlCommand(command, conn);
                SqlDataReader extracter = soc.ExecuteReader();
                if(!extracter.HasRows)
                {
                    unamewarn.Text = "* User doesnt Exist";
                    unamewarn.Visible = true;
                }
                else
                {
                    command = "select Password from Login where Username='" + username.Text + "'";
                    soc = new SqlCommand(command, conn);
                    extracter.Read();
                    if(extracter.GetString(1) == password.Text)
                    {
                        Response.Redirect(url: "Dashboard.aspx");
                    }
                    else
                    {
                        unamewarn.Text = "*Incorrect Password";
                        unamewarn.Visible = true;
                    }
                }
                
            }
        }
    }
}