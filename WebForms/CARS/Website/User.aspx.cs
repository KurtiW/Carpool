using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS.Website
{
    public partial class User : System.Web.UI.Page
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

            string text = CarsUtility.PullWebRequest(string.Format("viewUser.php?id={0}", (HttpContext.Current.Session["view_user"].ToString() == "") ? HttpContext.Current.Session["user_id"].ToString() : HttpContext.Current.Session["view_user"].ToString()));

            if (text == "NO DATA AVAILABLE")
            {
                return;
            }

            HttpContext.Current.Session["view_user"] = "";
            string[] entrys = text.Split('$');

            string user = entrys[0];

            Username_Text.Text = user.Split('|')[2];

            float rating = float.Parse(user.Split('|')[0].Replace('.',','));
            rating = (float)Math.Round(rating);

            System.Diagnostics.Debug.WriteLine(rating);

            RATE1.CssClass = "RATING_STAR active";
            RATE2.CssClass = (rating > 1) ? "RATING_STAR active" : "RATING_STAR";
            RATE3.CssClass = (rating > 2) ? "RATING_STAR active" : "RATING_STAR";
            RATE4.CssClass = (rating > 3) ? "RATING_STAR active" : "RATING_STAR";
            RATE5.CssClass = (rating > 4) ? "RATING_STAR active" : "RATING_STAR";

            foreach (string entry_ in entrys[1].Split(';'))
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;

                Panel review = new Panel();
                review.CssClass = "review_Panel";
                Rating_Panel.Controls.Add(review);

                Panel starPanel = new Panel();
                starPanel.CssClass = "Star_Panel";
                review.Controls.Add(starPanel);

                for (int i = 0; i < 5; i++)
                {

                    Panel img = new Panel();
                    img.CssClass = (i < int.Parse(entry.Split('|')[1]))?"Star full":"Star";
                    starPanel.Controls.Add(img);
                }

                Label username = new Label();
                username.Text = entry.Split('|')[4];
                username.CssClass = "review_Name";
                review.Controls.Add(username);

                Label reviewText = new Label();
                reviewText.Text = entry.Split('|')[2];
                reviewText.CssClass = "review_Text";
                review.Controls.Add(reviewText);

                

            }
        }
    }
}