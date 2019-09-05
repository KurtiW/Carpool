<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="CARS.Website.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" type="text/css" href="../chat.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">

            <asp:Panel ID="List" runat="server"></asp:Panel>
            <asp:Panel ID="History" runat="server">

            </asp:Panel>
            <asp:Panel ID="Input" runat="server">
                <asp:TextBox ID="Message_IF" runat="server" TextMode="MultiLine" ></asp:TextBox>
                <asp:Button ID="Send" runat="server" Text="Senden" />
            </asp:Panel>
        </div>

    
    </div>
    </form>
</body>
</html>
