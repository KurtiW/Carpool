<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fahrer.aspx.cs" Inherits="CARS.Fahrer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="FAHRER_PANEL" runat="server">
                    <div>
                        <asp:Button ID="FAHRER_NEUEFAHRT_BUTTON" runat="server" Text="NEUE FAHRT" OnClick="FAHRER_NEUEFAHRT_BUTTON_Click" />
                        <asp:Button ID="FAHRER_MEINEFAHRTEN_BUTTON" runat="server" Text="MEINE FAHRTEN" OnClick="FAHRER_MEINEFAHRTEN_BUTTON_Click" />
                    </div>
                </asp:Panel>
    </div>
    </form>
</body>
</html>
