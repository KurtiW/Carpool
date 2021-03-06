﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeineMitfahrten.aspx.cs" Inherits="CARS.Website.MeineMitfahrten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
    <link rel="stylesheet" type="text/css" href="../mitfahrten.css" />

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
                        <a href="Hauptmenü">
                            Zurück
                        </a>
                        <a href="Chat">
                            Chat
                            <asp:Image ID="CHAT_MARKER" runat="server" src="../image/baseline_notification_important_black_18dp.png" Visible="true"/>    
                        </a>
                    </div>
                </div>
            
                    <asp:Panel ID="MEINEMITFAHRTEN_PANEL" runat="server" Visible="True">
                        <!--<asp:Table ID="Table1" runat="server">
                            <asp:TableRow runat="server">
                                <asp:TableHeaderCell>
                                    Fahrer
                                </asp:TableHeaderCell>
                                <asp:TableHeaderCell>
                                    Start
                                </asp:TableHeaderCell>
                                <asp:TableHeaderCell>
                                    Ziel
                                </asp:TableHeaderCell>
                                <asp:TableHeaderCell>
                                    Zeit
                                </asp:TableHeaderCell>
                            </asp:TableRow>
                        </asp:Table>-->
                    </asp:Panel>

    </div>
    </form>
</body>
</html>
