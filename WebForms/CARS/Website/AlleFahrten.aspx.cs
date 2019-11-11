using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class AlleFahrten : System.Web.UI.Page
    {
        protected void Username_Label_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["view_user"] = "";
            Response.Redirect("User");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();


            CARS.Website.SearchFilter s = HttpContext.Current.Session["search_filter"] as CARS.Website.SearchFilter;

            if (CarsUtility.PullWebRequest(string.Format("CheckChatUpdates.php?id={0}", HttpContext.Current.Session["user_id"].ToString())) == "MESSAGES AVAILABLE")
            {
                CHAT_MARKER.Visible = true;
            }
            else 
            {
                CHAT_MARKER.Visible = false;
            }

            string text = CarsUtility.PullWebRequest(string.Format("getSeats.php?id={0}", HttpContext.Current.Session["user_id"]));
            

            string[] entrys = text.Split(';');


            foreach (string entry_ in entrys)
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;



                if (!s.DoesFilterFit(entry))
                    continue;
                if (entry.Split('|')[2] != HttpContext.Current.Session["user_id"].ToString())
                {
                    
                    TableRow entryPanel = new TableRow();
                 
                /*TableCell id = new TableCell();
                id.Text = entry.Split('|')[0];
                entryPanel.Controls.Add(id);

                */   

                    /*

                    TableCell userid = new TableCell();
                userid.Text = entry.Split('|')[2];
                entryPanel.Controls.Add(userid);*/

                

                    TableCell start = new TableCell();
                start.Text = entry.Split('|')[4];
                entryPanel.Controls.Add(start);

                    TableCell end = new TableCell();
                end.Text = entry.Split('|')[5];
                entryPanel.Controls.Add(end);

                    TableCell departure = new TableCell();
                departure.Text = entry.Split('|')[6].Substring(0,16);
                entryPanel.Controls.Add(departure);

                    TableCell name = new TableCell();
                    name.Text = entry.Split('|')[3];
                    entryPanel.Controls.Add(name);

                    Button profileButton = new Button();
                    profileButton.CssClass = "profileButton";
                    profileButton.Text = entry.Split('|')[3];

                    profileButton.Click += delegate
                    {

                        HttpContext.Current.Session["view_user"] = entry.Split('|')[2];
                        Response.Redirect("User");

                    };
                    name.Controls.Add(profileButton);


                    TableCell rating = new TableCell();
                    float r = float.Parse(entry.Split('|')[8].Replace(',', '.'), CultureInfo.InvariantCulture);
                    if (r == 0)
                    {
                        rating.Text = "n.a.";
                    }
                    else
                    {
                        for (int i = 0; i < 5; i++)
                        {
                            Panel star_bot = new Panel();
                            star_bot.CssClass = "RATING_STAR";
                            rating.Controls.Add(star_bot);
                            Panel star_top = new Panel();
                            star_top.CssClass = "fullStar";

                            if (i == Math.Floor(r))
                            {
                                star_top.Attributes.Add("style", string.Format("clip-path:inset(0px {0}% 0px 0px);", ((1 - (r % 1f)) * 100f).ToString().Replace(',', '.')));
                            }
                            else
                            {
                                if (i < r)
                                {
                                    star_top.Attributes.Add("style", string.Format("clip-path:inset(0px {0}% 0px 0px);", 0));
                                }
                                else
                                {
                                    star_top.Attributes.Add("style", string.Format("clip-path:inset(0px {0}% 0px 0px);", 100));

                                }
                            }
                            star_bot.Controls.Add(star_top);

                        }
                    }

                    entryPanel.Controls.Add(rating);

                    TableCell count = new TableCell();
                    count.Text = entry.Split('|')[1];
                    entryPanel.Controls.Add(count);

                    TableCell controls1 = new TableCell();
                    entryPanel.Controls.Add(controls1); 
                    
                    TableCell controls2 = new TableCell();
                    entryPanel.Controls.Add(controls2);

                    Button c = new Button();
                    c.Click += delegate
                    {
                        System.Diagnostics.Debug.WriteLine("Click: " + entry.Split('|')[7]);

                        if (entry.Split('|')[7] == "-1")
                        {
                            HttpContext.Current.Session["reloadchat"] = CarsUtility.PullWebRequest(string.Format("createChat.php?id={0}&user={1}", HttpContext.Current.Session["user_id"], entry.Split('|')[2]));
                        }
                        else
                        {
                            HttpContext.Current.Session["reloadchat"] = entry.Split('|')[7];

                        }

                        Response.Redirect("Chat");

                    };
                    c.Text = "Chat";
                    controls1.Controls.Add(c);

                    Button f = new Button();
                    f.Click += delegate
                    {
                        CarsUtility.PullWebRequest(string.Format("takeSeat.php?ride={1}&user={0}", HttpContext.Current.Session["user_id"], entry.Split('|')[0]));
                        Response.Redirect("AlleFahrten");
                    };
                    f.Text = "Buchen";
                    controls2.Controls.Add(f);

                    Table1.Rows.Add(entryPanel);

                }




                //Fahrt buchen


            }
        }
    }
}