<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidateKey.aspx.cs" Inherits="UserImages.ValidateKey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FavCol - Key Validate</title>
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
    <form id="valkey"  method="post" style="height:400px;" runat="server">
        <div class="imgcontainer">
            <h2><span class="h2_p1">Fav</span><span class="h2_p2">Col</span></h2>
            <h3>Key Validation</h3>   
            <br />
            <h4 style="margin-right:160px; color:#635e5e">Enter the key to proceed:</h4>
            <asp:TextBox ID="keyreceived" TextMode="Number" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID ="unamewarn" runat="server" Visible="false" style="text-align:left; color:red; float:left; margin-left:34px; "></asp:Label>
            <asp:Button ID="toreset" runat="server" Text="Proceed" CssClass="button" OnClick="toreset_Click" />
            <span id="error"></span>
        </div>
    </form>
    <script>
        let x = document.getElementById("keyreceived");
        let but = document.getElementById("toreset");
        let error = document.getElementById("error");
        window.addEventListener("click", () => {
            if (x.value.length == 0) {
                x.style.borderWidth = "4px";
                x.style.borderColor = "Red";
                error.style.position = "absolute";
                error.style.marginLeft = "-343px";
                error.textContent = "* Field is empty";
                error.style.color = "Red";
            }
            else {
                x.style = "input";
                error.textContent = "";
            }
        })
    </script>
</body>
</html>
