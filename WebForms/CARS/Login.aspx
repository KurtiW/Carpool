<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CARS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="LOGIN_PANEL" runat="server" Visible="True">
                <div>
                    <asp:Label ID="LOGIN_EMAIL_TEXT" runat="server" Text="EMAIL:"></asp:Label>
                    <asp:TextBox ID="LOGIN_EMAIL_INPUT" runat="server" TextMode="Email"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LOGIN_PASSWORD_TEXT" runat="server" Text="PASSWORT:"></asp:Label>
                    <asp:TextBox ID="LOGIN_PASSWORD_INPUT" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="LOGIN_LOGIN_BUTTON" runat="server" Text="LOGIN" OnClick="LOGIN_LOGIN_BUTTON_Click" />
                    <asp:Button ID="LOGIN_REGISTER_BUTTON" runat="server" Text="REGISTRIEREN" OnClick="LOGIN_REGISTER_BUTTON_Click" />
                </div>
            </asp:Panel>
            <asp:Panel ID="ERROR_PANEL" runat="server" Visible="False">
                <asp:Label ID="ERROR_TEXT" runat="server" Text="ERROR"></asp:Label>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
