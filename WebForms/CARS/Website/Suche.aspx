<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suche.aspx.cs" Inherits="CARS.Website.Suche" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="../main.css"/ rel="stylesheet"/>
        <link href="../banner.css"/ rel="stylesheet"/>
        <link href="../search.css"/ rel="stylesheet"/>
            <link href="../button.css"/ rel="stylesheet"/>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Hauptmenü_Panel" runat="server">

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
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <Triggers>
                            <asp:AsyncPostBackTrigger  ControlID="MARKER_UPDATE" EventName="Tick" />
                            </Triggers>    <ContentTemplate> 
                            <asp:Image ID="CHAT_MARKER" runat="server" src="../image/baseline_notification_important_black_18dp.png" Visible="true"/>    

                            </ContentTemplate> 
                            </asp:UpdatePanel>


<!--<asp:Timer ID="MARKER_UPDATE" runat="server" Interval="5000" OnTick="MARKER_UPDATE_Tick"></asp:Timer>-->
                        </a>
                    </div>
                </div>

                <!---<header>
                    <asp:Image ID="Logo_Image" runat="server" />
                    <asp:Label ID="Username_Lable" runat="server" Text="Username"></asp:Label>

                    


                </header>--->

                <div class="main">
                    <div id="main_container">

                        <div class="Suche">
                            <div>
                            <asp:Label ID="Uhrzeit_Label" runat="server" Text="Uhrzeit"></asp:Label>  
                            <asp:TextBox ID="Uhrzeit_TextBox" runat="server" TextMode="Time" format="HH:mm"></asp:TextBox>
                                                            </div>
                                                        <div>

                            <asp:Label ID="Datum_Label" runat="server" Text="Datum"></asp:Label>
                            <asp:TextBox ID="Datum_TextBox" runat="server" TextMode="Date"></asp:TextBox>
 </div>
                                                        <div>
                            <asp:Label ID="Abfahrtsort_Label" runat="server" Text="Abfahrtsort"></asp:Label>  
                            <asp:TextBox ID="Abfahrtsort_TextBox" runat="server"></asp:TextBox>
                                                             </div>
                                                        <div>
                            <asp:Label ID="Zielort_Lable" runat="server" Text="Zielort"></asp:Label>
                            <asp:TextBox ID="Zielort_TextBox" runat="server"></asp:TextBox>
                                                             </div>
                                       <!--                 <div>
                            <asp:Label ID="FahrerName_Lable" runat="server" Text="Fahrer"></asp:Label>
                            <asp:TextBox ID="Fahrer_TextBox" runat="server"></asp:TextBox>
                        </div>     --->                   </div>


                        <div class="Rechts">
                                <button class="btn btn3">Suche
                                    <asp:Button ID="Suchen_Button"  runat="server" Text="Suche" style="opacity:0; width:100%; height:100%; position: absolute;top: 0;left: 0;" OnClick="Suchen_Button_Click" />

                                </button>
                                <!--<button class="btn btn3">Alle Fahrten anzeigen
                                    <asp:Button ID="AlleFahrtenAnzeigen_Button"  runat="server" Text="Suche" style="opacity:0; width:100%; height:100%; position: absolute;top: 0;left: 0;" />

                                </button>-->

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
