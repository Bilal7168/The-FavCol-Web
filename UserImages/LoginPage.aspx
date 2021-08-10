<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="UserImages.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
    <title>FavCol - Login</title>
</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
    <form id="loginpage" method="post" runat="server">
        <div class="imgcontainer">

            <h2><span class="h2_p1">Fav</span><span class="h2_p2">Col</span></h2>
            <h3>Sign In</h3>   
            <br />
            <asp:TextBox ID="username" runat="server" placeholder="UserName"></asp:TextBox>
            <asp:TextBox ID="password" placeholder="Password" TextMode="Password"  runat="server" style="margin-top:10px;"></asp:TextBox>
            <br />
            <a href="ForgotPass.aspx" class="href">Forgot Password?</a>
            <asp:Button ID="signin" runat="server" Text="Login" CssClass="button" OnClick="signin_Click" />
            <a href="SignUpPage.aspx" class="href2">Create Account</a>
        </div>
        <script>
            window.addEventListener('DOMContentLoaded', () => {
                
            })

            if (document.getElementById("username").textContent == "") {
                document.getElementById("username").style.borderColor = "Green";
            }
            else {
                document.getElementById("username").style.borderColor = "Black";
            }
            if (document.getElementById("password").textContent == "") {
                document.getElementById("password").style.borderColor = "Red";
            }
            else {
                document.getElementById("password").style.borderColor = "Black";
            }        
        </script>
    </form>
</body>
</html>
