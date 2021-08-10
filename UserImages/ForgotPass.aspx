<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="UserImages.ForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FavCol - Reset Password></title>
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
    <form id="frgtpass" method="post" style="height:400px;" runat="server">
        <div class="imgcontainer">
            <h2><span class="h2_p1">Fav</span><span class="h2_p2">Col</span></h2>
            <h3>Reset Password</h3>   
            <br />
            <h4 style="margin-right:120px; color:#635e5e">Enter your Username for key:</h4>
            <asp:TextBox ID="username" runat="server" placeholder="UserName" OnTextChanged="username_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="Send" runat="server" Text="Send Key to Email" CssClass="button" OnClick="Send_Click" />
        </div>
    </form>
</body>
</html>
