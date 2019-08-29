<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mitfahrer.aspx.cs" Inherits="CARS.Mitfahrer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="MITFAHRER_PANEL" runat="server" Visible="True">

                    <asp:Button ID="MITFAHRER_ALLEFAHRTEN_BUTTON" runat="server" Text="ALLE FAHRTEN" OnClick="MITFAHRER_ALLEFAHRTEN_BUTTON_Click" />
                    <asp:Button ID="MITFAHRER_MEINESITZPLÄTZE_BUTTON" runat="server" Text="MEINE SITZPLÄTZE" OnClick="MITFAHRER_MEINESITZPLÄTZE_BUTTON_Click" />
                    <asp:Button ID="MITFAHRER_SUCHE_BUTTON" runat="server" Text="SUCHE" />
                </asp:Panel>
    </div>
    </form>
</body>
</html>
