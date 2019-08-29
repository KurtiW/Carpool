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
            string text = CarsUtility.PullWebRequest(string.Format("mySeats.php?user={0}", HttpContext.Current.Session["user_id"]));


            string[] entrys = text.Split(';');



            foreach (string entry_ in entrys)
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;

                Panel entryPanel = new Panel();
                MEINEMITFAHRTEN_PANEL.Controls.Add(entryPanel);

                Panel head = new Panel();
                MEINEMITFAHRTEN_PANEL.Controls.Add(head);

                Panel bot = new Panel();
                MEINEMITFAHRTEN_PANEL.Controls.Add(bot);

                Label ID = new Label();
                ID.Text = entry.Split('|')[0];
                head.Controls.Add(ID);

                Label Seats = new Label();
                Seats.Text = entry.Split('|')[1];
                head.Controls.Add(Seats);

                Label UserID = new Label();
                UserID.Text = entry.Split('|')[2];
                head.Controls.Add(UserID);

                Label UserName = new Label();
                UserName.Text = entry.Split('|')[3];
                head.Controls.Add(UserName);

                Label Start = new Label();
                Start.Text = entry.Split('|')[4];
                head.Controls.Add(Start);

                Label End = new Label();
                End.Text = entry.Split('|')[5];
                head.Controls.Add(End);

                Label Time = new Label();
                Time.Text = entry.Split('|')[6];
                head.Controls.Add(Time);

                Button b = new Button();
                b.Text = "x";
                //b.Click += new EventHandler(RejectSeat);
                b.Click += delegate
                {
                    CarsUtility.PullWebRequest(string.Format("rejectSeat.php?id={0}", ID.Text));
                    Response.Redirect("MeineMitfahrten");

                };
                head.Controls.Add(b);
            }
        }
    }
}