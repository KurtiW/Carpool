using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class NeueFahrt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();

        }

        protected void FAHRTERSTELLEN_FAHERTERSTELLEN_BUTTON_Click(object sender, EventArgs e)
        {
            string Year = FAHRTERSTELLEN_UHRZEIT_ABFAHRT_CALENDER.SelectedDate.Year.ToString();
            string Month = FAHRTERSTELLEN_UHRZEIT_ABFAHRT_CALENDER.SelectedDate.Month.ToString().PadLeft(2, '0');
            string Day = FAHRTERSTELLEN_UHRZEIT_ABFAHRT_CALENDER.SelectedDate.Day.ToString().PadLeft(2, '0');
            string Hour = FAHRTERSTELLEN_UHRZEIT_ABFAHRTSZEIT_STUNDE_INPUT.Text.PadLeft(2, '0');
            string Minute = FAHRTERSTELLEN_UHRZEIT_ABFAHRTSZEIT_MINUTE_INPUT.Text.PadLeft(2, '0');


            string Start = FAHRTERSTELLEN_ABFAHRTSORT_INPUT.Text;
            string End = FAHRTERSTELLEN_ZIELORT_INPUT.Text;

            string Places = FAHRTERSTELLEN_FREIESITZPLÄTZE_INPUT.Text;

            if (string.IsNullOrEmpty(Year))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wähle ein Jahr aus.";
                return;
            }

            if (string.IsNullOrEmpty(Month))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wähle einen Monat aus.";
                return;
            }

            if (string.IsNullOrEmpty(Day))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wähle einen Tag aus.";
                return;
            }

            if (string.IsNullOrEmpty(Hour))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wähle eine Zeit aus.";
                return;
            }

            if (string.IsNullOrEmpty(Minute))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wähle eine Zeit aus.";
                return;
            }

            if (string.IsNullOrEmpty(Places))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wählen Sie die Anzahl der Sitsplätze aus.";
                return;
            }

            if (string.IsNullOrEmpty(Start))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wählen Sie einen Startort aus.";
                return;
            }
            if (string.IsNullOrEmpty(End))
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = "Wählen Sie ein Ziel aus.";
                return;
            }
            
            
 


            //offerSeat.php?user=5&count=4&start=Ettenb%C3%BCttel&end=Sassenburg&time=2019-08-09%2000:00:00
            string text = CarsUtility.PullWebRequest(string.Format("offerSeat.php?user={0}&count={1}&start={2}&end={3}&time={4}-{5}-{6} {7}:{8}:00", HttpContext.Current.Session["user_id"], Places, Start, End, Year, Month, Day, Hour, Minute));
            if (text != "Query successfull")
            {
                ERROR_PANEL.Visible = true;
                ERROR_TEXT.Text = text;
                return;
            }

            Response.Redirect("Fahrer");



        }
    }
}