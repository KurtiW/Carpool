<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NeueFahrt.aspx.cs" Inherits="CARS.NeueFahrt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link href="../main.css"/ rel="stylesheet"/>
<link href="../banner.css"/ rel="stylesheet"/>
<link href="../search.css"/ rel="stylesheet"/>
<link href="../button.css"/ rel="stylesheet"/>
<link href="../neuefahrt.css"/ rel="stylesheet"/>

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
                        <h1>Neue Fahrt</h1>


                    </div>
                </div>

                <div class="navigation">
                    <a href="Hauptmenü">Zurück</a>
                    <a href="Chat">
                            Chat
                            
                            <asp:Image ID="CHAT_MARKER" runat="server" src="../image/baseline_notification_important_black_18dp.png" Visible="true"/>    

                            

                        </a>
                </div>
            </div>

            <asp:Panel ID="NEUEFAHRT_PANEL" runat="server">
                <div class="neueFahrtWindow">



                    <div id="AbfahrtsTag">

                        <asp:Label ID="UHRZEIT_ABFAHRT_TEXT" runat="server" Text="Abfahrtstag"></asp:Label>
                        <asp:TextBox ID="UHRZEIT_ABFAHRT_CALENDER" runat="server" TextMode="Date"></asp:TextBox>

                    </div>


                    <div id="Abfahrtsort">
                        <asp:Label ID="Label1" runat="server" Text="Abfahrtsort"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>






                    <div id="Abfahrtszeit">
                        <asp:Label ID="UHRZEIT_ABFAHRTSZEIT_TEXT" runat="server" Text="Abfahrtszeit"></asp:Label>
                        <asp:TextBox ID="UHRZEIT_ABFAHRTSZEIT_STUNDE_INPUT" runat="server" TextMode="Time"></asp:TextBox>




                    </div>

                    <div id="Zielort">
                        <asp:Label ID="ZIELORT_TEXT" runat="server" Text="Zielort"></asp:Label>
                        <asp:TextBox ID="ZIELORT_INPUT" runat="server"></asp:TextBox>
                    </div>



                    <div id="Freieplätze">
                        <asp:Label ID="FREIESITZPLÄTZE_TEXT" runat="server" Text="freie Sitzplätze"></asp:Label>
                        <asp:TextBox ID="FREIESITZPLÄTZE_INPUT" runat="server" TextMode="Number">1</asp:TextBox>
                    </div>
                </div>
                <button class="btn btn3">
                    Fahrt erstellen
                    <asp:Button ID="FAHERTERSTELLEN_BUTTON" runat="server" Text="Fahrt erstellen" OnClick="FAHERTERSTELLEN_BUTTON_Click" />

                </button>

            </asp:Panel>


            <asp:Panel ID="ERROR_PANEL" runat="server" Visible="False">
                <asp:Label ID="ERROR_TEXT" runat="server" Text="ERROR"></asp:Label>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
