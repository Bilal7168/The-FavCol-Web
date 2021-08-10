<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="UserImages.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FavCol - Create Account</title>
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
    <form id="signuppage" method="post" runat="server" style="height:700px;">
        <div class="imgcontainer">
            <h2><span class="h2_p1">Fav</span><span class="h2_p2">Col</span></h2>
            <h3>Create Account</h3>   
            <br />
            <asp:TextBox ID="fname" runat="server" placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="lname" placeholder="Last Name" runat="server" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="emailaddr" placeholder="Email Address" runat="server" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="uname" placeholder="User Name" runat="server" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="confrmpass" placeholder="Confirm Password" TextMode="Password" runat="server" style="margin-top:10px;"></asp:TextBox>
            <br />
            <asp:Button ID="signup" runat="server" Text="SignUp" CssClass="button" />
            <a href="LoginPage.aspx" class="href2">Back to Login</a>
        </div>
    </form>
</body>
</html>
