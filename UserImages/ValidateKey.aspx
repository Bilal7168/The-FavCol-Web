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
            <asp:Button ID="toreset" runat="server" Text="Proceed" CssClass="button" OnClick="toreset_Click" />
        </div>
    </form>
</body>
</html>
