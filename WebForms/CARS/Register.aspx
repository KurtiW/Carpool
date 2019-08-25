<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CARS.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="REGISTER_PANEL" runat="server" >
                    <div>
                        <asp:Label ID="REGISTER_NAME_TEXT" runat="server" Text="NAME"></asp:Label>
                        <asp:TextBox ID="REGISTER_NAME_INPUT" runat="server"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="REGISTER_EMAIL_TEXT" runat="server" Text="EMAIL:"></asp:Label>
                        <asp:TextBox ID="REGISTER_EMAIL_INPUT" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="REGISTER_PASSWORT_TEXT" runat="server" Text="PASSWORT:"></asp:Label>
                        <asp:TextBox ID="REGISTER_PASSWORT_INPUT" runat="server" TextMode="Password"></asp:TextBox>

                    </div>
                    <div>
                        <asp:Label ID="REGISTER_PASSWORDBESTÄTIGEN_TEXT" runat="server" Text="PASSWORT BESTÄTIGEN:"></asp:Label>
                        <asp:TextBox ID="REGISTER_PASSWORDBESTÄTIGEN_INPUT" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div>
                        <asp:CheckBox ID="REGISTER_AGB_GELESEN_CHECKBOX" runat="server" Text="AGB GELESEN" />
                    </div>
                    <div>
                    </div>
                    <asp:Button ID="REGISTER_REGISTRIEREN_BUTTON" runat="server" Text="REGISTRIEREN" OnClick="REGISTER_REGISTRIEREN_BUTTON_Click" />
                    <asp:Button ID="REGISTER_LOGIN_BUTTON" runat="server" Text="LOGIN" OnClick="REGISTER_LOGIN_BUTTON_Click" />

                </asp:Panel>

        <asp:Panel ID="ERROR_PANEL" runat="server" Visible="False">
                    <asp:Label ID="ERROR_TEXT" runat="server" Text="ERROR"></asp:Label>

                </asp:Panel>
    </div>
    </form>
</body>
</html>
