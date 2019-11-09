<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlleFahrten.aspx.cs" Inherits="CARS.AlleFahrten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="../main.css"/ rel="stylesheet"/>
        <link href="../banner.css"/ rel="stylesheet"/>
        <link href="../search.css"/ rel="stylesheet"/>
            <link href="../button.css"/ rel="stylesheet"/>
                <link href="../table.css"/ rel="stylesheet"/>

    <title></title>
    </head>
   <body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
                    <img src="../image/logo.png" />
                    <asp:Label ID="Username_Label" runat="server" Text="Username"></asp:Label>

                    <div class="inner_header">
                        <div class="name_container">
                            <h1>Suche</h1>


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
                    <asp:Panel ID="MITFAHRER_ALLEFAHRTEN_PANEL" runat="server">
                        <asp:Table ID="Table1" runat="server">

                            <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                Start
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Ziel
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Zeit
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Fahrer
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Bewertung
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                Freie Plätze
            </asp:TableHeaderCell>
            <asp:TableHeaderCell>
            </asp:TableHeaderCell>
                                <asp:TableHeaderCell>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>

                        </asp:Table>
                    
                </asp:Panel>

    </div>
    </form>
</body>
</html>
