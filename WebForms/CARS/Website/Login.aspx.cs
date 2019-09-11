using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public static class CarsUtility
    {
        public static string user;
        public static CARS.Website.Chat.Chat_Info current;
        public static string reloadchat;

        public static string main_url = "http://carpool.bplaced.net/Carpool/";
        public static string PullWebRequest(string url)
        {
            string html = string.Empty;


            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(main_url + url);

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream))
            {
                html = reader.ReadToEnd();
            }

            return html;
        }

        //Response.Redirect("Chat");
        public static void Redirect(string url)
        {
             
        }
    }


    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LOGIN_LOGIN_BUTTON_Click(object sender, EventArgs e)
        {


            string EMail = LOGIN_EMAIL_INPUT.Text;
            string Password = LOGIN_PASSWORD_INPUT.Text;
            //Test Login 

            string text = CarsUtility.PullWebRequest(string.Format("login.php?email={0}& password={1}", EMail, Password));
            if (text == "query error")
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Logindaten sind falsch";
                return;
            }
            HttpContext.Current.Session["user_id"] = int.Parse(text.Split('|')[0]);
            HttpContext.Current.Session["user_name"] = text.Split('|')[1];


            //falls Test erfolgreich

            Response.Redirect("Hauptmenü");
        }

        protected void LOGIN_REGISTER_BUTTON_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register");

        }


    }
}