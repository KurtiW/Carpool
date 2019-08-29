using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class AlleFahrten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = CarsUtility.PullWebRequest(string.Format("getSeats.php"));


            string[] entrys = text.Split(';');


            foreach (string entry_ in entrys)
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;
                Panel entryPanel = new Panel();
                MITFAHRER_ALLEFAHRTEN_PANEL.Controls.Add(entryPanel);

                Label id = new Label();
                id.Text = entry.Split('|')[0];
                entryPanel.Controls.Add(id);

                Label count = new Label();
                count.Text = entry.Split('|')[1];
                entryPanel.Controls.Add(count);

                Label userid = new Label();
                userid.Text = entry.Split('|')[2];
                entryPanel.Controls.Add(userid);

                Label name = new Label();
                name.Text = entry.Split('|')[3];
                entryPanel.Controls.Add(name);

                Label start = new Label();
                start.Text = entry.Split('|')[4];
                entryPanel.Controls.Add(start);

                Label end = new Label();
                end.Text = entry.Split('|')[5];
                entryPanel.Controls.Add(end);

                Label departure = new Label();
                departure.Text = entry.Split('|')[6];
                entryPanel.Controls.Add(departure);


                Button c = new Button();
                c.Click += delegate
                {
                    CarsUtility.PullWebRequest(string.Format("createChat.php?id={0}&user={1}", HttpContext.Current.Session["user_id"], userid.Text));
                };

                c.Text = "Chat";
                entryPanel.Controls.Add(c);


                //Fahrt buchen

                Button f = new Button();
                f.Click += delegate
                {
                    CarsUtility.PullWebRequest(string.Format("takeSeat.php?ride={1}&user={0}", HttpContext.Current.Session["user_id"], id.Text));

                };
                f.Text = "Buchen";
                entryPanel.Controls.Add(f);
            }
        }
    }
}