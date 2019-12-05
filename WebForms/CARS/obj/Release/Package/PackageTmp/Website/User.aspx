<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CARS.Website.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
    <link rel="stylesheet" type="text/css" href="../user.css" />
</head>
<body>
        <form id="form2" runat="server">
       
         <div>
            
                <div class="header">

                    <img src="../image/logo.png" />
                    <asp:Button ID="Username_Label" runat="server" Text="Username" OnClick="Username_Label_Click"/>

                    <div class="inner_header">
                        <div class="name_container">
                            <h1>Bewertungen</h1>


                        </div>
                    </div>

                    <ul class="navigation">
                        <a href="Hauptmenü">
                            <li>Zurück</li>
                        </a>
                        <a href="Chat">
                            Chat
                        <asp:Image ID="CHAT_MARKER" runat="server" src="../image/baseline_notification_important_black_18dp.png" Visible="true"/>    
                        </a>
                    </ul>
                </div>

                <!---<header>
                    <asp:Image ID="Logo_Image" runat="server" />
                    <asp:Label ID="Username_Lable" runat="server" Text="Username"></asp:Label>

                    


                </header>--->

        </div> 
            <div id="MAIN_PANEL">

            <div id="User_MAIN">

                <div style="">

                <div style="display:flex; justify-content:center; width:100%; align-content:center;">
                    <asp:Panel ID="RATE1" runat="server" CssClass="RATING_STAR">
                        <asp:Panel ID="RATE1_Full" runat="server" CssClass="fullStar" />
                    </asp:Panel>
                    <asp:Panel ID="RATE2" runat="server" CssClass="RATING_STAR">
                        <asp:Panel ID="RATE2_Full" runat="server" CssClass="fullStar"/>

                    </asp:Panel>
                    <asp:Panel ID="RATE3" runat="server" CssClass="RATING_STAR">
                        <asp:Panel ID="RATE3_Full" runat="server" CssClass="fullStar"/>

                    </asp:Panel>
                    <asp:Panel ID="RATE4" runat="server" CssClass="RATING_STAR">
                        <asp:Panel ID="RATE4_Full" runat="server" CssClass="fullStar"/>

                    </asp:Panel>
                    <asp:Panel ID="RATE5" runat="server" CssClass="RATING_STAR">
                        <asp:Panel ID="RATE5_Full" runat="server" CssClass="fullStar"/>

                    </asp:Panel>
                    </div>
                                <!--<asp:Image ID="AVATAR" runat="server" ImageUrl="~/image/person-placeholder.jpg" style="float:left; width:100%;clear:both;"/>-->

                    <asp:Panel ID="USER_LABEL_PANEL" runat="server">

                        <asp:Label ID="Username_Text" runat="server" Text="Username" style="width:100%; float:left;clear:both; text-align:center;"></asp:Label>

                    </asp:Panel>

                    <!--<asp:Panel ID="FORM_PANEL" runat="server">


                        <form id="FORM_UPLAODPROFILEPIC" action="http://carpool.bplaced.net/Carpool/uploadImages.php" method="post" enctype="multipart/form-data">
                          <label>Wählen Sie Bild aus.
                            <input name="datei" type="file"/> 
                          </label>  
                          <button>Bestätigen</button>
                        </form>
                    </asp:Panel>--->

                
        
        
            </div>  </div>     
                <asp:Panel ID="Rating_Panel" runat="server">
            
                </asp:Panel>
        </div> 

    </form>
</body>
</html>
