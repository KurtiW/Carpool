<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hauptmenü.aspx.cs" Inherits="CARS.Website.Hauptmenü" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../hauptmenu.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
        <form id="form2" runat="server">
<div>
    <asp:Panel ID="Hauptmenü_Panel" runat="server">
        <header>
                    <asp:Image ID="Logo_Image" runat="server" />
        <asp:Label ID="Username_Lable" runat="server" Text="Username"></asp:Label>
        <h1>Hauptmenü</h1>
        
            <div class="leftbuttons">
            <asp:Button ID="Chat_Button" runat="server" Text="Chat" />

        <asp:Button ID="Abmelden_Button" runat="server" Text="Abmelden" />
            </div>
        </header>
        <div class="main">
        <asp:Label ID="Name_Label" runat="server" Text="Name"></asp:Label>
        <div>
        </div>
        <div class="Fahrer">
            <asp:Label ID="Fahrer_Label" runat="server" Text="Fahrer"></asp:Label>
                <div>
        <asp:Button ID="Fahrterstellen_Button" runat="server" Text="Fahrterstellen" />
            <asp:Button ID="FahrtSuchen_Button" runat="server" Text="Fahrt suchen" />
        </div>
        
        </div>

        <div class="MitFahrer">
                    <asp:Label ID="Mitfaher_Lable" runat="server" Text="Mitfahrer"></asp:Label>
            <div>
        <asp:Button ID="MeineFahrten_Button" runat="server" Text="Meine Fahrten" />
            <asp:Button ID="MeineMitfahrten_Button" runat="server" Text="Meine Mitfahrten" />
            </div>
        </div>
                    </div>


        <div>
        </div>

    </asp:Panel>


    <footer>        <asp:Label ID="NameUntenRechts_Label" runat="server" Text="Name"></asp:Label>
</footer>

    </div>    </form>

</body>

</html>