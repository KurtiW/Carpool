<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CARS.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="../login.css"/ rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="REGISTER_PANEL" runat="server" >
                        <div class="left_container">

                    <img class="leftImage" src="../image/logo.jpg"/>
                </div>
                <div class="right_container">
                    <div class="inner_container">
                        <img src="../image/logo.jpg"/>

                        <h1>Welcome</h1>
                        <h2>Register to continue</h2>
                        <div class="field">
                            <asp:Label ID="REGISTER_NAME_TEXT" CssClass="description" runat="server" Text="NAME"></asp:Label>
                            <asp:TextBox ID="REGISTER_NAME_INPUT" CssClass="inputfield" runat="server"></asp:TextBox>
                        </div>

                        <div class="field">
                            <asp:Label ID="REGISTER_EMAIL_TEXT" CssClass="description" runat="server" Text="EMAIL:"></asp:Label>
                            <asp:TextBox ID="REGISTER_EMAIL_INPUT" CssClass="inputfield" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="field">
                            <asp:Label ID="REGISTER_PASSWORT_TEXT" CssClass="description" runat="server" Text="PASSWORT:"></asp:Label>
                            <asp:TextBox ID="REGISTER_PASSWORT_INPUT" CssClass="inputfield" runat="server" TextMode="Password"></asp:TextBox>

                        </div>
                        <div class="field">
                            <asp:Label ID="REGISTER_PASSWORDBESTÄTIGEN_TEXT" CssClass="description" runat="server" Text="PASSWORT BESTÄTIGEN:"></asp:Label>
                            <asp:TextBox ID="REGISTER_PASSWORDBESTÄTIGEN_INPUT" CssClass="inputfield" runat="server" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="checkbox">
                            <asp:CheckBox ID="REGISTER_AGB_GELESEN_CHECKBOX" CssClass="inputfield" runat="server" Text="AGB GELESEN" />
                        </div>
                                                       <asp:Button ID="REGISTER_REGISTRIEREN_BUTTON" runat="server" Text="REGISTRIEREN" OnClick="REGISTER_REGISTRIEREN_BUTTON_Click" />

                            <div class="bottom_line">


                                <span>Schon einen Acount?</span>

                                <asp:Button ID="REGISTER_LOGIN_BUTTON" runat="server" Text="LOGIN" OnClick="REGISTER_LOGIN_BUTTON_Click" />
                        </div></div></div>
                </asp:Panel>
                            </div>                            


        <asp:Panel ID="ERROR_PANEL" runat="server" Visible="False">
                    <asp:Label ID="ERROR_TEXT" runat="server" Text="ERROR"></asp:Label>

                </asp:Panel>
    </div>
    </form>
</body>
</html>
