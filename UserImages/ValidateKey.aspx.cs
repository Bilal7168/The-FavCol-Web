using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserImages
{
    public partial class ValidateKey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void toreset_Click(object sender, EventArgs e)
        {
            if (keyreceived.Text != "")
            {
                DAL x = new DAL();
                if (x.checkValid(Convert.ToInt32(keyreceived.Text)))
                {
                    Response.Redirect(url: "PasswordReset.aspx");
                }
                else
                {
                    keyreceived.BorderColor = System.Drawing.Color.Red;
                    unamewarn.Text = "Invalid key";
                    unamewarn.Visible = true;
                }

            }
        }
    }
}