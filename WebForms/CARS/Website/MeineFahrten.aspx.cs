using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class MeineFahrten : System.Web.UI.Page
    {
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

            //http://carpool.bplaced.net/Carpool/myCommitment.php?user=5
            string text = CarsUtility.PullWebRequest(string.Format("myCommitment.php?user={0}", HttpContext.Current.Session["user_id"]));


            string[] entrys = text.Split('$');



            foreach (string entry_ in entrys)
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;
                string info = entry.Split('§')[0];

                Panel entryPanel = new Panel();
                entryPanel.CssClass = "panel";
                MEINEFAHRTEN_PANEL.Controls.Add(entryPanel);

                Panel head = new Panel();
                head.CssClass = "head";
                entryPanel.Controls.Add(head);

                Panel bot = new Panel();
                bot.CssClass = "bot";
                entryPanel.Controls.Add(bot);

                Label Start = new Label();
                Start.Text = info.Split('|')[1];
                Start.CssClass = "start";
                head.Controls.Add(Start);

                Label End = new Label();
                End.Text = info.Split('|')[2];
                End.CssClass = "end";
                head.Controls.Add(End);

                Label Time = new Label();
                Time.Text = info.Split('|')[3].Substring(0,16);
                Time.CssClass = "time";
                head.Controls.Add(Time);

                Button b1 = new Button();
                b1.Text = "x";
                b1.CssClass = "button";
                //b.Click += new EventHandler(RejectSeat);
                b1.Click += delegate
                {
                    CarsUtility.PullWebRequest(string.Format("rejectRide.php?id={0}", info.Split('|')[0]));
                    Response.Redirect("MeineFahrten");

                };
                head.Controls.Add(b1);



                string[] passengers = entry.Split('§')[1].Split(';');
                foreach (string passenger_ in passengers)
                {
                    string passenger = passenger_.Replace("<br>", "");
                    if (!string.IsNullOrEmpty(passenger))
                    {
                        Panel p = new Panel();
                        p.CssClass = "p";
                        bot.Controls.Add(p);

                        /*Label id = new Label();
                        id.Text = passenger.Split('|')[0];
                        p.Controls.Add(id);

                        Label userid = new Label();
                        userid.Text = passenger.Split('|')[1];
                        p.Controls.Add(userid);*/

                        Label name = new Label();
                        name.Text = passenger.Split('|')[2];
                        name.CssClass = "name";
                        p.Controls.Add(name);

                        Button profileButton = new Button();
                        profileButton.CssClass = "profileButton";
                        profileButton.Text = passenger.Split('|')[2];

                        profileButton.Click += delegate
                        {

                            HttpContext.Current.Session["view_user"] = passenger.Split('|')[1];
                            Response.Redirect("User");

                        };
                        name.Controls.Add(profileButton);

                        /*Label rating = new Label();
                        rating.Text = (passenger.Split('|')[4] == "") ? "n. a." : passenger.Split('|')[4];
                        p.Controls.Add(rating);
                        rating.CssClass = "rating";*/


                        /*Button r = new Button();
                        r.Text = "Rate";
                        r.CssClass = "button";
                        //b.Click += new EventHandler(RejectSeat);
                        r.Click += delegate
                        {
                            CarsUtility.command = "rejectRide";
                            CarsUtility.ratingUserID = entry.Split('|')[0];
                            CarsUtility.user = entry.Split('|')[1];
                            Response.Redirect("Rating");

                        };
                        p.Controls.Add(r);*/

                        Button b = new Button();
                        b.Text = "x";
                        b.CssClass = "button2";

                        //b.Click += new EventHandler(RejectSeat);
                        b.Click += delegate 
                        {
                            CarsUtility.PullWebRequest(string.Format("rejectSeat.php?id={0}", passenger.Split('|')[0]));
                            Response.Redirect("MeineFahrten");

                        };
                        p.Controls.Add(b);

                        Button c = new Button();
                        c.Click += delegate
                        {

                            if (passenger.Split('|')[4] == "-1")
                            {
                                HttpContext.Current.Session["reloadchat"] = CarsUtility.PullWebRequest(string.Format("createChat.php?id={0}&user={1}", HttpContext.Current.Session["user_id"], passenger.Split('|')[1]));
                            }

                            else
                            {
                                HttpContext.Current.Session["reloadchat"] = passenger.Split('|')[4];

                            }

                            Response.Redirect("Chat");

                        };
                        c.Text = "Chat";
                        c.CssClass = "button3";

                        p.Controls.Add(c);

                    }
                }
            }
        }
    }
}