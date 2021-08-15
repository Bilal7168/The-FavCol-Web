using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Google.Apis.Customsearch.v1;
using Google.Apis.Services;
using System.Web.UI.WebControls;
using Google.Apis;

namespace UserImages
{
    public partial class Images : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            wlcmdialog.Text = "" + GlobalVar.user + "";
            wlcmdialog.Attributes.Add("style", "float:right; margin-right:90px; margin-top:-40px; font-weight:bold; font-size:18px; color:midnightblue");
            GlobalVar.allowUse = true;

            //quering Google Data
            //const string API_key = "AIzaSyD2VHHtQBf_shVBaI3e3s77qxFINM9HamQ";
            //const string Eng_key = "cb0b057d788939245";
            //CustomsearchService x = new CustomsearchService(new BaseClientService.Initializer { ApiKey = API_key });
            //var listReq = x.Cse.List();
            //var count = 0;
            //listReq.Cx = Eng_key;
            //listReq.Start = count;
            //listReq.ExactTerms = "Brian O connor";
            //for(int i =0; i < listReq.Execute().Items.Count ; i++)
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + listReq.Execute().Items[i].DisplayLink + "');", true);
            //}



            //...

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