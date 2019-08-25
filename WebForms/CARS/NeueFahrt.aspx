<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NeueFahrt.aspx.cs" Inherits="CARS.NeueFahrt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="NEUEFAHRT_FAHRTERSTELLEN_PANEL" runat="server">
                    <div>
                        <asp:Label ID="FAHRTERSTELLEN_UHRZEIT_ABFAHRT_TEXT" runat="server" Text="ABFAHRTsTag"></asp:Label>
                        <asp:Calendar ID="FAHRTERSTELLEN_UHRZEIT_ABFAHRT_CALENDER" runat="server"></asp:Calendar>
                        <asp:Label ID="FAHRTERSTELLEN_UHRZEIT_ABFAHRTSZEIT_TEXT" runat="server" Text="Abfahrtszeit"></asp:Label>
                        <asp:TextBox ID="FAHRTERSTELLEN_UHRZEIT_ABFAHRTSZEIT_STUNDE_INPUT" runat="server"></asp:TextBox>
                        <asp:Label ID="FAHRTERSTELLEN_UHRZEIT_ABFAHRTSZEIT_TEXT2" runat="server" Text=":"></asp:Label>
                        <asp:TextBox ID="FAHRTERSTELLEN_UHRZEIT_ABFAHRTSZEIT_MINUTE_INPUT" runat="server"></asp:TextBox>
                    </div>

                    <asp:Label ID="FAHRTERSTELLEN_ABFAHRTSORT_TEXT" runat="server" Text="ABFAHRTSORT"></asp:Label>
                    <asp:TextBox ID="FAHRTERSTELLEN_ABFAHRTSORT_INPUT" runat="server"></asp:TextBox>

                    <div>
                        <asp:Label ID="FAHRTERSTELLEN_ZIELORT_TEXT" runat="server" Text="ZIELORT"></asp:Label>
                        <asp:TextBox ID="FAHRTERSTELLEN_ZIELORT_INPUT" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="FAHRTERSTELLEN_FREIESITZPLÄTZE_TEXT" runat="server" Text="FREIE SITZPLÄTZE"></asp:Label>
                        <asp:TextBox ID="FAHRTERSTELLEN_FREIESITZPLÄTZE_INPUT" runat="server" TextMode="Number"></asp:TextBox>
                    </div>

                    <asp:Button ID="FAHRTERSTELLEN_FAHERTERSTELLEN_BUTTON" runat="server" Text="FAHRT ERSTELLEN" OnClick="FAHRTERSTELLEN_FAHERTERSTELLEN_BUTTON_Click" />

                </asp:Panel><asp:Panel ID="ERROR_PANEL" runat="server" Visible="False">
                    <asp:Label ID="ERROR_TEXT" runat="server" Text="ERROR"></asp:Label>

                </asp:Panel>
    </div>
    </form>
</body>
</html>
