<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset.aspx.cs" Inherits="UserImages.PasswordReset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FavCol - Password Reset</title>
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
    <form id="passrst" method="post" style="height:400px;" runat="server">
        <div class="imgcontainer">
            <h2><span class="h2_p1">Fav</span><span class="h2_p2">Col</span></h2>
            <h3>Reset Password</h3>   
            <br />
            <asp:TextBox ID="password1" placeholder="Password" TextMode="Password"  runat="server"></asp:TextBox>
            <asp:TextBox ID="password2" placeholder="Confirm Password" TextMode="Password"  runat="server" style="margin-top:10px;"></asp:TextBox>
            <br />
            <asp:Button ID="reset" runat="server" Text="Reset" CssClass="button" />
            <a href="LoginPage.aspx" class="href2">Back to Login!</a>
        </div>
    </form>
</body>
</html>
