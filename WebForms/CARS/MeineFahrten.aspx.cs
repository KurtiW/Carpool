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

            //http://carpool.bplaced.net/Carpool/myCommitment.php?user=5
            string text = CarsUtility.PullWebRequest(string.Format("myCommitment.php?user={0}", HttpContext.Current.Session["user_id"]));


            string[] entrys = text.Split('$');



            foreach (string entry in entrys)
            {
                string info = entry.Split('§')[0];

                Panel entryPanel = new Panel();
                MEINEFAHRTEN_PANEL.Controls.Add(entryPanel);

                Panel head = new Panel();
                MEINEFAHRTEN_PANEL.Controls.Add(head);

                Panel bot = new Panel();
                MEINEFAHRTEN_PANEL.Controls.Add(bot);

                Label Start = new Label();
                Start.Text = info.Split('|')[1];
                head.Controls.Add(Start);

                Label End = new Label();
                End.Text = info.Split('|')[2];
                head.Controls.Add(End);

                Label Time = new Label();
                Time.Text = info.Split('|')[3];
                head.Controls.Add(Time);

                string[] passengers = entry.Split('§')[1].Split(';');
                foreach (string passenger_ in passengers)
                {
                    string passenger = passenger_.Replace("<br>", "");
                    if (!string.IsNullOrEmpty(passenger))
                    {
                        Panel p = new Panel();
                        bot.Controls.Add(p);

                        Label id = new Label();
                        id.Text = passenger.Split('|')[0];
                        p.Controls.Add(id);

                        Label userid = new Label();
                        userid.Text = passenger.Split('|')[1];
                        p.Controls.Add(userid);

                        Label name = new Label();
                        name.Text = passenger.Split('|')[2];
                        p.Controls.Add(name);

                        Label rating = new Label();
                        rating.Text = passenger.Split('|')[3];
                        p.Controls.Add(rating);

                        Button b = new Button();
                        b.Text = "x";
                        //b.Click += new EventHandler(RejectSeat);
                        b.Click += delegate 
                        {
                            CarsUtility.PullWebRequest(string.Format("rejectSeat.php?id={0}", id.Text));
                            Response.Redirect("MeineFahrten");

                        };
                        p.Controls.Add(b);

                    }
                }
            }
        }
    }
}