<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="UserImages.Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/InitialPageForms.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="lib/css/emoji.css" rel="stylesheet" />
    <script>
            import { EmojiButton } from '@joeattardi/emoji-button';
    </script>

    <style>
        button:hover{
            cursor:pointer;
        }
        .card:hover{
            border-top-width:10px;
            border-bottom-width:10px;
            border-color:blue;
            transform:scale(1.3);
            cursor:pointer;
        }

    </style>
  

</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
        <!-- ** Don't forget to Add jQuery here ** -->

    <form id="frgtpass" method="post" style="height:700px; width:1200px; border-width:0px;" runat="server">
        <asp:Label ID="lab" runat="server" Text="" class="label"></asp:Label>
        <i id="ico1" runat="server" class="bi-person-badge" style="font-size:70px; position:absolute; margin-top:170px; margin-left:-120px; color:#961c1c;"></i> 
        <asp:Button ID="profile" runat="server" Text="Profile" CssClass="buttondashboard" style="margin-top:250px;" OnClick="profile_Click" />
        <i id="ico2" runat="server" class="bi-messenger" style="font-size:70px; position:absolute; margin-top:340px; margin-left:-120px; color:#961c1c;"></i> 
        <asp:Button ID="message" runat="server" Text="Chat" CssClass="buttondashboard" style="margin-top:420px;" OnClick="message_Click" />
        <i id="ico3" runat="server" class="bi-image" style="font-size:70px; position:absolute; margin-top:500px; margin-left:-120px; color:#961c1c;"></i>
        <asp:Button ID="images" runat="server" Text="Images" CssClass="buttondashboard" style="margin-top:580px;" OnClick="images_Click" />
        <asp:Label ID="Label1" runat="server" Text="" class="label2"></asp:Label>
        <asp:Button ID="logout"  runat="server" CssClass="logout" OnClick="logout_Click"></asp:Button>
        <asp:Label ID="verticallog" runat="server" Text="" CssClass="vllog"></asp:Label>
        <asp:Label ID="wlcmdialog" runat="server" Text="Welcome, Mr. John Elia"></asp:Label>
        <asp:Label ID="containdash" runat="server" Text="Todays' Pictures" style="    position: absolute; margin-top: -43px; margin-left: 30px; color: #3309c4; font-weight: bold; font-size: large;font-family: 'Palatino Linotype';"></asp:Label>
        <asp:Label ID="logo" runat="server" Text="Fav" style="font-size:xx-large; font-weight:bold; position:absolute; margin-top:-43px; margin-left:-136px; color:#041a6c;"></asp:Label>
        <asp:Label ID="logo2" runat="server" Text="Col" style="font-size:xx-large; font-weight:bold; position:absolute; margin-top:-43px; margin-left:-86px; color:#7e0505;"></asp:Label>
        <div class="imgcontainer">
            <div class="card" style="width: 300px; margin-left:400px; margin-top:90px; border-left-width:10px; border-right-width:0px">
            <img src="Content/img/Scenic1.jpg" class="card-img-top" alt="..." />
            <div class="card-body text-center">
                <h5 class="card-title">Alice Liddel</h5>
                <p class="card-text">Alice is a freelance web designer and developer based in London. She is specialized in HTML5, CSS3, JavaScript, Bootstrap, etc.</p>
                <a href="#" class="btn btn-primary">View Profile</a>
            </div>
            </div>
            <div class="card" style="position:absolute; width: 300px; margin-left:720px; margin-top:-426px; border-left-width:0px; border-right-width:10px;">
            <img src="Content/img/Scenic1.jpg" class="card-img-top" alt="..." />
            <div class="card-body text-center">
                <h5 class="card-title">Jenny Liddel</h5>
                <p class="card-text">Jenny is a freelance web designer and developer based in London. She is specialized in HTML5, CSS3, JavaScript, Bootstrap, etc.</p>
                <a href="#" class="btn btn-primary">View Profile</a>
            </div>
            </div>
            </div>
    </form>
</body>
</html>
