<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="UserImages.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
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
    </style>
  

</head>
<body style="background-image:linear-gradient(to right, dodgerblue, red)">
        <!-- ** Don't forget to Add jQuery here ** -->

    <form id="frgtpass" method="post" style="height:700px; width:1200px; border-width:0px;" runat="server">
        <asp:Label ID="lab" runat="server" Text="" class="label"></asp:Label>
        <i id="ico1" runat="server" class="bi-person-badge" style="font-size:70px; position:absolute; margin-top:170px; margin-left:-120px; color:#961c1c;"></i> 
        <asp:Button ID="profile" runat="server" Text="Profile" CssClass="buttondashboard" style="margin-top:250px;" />
        <i id="ico2" runat="server" class="bi-messenger" style="font-size:70px; position:absolute; margin-top:340px; margin-left:-120px; color:#961c1c;"></i> 
        <asp:Button ID="message" runat="server" Text="Chat" CssClass="buttondashboard" style="margin-top:410px;" OnClick="message_Click" />
        <i id="ico3" runat="server" class="bi-image" style="font-size:70px; position:absolute; margin-top:500px; margin-left:-120px; color:#961c1c;"></i>
        <asp:Button ID="Images" runat="server" Text="Images" CssClass="buttondashboard" style="margin-top:570px;" OnClick="Images_Click" />
        <asp:Label ID="Label1" runat="server" Text="" class="label2"></asp:Label>
        <asp:Button ID="logout"  runat="server" CssClass="logout"></asp:Button>
        <asp:Label ID="verticallog" runat="server" Text="" CssClass="vllog"></asp:Label>
        <asp:Label ID="wlcmdialog" runat="server" Text="Welcome, Mr. John Elia" CssClass="welcomedialog"></asp:Label>
        <asp:Label ID="containdash" runat="server" Text="Messenger" style="    position: absolute; margin-top: -43px; margin-left: 30px; color: #3309c4; font-weight: bold; font-size: large;font-family: 'Palatino Linotype';"></asp:Label>
        <asp:Label ID="logo" runat="server" Text="Fav" style="font-size:xx-large; font-weight:bold; position:absolute; margin-top:-43px; margin-left:-136px; color:#041a6c;"></asp:Label>
        <asp:Label ID="logo2" runat="server" Text="Col" style="font-size:xx-large; font-weight:bold; position:absolute; margin-top:-43px; margin-left:-86px; color:#7e0505;"></asp:Label>
        <div class="imgcontainer">
               <asp:Label ID="vlchat" runat="server" Text="" style="background-color:#c3c3c3; margin-left:250px; margin-top:-24px; height:628px; width:2px; padding:0px 0px 0px 0px;" CssClass="label"></asp:Label>
               <asp:TextBox ID="searchfield" runat="server" placeholder="Search" style="border-radius:6px; font-size:14px; width:220px; height:35px; margin-left:-1023px; margin-top:-8px; " ></asp:TextBox>  
               <i class="bi-search" style="margin-left:-27px;" runat="server"></i>
               <asp:Label ID="horizonline" runat="server" Text="" style="position:absolute; background-color:#d9d9d9; margin-left:13px; margin-top:-24px; height:2px; width:768px; padding:70px 0px 0px 0px;" CssClass="label"></asp:Label> 
               <asp:Label ID="searchhorizon" class="form-control" runat="server" Text="" style="position:absolute; background-color:#d9d9d9; margin-left:13px; margin-top:543px; border-top-left-radius:21px; border-top-right-radius:21px; height:2px; width:768px; padding:60px 0px 0px 0px;" CssClass="label"></asp:Label> 
                <asp:TextBox ID="msg" runat="server" style="position:absolute; margin-top:555px; margin-left:50px; height:35px; width:600px; border-radius:10px; background-color:white; padding-right:40px;"></asp:TextBox>
                <asp:Label id="emojibutton" runat="server" Text="😃" style="position:absolute; margin-top:565px; margin-left:670px;"></asp:Label>
                <script src="CSS/emoji-button.min.js"></script>
                <script>
                    window.addEventListener('DOMContentLoaded', () => {
                        const button = document.querySelector('#emojibutton');
                        const picker = new EmojiButton({
                            position: 'top'
                        });


                        button.addEventListener('mouseover', function () {
                            document.body.style.cursor = "pointer";
                        })
                        button.addEventListener('click', function () {
                            picker.showPicker(button);
                        })

                        picker.on('emoji', emoji => { 
                            document.querySelector('#msg').value += emoji;
                            picker.showPicker(buton);
                        });
                    });
                </script>
            <button runat="server" id="btnRun" style="position:absolute; margin-top:560px; margin-left:715px; border:none; background:none;">
                <i class="bi-arrow-right-circle-fill" style="font-size:27px;"></i>
            </button>
            
            </div>
    </form>
</body>
</html>

