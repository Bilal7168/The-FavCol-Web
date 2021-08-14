using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace UserImages
{
    public partial class Chat : System.Web.UI.Page, IPostBackEventHandler
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            wlcmdialog.Text = "" + GlobalVar.user + "";
            wlcmdialog.Attributes.Add("style", "float:right; margin-right:90px; margin-top:-40px; font-weight:bold; font-size:18px; color:midnightblue");
            GlobalVar.allowUse = true;
            DAL x = new DAL();
            x.GridDataView(GridView1);
            LinkButton x2= (LinkButton)(GridView1.Rows[0].Cells[2].Controls[0]);
            ClkUserName.Text = x2.Text;

            //var ctrlName = Request.Params[Page.postEventSourceID];
            //var args = Request.Params[Page.postEventArgumentID];
            //var args2 = Request.Params[Page.postEventText];

            //if (ctrlName == searchfield.UniqueID && args == "OnKeyPress")
            //{
            //    searchfield_OnKeyPress(ctrlName, args, SaveChar);
            //}

            //LOADING THE CHATS

            int increaser = 15; //increase by 70;
            string tester = Convert.ToString(increaser);

            for(int i = 0; i < 10; i++)
            {
                Label chatTest = new Label();
                chatTest.Text = "Okay xD";
                chatTest.CssClass = "chatSender";
                Label SendTime = new Label();
                SendTime.Text = "21:11";
                SendTime.CssClass = "TimeSend";
                Label chatTest2 = new Label();
                chatTest2.Text = "We always were on the right path, but things led to mismanagement and they led to chaos, thus to stay on the right" +
                    "path there always had to be sacrifices or else we would have lost😁😂😂";
                chatTest2.CssClass = "chatReceiver";
                Label RecTime = new Label();
                RecTime.Text = "20:12";
                RecTime.CssClass = "TimeReceive";
                messageCorner.Controls.Add(chatTest);
                messageCorner.Controls.Add(SendTime);
                messageCorner.Controls.Add(chatTest2);
                messageCorner.Controls.Add(RecTime);
            }

            //..



        }

        public void RaisePostBackEvent(string eventArgument) 
        {
            DAL x = new DAL();
            x.GridDataView(GridView1);
            searchfield.Text = eventArgument;
            searchfield.Focus();
            ClientScript.RegisterStartupScript(this.GetType(), "focus", "SetFocus('" + searchfield.ClientID + "');", true);
        }

        protected void message_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chat.aspx");
        }

        protected void Images_Click(object sender, EventArgs e)
        {
            Response.Redirect("Images.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void RefreshData()
        {
            DAL x = new DAL();
            x.GridDataView(GridView1);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LinkButton x = (LinkButton)(GridView1.SelectedRow.Cells[2].Controls[0]);
            ClkUserName.Text = x.Text;
        }

        protected void searchfield_TextChanged(object sender, EventArgs e)
        {
            //do something
        }

        private void searchfield_GotFocus(Object sender, EventArgs e)
        {
         ClkUserName.Text = "mine";
        }

        private void searchfield_OnKeyPress(string ctrlName, string args, string prevChar)
        {
            //your code goes here
        }

        protected void searchfield_Load(object sender, EventArgs e)
        {

        }
    }
}