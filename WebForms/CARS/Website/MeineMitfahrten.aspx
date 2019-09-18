<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeineMitfahrten.aspx.cs" Inherits="CARS.Website.MeineMitfahrten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <div class="header">

                    <img src="../image/logo.png" />
                    <asp:Label ID="Username_Label" runat="server" Text="Username"></asp:Label>

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
                        </a>
                    </div>
                </div>
            
                    <asp:Panel ID="MEINEMITFAHRTEN_PANEL" runat="server" Visible="True"></asp:Panel>

    </div>
    </form>
</body>
</html>
