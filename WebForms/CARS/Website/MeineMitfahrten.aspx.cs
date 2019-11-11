using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS.Website
{
    public partial class MeineMitfahrten : System.Web.UI.Page
    {
        protected void Username_Label_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["view_user"] = "";
            Response.Redirect("User");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();


            if (CarsUtility.PullWebRequest(string.Format("CheckChatUpdates.php?id={0}", HttpContext.Current.Session["user_id"].ToString())) == "MESSAGES AVAILABLE")
            {
                CHAT_MARKER.Visible = true;
            }
            else
            {
                CHAT_MARKER.Visible = false;
            }

            string text = CarsUtility.PullWebRequest(string.Format("mySeats.php?user={0}", HttpContext.Current.Session["user_id"]));


            string[] entrys = text.Split(';');

            bool rate = false;
            bool pending = false;


            foreach (string entry_ in entrys)
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;


                if (DateTime.Now > DateTime.Parse(entry.Split('|')[6]))
                {
                    if (!rate)
                    {
                        //Rate Label
                        rate = true;

                        Label RateLabel = new Label();
                        RateLabel.Text = "Bewerte diese Fahrten:";
                        RateLabel.CssClass = "Big_Label";
                        MEINEMITFAHRTEN_PANEL.Controls.Add(RateLabel);

                    }



                    Panel entryPanel = new Panel();
                    entryPanel.CssClass = "Panel";
                    MEINEMITFAHRTEN_PANEL.Controls.Add(entryPanel);

                    


                    Button b = new Button();
                    b.Text = "Bewerten";
                    b.CssClass = "button";
                    //b.Click += new EventHandler(RejectSeat);
                    b.Click += delegate
                    {
                        HttpContext.Current.Session["command"] = "rejectSeat";
                        HttpContext.Current.Session["ratingUserID"] = entry.Split('|')[0];
                        HttpContext.Current.Session["user"] = entry.Split('|')[2]; 
                        Response.Redirect("Rating");

                    };
                    entryPanel.Controls.Add(b);

                    Button c = new Button();
                    c.Click += delegate
                    {

                        if (entry.Split('|')[8] == "-1")
                        {
                            HttpContext.Current.Session["reloadchat"] = CarsUtility.PullWebRequest(string.Format("createChat.php?id={0}&user={1}", HttpContext.Current.Session["user_id"], entry.Split('|')[8]));
                        }

                        else
                        {
                            HttpContext.Current.Session["reloadchat"] = entry.Split('|')[8];

                        }

                        Response.Redirect("Chat");

                    };
                    c.Text = "Chat";
                    c.CssClass = "button";

                    entryPanel.Controls.Add(c);

                    Label Start = new Label();
                    Start.Text = entry.Split('|')[4];
                    Start.CssClass = "Start_Label";
                    entryPanel.Controls.Add(Start);

                    Label End = new Label();
                    End.Text = entry.Split('|')[5];
                    End.CssClass = "End_Label";
                    entryPanel.Controls.Add(End);

                    Label Time = new Label();
                    Time.Text = entry.Split('|')[6].Substring(0, 16);
                    Time.CssClass = "Time_Label";
                    entryPanel.Controls.Add(Time);

                    Label UserName = new Label();
                    UserName.Text = entry.Split('|')[7];
                    UserName.CssClass = "UserName_Label";
                    entryPanel.Controls.Add(UserName);

                    Button profileButton = new Button();
                    profileButton.CssClass = "profileButton";
                    profileButton.Text = entry.Split('|')[7];

                    profileButton.Click += delegate
                    {

                        HttpContext.Current.Session["view_user"] = entry.Split('|')[2];
                        Response.Redirect("User");

                    };
                    UserName.Controls.Add(profileButton);


                }
                else
                {

                    if (!pending)
                    {
                        //Rate Label
                        pending = true;

                        Label RateLabel = new Label();
                        RateLabel.Text = "Die nächsten Fahrten:";
                        RateLabel.CssClass = "Big_Label";
                        MEINEMITFAHRTEN_PANEL.Controls.Add(RateLabel);

                    }


                    Panel entryPanel = new Panel();
                    entryPanel.CssClass = "Panel";
                    MEINEMITFAHRTEN_PANEL.Controls.Add(entryPanel);

                    Button b = new Button();
                    b.Text = "x";
                    b.CssClass = "button";
                    //b.Click += new EventHandler(RejectSeat);
                    b.Click += delegate
                    {
                        CarsUtility.PullWebRequest(string.Format("rejectSeat.php?id={0}", entry.Split('|')[0]));
                        Response.Redirect("MeineMitfahrten");

                    };
                    entryPanel.Controls.Add(b);

                    Label Start = new Label();
                    Start.Text = entry.Split('|')[4];
                    Start.CssClass = "Start_Label";
                    entryPanel.Controls.Add(Start);

                    Label End = new Label();
                    End.Text = entry.Split('|')[5];
                    End.CssClass = "End_Label";
                    entryPanel.Controls.Add(End);

                    Label Time = new Label();
                    Time.Text = entry.Split('|')[6].Substring(0, 16);
                    Time.CssClass = "Time_Label";
                    entryPanel.Controls.Add(Time);

                    Label UserName = new Label();
                    UserName.Text = entry.Split('|')[7];
                    UserName.CssClass = "UserName_Label";
                    entryPanel.Controls.Add(UserName);

                    Button profileButton = new Button();
                    profileButton.CssClass = "profileButton";
                    profileButton.Text = entry.Split('|')[7];

                    profileButton.Click += delegate
                    {

                        HttpContext.Current.Session["view_user"] = entry.Split('|')[2];
                        Response.Redirect("User");

                    };
                    UserName.Controls.Add(profileButton);

                }
            }
        }
    }
}