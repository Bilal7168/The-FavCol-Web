using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;

namespace UserImages
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            wlcmdialog.Text = "" + GlobalVar.user + "";
            wlcmdialog.Attributes.Add("style", "float:right; margin-right:90px; margin-top:-40px; font-weight:bold; font-size:18px; color:midnightblue");
            if(GlobalVar.allowUse == true)
            {
                DAL x = new DAL();
                mail.Text = x.getEmail();
                favwordy.Text = x.getWord();
                cp2.Text = x.getColor();
                GlobalVar.allowUse = false;
            }

        }

        protected void message_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chat.aspx");
        }

        protected void favwordy_Click(object sender, EventArgs e)
        {
        }

        protected void imagesdash_Click(object sender, EventArgs e)
        {
            Response.Redirect("Images.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void save_Click(object sender, EventArgs e)
        {
            if(favwordy.Text != "" && mail.Text != "")
            {
                DAL x = new DAL();
                x.ProfileInsertMethod(cp2.Text, favwordy.Text, mail.Text);
                mail.Text = x.getEmail();
                favwordy.Text = x.getWord();
                cp2.Text = x.getColor();
            }
        }
    }
}