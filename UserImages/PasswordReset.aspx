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
            <span id="error" ></span>
            <asp:Button ID="reset" runat="server" Text="Reset" CssClass="button" OnClick="reset_Click" />
            <a href="LoginPage.aspx" class="href2">Back to Login!</a>
        </div>
    </form>
    <script>
        let pass1 = document.getElementById("password1");
        let pass2 = document.getElementById("password2");
        let but = document.getElementById("reset");
        let error = document.getElementById("error");
        window.addEventListener("click", () => {
            if (pass1.value.length == 0) {
                pass1.style.borderWidth = "4px";
                pass1.style.borderColor = "Red";
                error.style.position = "absolute";
                error.textContent = "* Field is empty";
                error.style.color = "Red";
            }
            if (pass1.value.length != 0 && pass1.value.length < 8) {
                pass1.style.borderWidth = "4px";
                pass1.style.borderColor = "Red";
                error.style.position = "absolute";
                error.textContent = "*Password should be longer or equal to 8 characters!";
                error.style.color = "Red";
            }
            if (pass2.value.length == 0 && pass1.value.length >= 8) {
                pass2.style.borderWidth = "4px";
                pass2.style.borderColor = "Red";
                error.style.position = "absolute";
                error.textContent = "* Field is empty";
                error.style.color = "Red";
            }
            if (pass1.value != pass2.value && pass2.value.length == 0 && pass1.value.length>=8) {
                pass1.style.borderWidth = "4px";
                pass1.style.borderColor = "Red";
                pass2.style.borderWidth = "4px";
                pass2.style.borderColor = "Red";
                error.style.position = "absolute";
                error.textContent = "Password Don't Match!";
                error.style.color = "Red";
            }
            else if (pass1.value.length != 0 && pass2.value.length != 0 && pass1.value.length >= 8) {
                pass1.style = "input";
                pass2.style = "input";
                pass2.style.marginTop = "10px";
                error.style.position = "absolute";
                error.textContent = "Perfect!";
                error.style.marginLeft = "5px";
                setTimeout(10000);
                error.style.fontSize = "16px";
                error.style.color = "Green";
                error.style.fontWeight = "Bold";
            }
        })
    </script>
</body>
</html>
