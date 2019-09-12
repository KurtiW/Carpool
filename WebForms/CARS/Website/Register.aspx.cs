using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void REGISTER_LOGIN_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login");

        }

        protected void REGISTER_REGISTRIEREN_BUTTON_Click(object sender, EventArgs e)
        {
            string EMail = REGISTER_EMAIL_INPUT.Text;
            string Password = REGISTER_PASSWORT_INPUT.Text;
            string Username = REGISTER_NAME_INPUT.Text;

            if (REGISTER_PASSWORT_INPUT.Text.Length < 6)
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Passwort ist zu kurz.";
                return;
            }

            if (REGISTER_PASSWORT_INPUT.Text != REGISTER_PASSWORDBESTÄTIGEN_INPUT.Text)
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Passwörter sind nicht identisch.";
                return;
            }



            if (REGISTER_AGB_GELESEN_CHECKBOX.Checked == false)
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Du musst den AGB zustimmen.";
                return;
            }

            string text = CarsUtility.PullWebRequest(string.Format("register.php?email={0}& password={1}&user={2}", EMail, Password, Username));
            if (text != "Query successfull")
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = text;
                return;
            }
            text = CarsUtility.PullWebRequest(string.Format("login.php?email={0}& password={1}", EMail, Password));
            HttpContext.Current.Session["user_id"] = int.Parse(text.Split('|')[0]);
            HttpContext.Current.Session["user_name"] = text.Split('|')[1];


            //falls Test erfolgreich



            Response.Redirect("Hauptmenü");
        }
    }
}