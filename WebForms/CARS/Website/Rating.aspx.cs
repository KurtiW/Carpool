﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS.Website
{
    public partial class Rating : System.Web.UI.Page
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
        }

        protected void RATE1_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["rating"] = 1;
            Paint();
        }

        protected void RATE2_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["rating"] = 2;
            Paint();
        }

        protected void RATE3_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["rating"] = 3;
            Paint();
        }

        protected void RATE4_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["rating"] = 4;
            Paint();
        }

        protected void RATE5_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["rating"] = 5;
            Paint();
        }

        void Paint() 
        {
            RATE1.CssClass = "RATING_STAR active";
            RATE2.CssClass = ((int)HttpContext.Current.Session["rating"] > 1) ? "RATING_STAR active" : "RATING_STAR";
            RATE3.CssClass = ((int)HttpContext.Current.Session["rating"] > 2) ? "RATING_STAR active" : "RATING_STAR";
            RATE4.CssClass = ((int)HttpContext.Current.Session["rating"] > 3) ? "RATING_STAR active" : "RATING_STAR";
            RATE5.CssClass = ((int)HttpContext.Current.Session["rating"] > 4) ? "RATING_STAR active" : "RATING_STAR";

        }

        protected void SEND_Click(object sender, EventArgs e)
        {
            string id = HttpContext.Current.Session["ratingUserID"].ToString();
            
            CarsUtility.PullWebRequest(string.Format("rateUser.php?user={0}&author={1}&rating={2}&text={3}", HttpContext.Current.Session["user"].ToString(), HttpContext.Current.Session["user_id"], HttpContext.Current.Session["rating"].ToString(), COMMENT.Text));
            CarsUtility.PullWebRequest(string.Format(HttpContext.Current.Session["command"].ToString() + ".php?id={0}", id));
            Response.Redirect("Hauptmenü");

            //Send Feedback
        }
    }
}