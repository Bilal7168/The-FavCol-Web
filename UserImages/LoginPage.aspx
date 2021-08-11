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
            <asp:TextBox ID="username" runat="server" CssClass="input" placeholder="UserName"></asp:TextBox>
            <asp:TextBox ID="password" placeholder="Password" TextMode="Password"   runat="server" CssClass="input" style="margin-top:10px;"></asp:TextBox>
            <br />
            <span id="error"></span>
            <a href="ForgotPass.aspx" class="href">Forgot Password?</a>
            <asp:Button ID="signin" runat="server" Text="Login" CssClass="button" OnClick="signin_Click" />
            <a href="SignUpPage.aspx" class="href2">Create Account</a>
        </div>
        <script>
            window.addEventListener('DOMContentLoaded', () => {
                
            })
            const button = document.querySelector(".button");
            let textone = document.getElementsByClassName("input");
            var error = document.getElementById("error");
            window.addEventListener("click", () => {
                for (i = 0; i < 2; i++) {
                    if (textone[i].value.length == 0) {
                        textone[i].style.borderColor = "Red";
                        textone[i].style.borderWidth = "3.7px";
                        error.style.position = "absolute";
                        error.textContent = "* Some Fields are empty";
                        error.style.fontSize = "4px;";
                        error.style.color = "Red";
                    }
                    else {
                        textone[i].style = "input"; textone[1].style.marginTop = "10px";
                        error.textContent = "";
                    }
                }
            });

        </script>
    </form>
</body>
</html>
