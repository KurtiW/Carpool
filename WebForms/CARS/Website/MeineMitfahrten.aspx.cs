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
        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();

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
                    b.Text = "Rate";
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

                }
            }
        }
    }
}