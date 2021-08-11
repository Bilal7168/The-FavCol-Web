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
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9LIFDV6;Initial Catalog=FavColDb;Integrated Security=True");
                conn.Open();
                string commandPass = "select count(*) from Login where Username = '" + uname.Text + "'";
                SqlCommand cmd = new SqlCommand(commandPass, conn);
                if (Convert.ToInt32(cmd.ExecuteScalar().ToString()) == 0)
                {
                    string toinsert = "insert into Login(Username, Password) values('" + uname.Text + "', '" + pass.Text + "')";
                    cmd = new SqlCommand(toinsert, conn);
                    cmd.ExecuteNonQuery();
                    toinsert = "insert into BioData(Username, Fname, Lname, Email) values('" + uname.Text + "', '" + fname.Text + "', '" + lname.Text + "', '" + emailaddr.Text + "')";
                    cmd = new SqlCommand(toinsert, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
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