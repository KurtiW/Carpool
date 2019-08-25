using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class Auswahl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AUSWAHL_USERNAME_TEXT.Text = HttpContext.Current.Session["user_name"].ToString();
        }

        protected void AUSWAHL_FAHRER_MITFAHRER_FAHRER_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fahrer");
        }

        protected void AUSWAHL_FAHRER_MITFAHRER_MITFAHRER_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mitfahrer");

        }
    }
}