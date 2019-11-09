using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS.Website
{
    public partial class Hauptmenü : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();


            if (CarsUtility.PullWebRequest(string.Format("CheckChatUpdates.php?id={0}", HttpContext.Current.Session["user_id"].ToString())) == "MESSAGES AVAILABLE")
            {
                SetMarkerVisible();

            }
            else 
            {
                CHAT_MARKER.Visible = false;

            }

                    }

        public void ReloadPage()
        {
            Response.Redirect("Hauptmenü");

        }


        public void SetMarkerVisible()
        {
            CHAT_MARKER.Visible = true;
        }

        public bool MarkerActive()
        {
            return CHAT_MARKER.Visible;
        }

        protected void MARKER_UPDATE_Tick(object sender, EventArgs e)
        {
            if (MarkerActive() == false && CarsUtility.PullWebRequest(string.Format("CheckChatUpdates.php?id={0}", HttpContext.Current.Session["user_id"])) == "MESSAGES AVAILABLE")
            {
                ReloadPage();
            }

        }
    }


}