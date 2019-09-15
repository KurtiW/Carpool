<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auswahl.aspx.cs" Inherits="CARS.Auswahl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="AUSWAHL_FAHRER_MITFAHRER_PANEL" runat="server" Visible="True">

                    <div>
                        <asp:Label CssClass="invisible" ID="AUSWAHL_USERNAME_TEXT" runat="server" Text="USERNAME"></asp:Label>
                    </div>
                    <div>

                        <asp:Button ID="AUSWAHL_FAHRER_MITFAHRER_FAHRER_BUTTON" CssClass="main_button" runat="server" Text="FAHRER" OnClick="AUSWAHL_FAHRER_MITFAHRER_FAHRER_BUTTON_Click" />
                        <asp:Button ID="AUSWAHL_FAHRER_MITFAHRER_MITFAHRER_BUTTON" CssClass="main_button" runat="server" Text="MITFAHRER" OnClick="AUSWAHL_FAHRER_MITFAHRER_MITFAHRER_BUTTON_Click" />
                    </div>
                </asp:Panel>
    </div>
    </form>
</body>
</html>
