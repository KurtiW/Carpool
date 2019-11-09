<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CARS.Website.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
    <link rel="stylesheet" type="text/css" href="../user.css" />
</head>
<body>
        <form id="form2" runat="server">
       
         <div>
            
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

        </div>
            <div id="User_MAIN">
                <asp:Label ID="Username_Text" runat="server" Text="Username"></asp:Label>

                <asp:Panel ID="RATE1" runat="server" ></asp:Panel>
                <asp:Panel ID="RATE2" runat="server" ></asp:Panel>
                <asp:Panel ID="RATE3" runat="server" ></asp:Panel>
                <asp:Panel ID="RATE4" runat="server" ></asp:Panel>
                <asp:Panel ID="RATE5" runat="server" ></asp:Panel>
            </div>
        <asp:Panel ID="Rating_Panel" runat="server">
            
        </asp:Panel>

    </form>
</body>
</html>
