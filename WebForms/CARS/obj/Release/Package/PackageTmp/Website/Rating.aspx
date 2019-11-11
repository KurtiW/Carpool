<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="CARS.Website.Rating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
    <link rel="stylesheet" type="text/css" href="../rating.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">

                <img src="../image/logo.png" />
                    <asp:Button ID="Username_Label" runat="server" Text="Username" OnClick="Username_Label_Click"/>

                <div class="inner_header">
                    <div class="name_container">
                        <h1>Meine Mitfahrten</h1>


                    </div>
                </div>

                <div class="navigation">
                    <a href="Hauptmenü">Zurück
                    </a>
                    <a href="Chat">
                            Chat
                                                       <asp:Image ID="CHAT_MARKER" runat="server" src="../image/baseline_notification_important_black_18dp.png" Visible="true"/>    

                        </a>
                </div>
            </div>

            <asp:Panel ID="RATING_PANEL" runat="server" Visible="True">
                <div class="main_container">
                    <div>
                        <asp:Button ID="RATE1" runat="server" Text="" CssClass="RATING_STAR" OnClick="RATE1_Click" />
                        <asp:Button ID="RATE2" runat="server" Text="" CssClass="RATING_STAR" OnClick="RATE2_Click" />
                        <asp:Button ID="RATE3" runat="server" Text="" CssClass="RATING_STAR" OnClick="RATE3_Click" />
                        <asp:Button ID="RATE4" runat="server" Text="" CssClass="RATING_STAR" OnClick="RATE4_Click" />
                        <asp:Button ID="RATE5" runat="server" Text="" CssClass="RATING_STAR" OnClick="RATE5_Click" />
                    </div>
                    <asp:TextBox ID="COMMENT" runat="server"></asp:TextBox>
                    <button class="btn btn3">Senden                    
                        <asp:Button ID="SEND" runat="server" Text="Send" OnClick="SEND_Click" style="margin:0;opacity:0; width:100%; height:100%; position: absolute;top: 0;left: 0;"/>
                    </button>

                </div>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
