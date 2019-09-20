<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeineFahrten.aspx.cs" Inherits="CARS.MeineFahrten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
    <link rel="stylesheet" type="text/css" href="../fahrten.css" />
</head>
<body>
        <form id="form2" runat="server">
       
         <div>
            <asp:Panel ID="Hauptmenü_Panel" runat="server">
                </asp:Panel>
                <div class="header">

                    <img src="../image/logo.png" />
                                        <asp:Label ID="Username_Label" runat="server" Text="Username"></asp:Label>

                    <div class="inner_header">
                        <div class="name_container">
                            <h1>Meine Fahrten</h1>


                        </div>
                    </div>

                    <ul class="navigation">
                        <a href="Hauptmenü">
                            <li>Zurück</li>
                        </a>
                        <a href="Chat">
                            <li>Chat</li>
                        </a>
                    </ul>
                </div>

                <!---<header>
                    <asp:Image ID="Logo_Image" runat="server" />
                    <asp:Label ID="Username_Lable" runat="server" Text="Username"></asp:Label>

                    


                </header>--->
    <div>
                    <asp:Panel ID="MEINEFAHRTEN_PANEL" runat="server" Visible="True"></asp:Panel>

    </div>
    </form>
</body>
</html>
