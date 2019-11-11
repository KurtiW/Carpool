<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="CARS.Website.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" type="text/css" href="../chat.css" />
        <link href="../banner.css"/ rel="stylesheet"/>

    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">

                    <img src="../image/logo.png" />
                    <asp:Button ID="Username_Label" runat="server" Text="Username" OnClick="Username_Label_Click"/>

                    <div class="inner_header">
                        <div class="name_container">
                            <h1>Chat</h1>


                        </div>
                    </div>

                    <div class="navigation">
                        <a href="Hauptmenü">
                            Zurück
                        </a>
                        
                    </div>
                </div>
        <div class="container">

            <asp:Panel ID="List" runat="server"></asp:Panel>
            <asp:Panel ID="History" runat="server">

            </asp:Panel>
            <asp:Panel ID="Input" runat="server">
                <asp:TextBox ID="Message_IF" runat="server" TextMode="MultiLine" ></asp:TextBox>
                <asp:Button ID="Send" runat="server" Text="Senden" OnClick="Send_Click" />
            </asp:Panel>
        </div>

    
    </div>
    </form>
</body>
</html>
