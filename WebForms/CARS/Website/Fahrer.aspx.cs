using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class Fahrer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FAHRER_NEUEFAHRT_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("NeueFahrt");

        }

        protected void FAHRER_MEINEFAHRTEN_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("MeineFahrten");

        }
    }
}