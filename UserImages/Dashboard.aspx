<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="UserImages.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
    <form id="frgtpass" method="post" style="height:700px; width:1200px; border-width:0px;" runat="server">
        <asp:Label ID="lab" runat="server" Text="" class="label"></asp:Label>
        <i id="ico1" runat="server" class="bi-person-badge" style="font-size:70px; position:absolute; margin-top:170px; margin-left:-120px; color:#961c1c;"></i> 
        <asp:Button ID="profile" runat="server" Text="Profile" CssClass="buttondashboard" style="margin-top:250px;" />
        <i id="ico2" runat="server" class="bi-messenger" style="font-size:70px; position:absolute; margin-top:340px; margin-left:-120px; color:#961c1c;"></i> 
        <asp:Button ID="message" runat="server" Text="Chat" CssClass="buttondashboard" style="margin-top:410px;" OnClick="message_Click" />
        <i id="ico3" runat="server" class="bi-image" style="font-size:70px; position:absolute; margin-top:500px; margin-left:-120px; color:#961c1c;"></i>
        <asp:Button ID="imagesdash" runat="server" Text="Images" CssClass="buttondashboard" style="margin-top:570px;" onClick="imagesdash_Click" />
        <asp:Label ID="Label1" runat="server" Text="" class="label2"></asp:Label>
        <asp:Button ID="logout"  runat="server" CssClass="logout" OnClick="logout_Click"></asp:Button>
        <asp:Label ID="verticallog" runat="server" Text="" CssClass="vllog"></asp:Label>
        <asp:Label ID="wlcmdialog" runat="server" Text="Welcome, Mr. John Elia" CssClass="welcomedialog"></asp:Label>
        <asp:Label ID="containdash" runat="server" Text="Profile" style="    position: absolute; margin-top: -43px; margin-left: 30px; color: #3309c4; font-weight: bold; font-size: large;font-family: 'Palatino Linotype';"></asp:Label>
        <asp:Label ID="logo" runat="server" Text="Fav" style="font-size:xx-large; font-weight:bold; position:absolute; margin-top:-43px; margin-left:-136px; color:#041a6c;"></asp:Label>
        <asp:Label ID="logo2" runat="server" Text="Col" style="font-size:xx-large; font-weight:bold; position:absolute; margin-top:-43px; margin-left:-86px; color:#7e0505;"></asp:Label>
        <div class="imgcontainer">
            <asp:textBox  runat="server" textMode="color" class="span3" value="#041a6c" style="width:300px; height:300px; border-width:10px; margin-top:80px; margin-right:550px;" id="cp2" data-color-format="rgba" />
            <asp:Label ID="colorchoose" runat="server" Text="Pick Favorite color from above" style="position:absolute; margin-top:440px; margin-left:-845px; font-size:21px; font-weight:bold; color:black; font-family:'Palatino Linotype'"></asp:Label>
            <i class="bi-arrow-90deg-up" style="position:absolute; font-size:17px; color:black; margin-top:440px; margin-left:-865px;" ></i>
            <asp:TextBox runat="server" style="position:absolute; margin-left:-353px; margin-top:120px;"></asp:TextBox>
            <asp:Label ID="favword" runat="server" Text="Write your favorite word below" style="position:absolute; margin-top:70px; margin-left:-320px; font-size:21px; font-weight:bold; color:black; font-family:'Palatino Linotype'"></asp:Label>
            <i class="bi-arrow-90deg-down" style="position:absolute; font-size:17px; color:black; margin-top:80px; margin-left:-339px;" ></i>
            <asp:TextBox runat="server" style="position:absolute; margin-left:-353px; margin-top:220px;"></asp:TextBox>
            <asp:Label ID="emailaddrmodif" runat="server" Text="Modify Email Address" style="position:absolute; margin-top:280px; margin-left:-230px; font-size:21px; font-weight:bold; color:black; font-family:'Palatino Linotype'"></asp:Label>
            <i class="bi-arrow-90deg-up" style="position:absolute; font-size:17px; color:black; margin-top:280px; margin-left:-252px;" ></i>
            <asp:Button ID="save" runat="server" Text="Save" style="position:absolute; margin-top:424px; margin-left:-353px;" CssClass="button" />
            <asp:Label ID="vllog2" runat="server" style="position:absolute; height:578px; margin-left:-460px; margin-top:0px;" Text="" CssClass="vllog"></asp:Label>
        </div>
    </form>
</body>
</html>
