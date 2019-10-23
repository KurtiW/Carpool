<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hauptmenü.aspx.cs" Inherits="CARS.Website.Hauptmenü" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://igs-sassenburg.de/iserv/logo/logo.jpg" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>



    <form id="form2" runat="server">
        <div>
            <asp:Panel ID="Hauptmenü_Panel" runat="server">

                <div class="header">

                    <img src="../image/logo.png" />
                    <asp:Label ID="Username_Label" runat="server" Text="Username"></asp:Label>

                    <div class="inner_header">
                        <div class="name_container">
                            <h1>Hauptmenü</h1>


                        </div>
                    </div>

                    <div class="navigation">
                        <a href="Login">
                            Abmelden
                        </a>
                        <a href="Chat">
                            Chat
                        </a>
                    </div>
                </div>

                <!---<header>
                    <asp:Image ID="Logo_Image" runat="server" />
                    <asp:Label ID="Username_Lable" runat="server" Text="Username"></asp:Label>

                    


                </header>--->

                <div class="main">
                    <div id="main_container">

                        <div class="Fahrer">
                            <asp:Label ID="Fahrer_Label" runat="server" CssClass="headertext" Text="Fahrer"></asp:Label>
                            <div>
                                <button type="button" onclick="window.location.href='NeueFahrt.aspx'" class="btn btn3">Fahrt erstellen</button>
                                <button type="button" onclick="window.location.href='MeineFahrten.aspx'" class="btn btn3">Meine Fahrten</button>
                            </div>

                        </div>

                        <div class="MitFahrer">
                            <asp:Label ID="Mitfaher_Lable" runat="server" CssClass="headertext" Text="Mitfahrer"></asp:Label>
                            <div>
                                <button type="button" onclick="window.location.href='Suche.aspx'" class="btn btn3">Fahrt suchen</button>
                                <button type="button" onclick="window.location.href='MeineMitfahrten.aspx'" class="btn btn3">Meine Mitfahrten</button>


                            </div>
                        </div>
                    </div>
                </div>




            </asp:Panel>


            <footer>
                <asp:Label ID="NameUntenRechts_Label" runat="server" Text="IGShuttle"></asp:Label>
            </footer>

        </div>
    </form>

</body>

</html>
