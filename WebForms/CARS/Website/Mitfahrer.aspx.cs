using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class Mitfahrer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MITFAHRER_ALLEFAHRTEN_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlleFahrten");

        }

        protected void MITFAHRER_MEINESITZPLÄTZE_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("MeineMitfahrten");

        }
    }
}