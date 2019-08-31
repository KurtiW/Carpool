<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CARS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../login.css"/ rel="stylesheet"/>
</head>
<body>
    <form id="form1"  runat="server">
        <div>
            <asp:Panel ID="LOGIN_PANEL" runat="server" Visible="True">
                <div class="left_container">

                    <img class="leftImage" src="../image/logo.png"/>
                </div>
                <div class="right_container">
                    <div class="inner_container">
                        <img src="../image/logo.png"/>

                        <h1>Welcome Back</h1>
                        <h2>Sign in to continue</h2>
                        <div class="field">
                            <asp:Label ID="LOGIN_EMAIL_TEXT" CssClass="description" runat="server" Text="EMAIL"></asp:Label>
                            <asp:TextBox ID="LOGIN_EMAIL_INPUT" CssClass="inputfield" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="field">
                            <asp:Label ID="LOGIN_PASSWORD_TEXT" CssClass="description" runat="server" Text="PASSWORT"></asp:Label>
                            <asp:TextBox ID="LOGIN_PASSWORD_INPUT" CssClass="inputfield" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="flex">
                            <asp:Button ID="LOGIN_LOGIN_BUTTON" CssClass="main_button" runat="server" Text="LOGIN" OnClick="LOGIN_LOGIN_BUTTON_Click" />

                            <div class="bottom_line">
                             <span>Neuer Nutzer?</span>
                            <asp:Button ID="LOGIN_REGISTER_BUTTON" CssClass="main_button" runat="server" Text="REGISTRIEREN" OnClick="LOGIN_REGISTER_BUTTON_Click" />

                            </div>
                        </div>
                        </div>
                </div>
                
            </asp:Panel>
            <asp:Panel ID="ERROR_PANEL" runat="server" Visible="False">
                <asp:Label ID="ERROR_TEXT" runat="server" Text="ERROR"></asp:Label>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
