﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}