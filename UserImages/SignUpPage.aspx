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
            <asp:TextBox ID="fname" runat="server" CssClass="input" placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="lname" placeholder="Last Name" runat="server" CssClass="input" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="emailaddr" placeholder="Email Address" runat="server" CssClass="input" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="uname" placeholder="User Name" runat="server" CssClass="input" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server" CssClass="input" style="margin-top:10px;"></asp:TextBox>
            <asp:TextBox ID="confrmpass" placeholder="Confirm Password" TextMode="Password" runat="server" CssClass="input" style="margin-top:10px;"></asp:TextBox>
            <br />
            <span id="error"></span>
            <asp:Button ID="signup" runat="server" Text="SignUp" CssClass="button" OnClick="signup_Click" />
            <a href="LoginPage.aspx" class="href2">Back to Login</a>
        </div>
    </form>
    <script>
        let inputs = document.getElementsByClassName("input");
        var error = document.getElementById("error");

        window.addEventListener("click", () => {
            let allOkay = true;
            for (i = 0; i < inputs.length; i++) {
                if (inputs[i].value.length == 0) {
                    inputs[i].style.borderColor = "Red";
                    inputs[i].style.borderWidth = "3.7px";
                    error.style.position = "absolute";
                    error.textContent = "* Some Fields are empty";
                    error.style.fontSize = "16px";
                    error.style.color = "Red";
                    allOkay = false;
                    for (z = 0; z < inputs.length; z++) {
                        if (z > 0) {
                            inputs[z].style.marginTop = "10px";
                        }
                    }

                }
                if (inputs[4].value != "" && inputs[4].value.length < 8 && i>4) {
                    inputs[4].style.borderColor = "Red"; inputs[5].style.borderColor = "Red";
                    inputs[4].style.borderWidth = "3.7px"; inputs[5].style.borderWidth = "3.7px";
                    error.style.position = "absolute";
                    error.textContent = "*Password should be more than or equal to 8 characters";
                    error.style.fontSize = "16px";
                    error.style.color = "Red";
                    allOkay = false;
                    for (z = 0; z < inputs.length; z++) {
                        if (z > 0) {
                            inputs[z].style.marginTop = "10px";
                        }
                    }
                }
                else if (inputs[4].value != inputs[5].value && inputs[4].value.length >= 8) {
                    inputs[4].style.borderColor = "Red"; inputs[5].style.borderColor = "Red";
                    inputs[4].style.borderWidth = "3.7px"; inputs[5].style.borderWidth = "3.7px";
                    error.style.position = "absolute";
                    error.textContent = "* Passwords don't match";
                    error.style.fontSize = "16px";
                    error.style.color = "Red";
                    for (z = 0; z < inputs.length; z++) {
                        if (z > 0) {
                            inputs[z].style.marginTop = "10px";
                        }
                    }
                    allOkay = false;
                }
                else if(allOkay != false) {
                    inputs[i].style = "input";
                    error.textContent = "";
                    allOkay = true;
                }
            }
            //after the loop
            if (allOkay == true) {
                for ( z = 0; z < inputs.length; z++){
                    inputs[z].style = "input";
                    if (z > 0) {
                        inputs[z].style.marginTop = "10px";
                    }
        }
                error.style.position = "absolute";
                error.textContent = "Perfect!";
                setTimeout(5000);
                error.style.fontSize = "16px";
                error.style.color = "Green";
                error.style.fontWeight = "Bold";
            }
        })
    </script>
</body>
</html>
