using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS.Website
{

    public class SearchFilter 
    {
        public int year, month, day;
        public int hour, minute;
        public string Start, End;
        public int timespan = 60;

        public bool useTime = false, useDate = false;

        public bool DoesFilterFit(string s)
        {
            bool b = true;
            System.Diagnostics.Debug.WriteLine(s);
            System.Diagnostics.Debug.WriteLine("test start" + Start);

            if (!string.IsNullOrWhiteSpace(Start) && !s.Split('|')[4].Contains(Start))
            {
                b = false;
                return false;

            }

            System.Diagnostics.Debug.WriteLine("test end" + Start);

            if (!string.IsNullOrWhiteSpace(End) && !s.Split('|')[5].Contains(End)) 
            {
                b = false;
                return false;

            }

            System.Diagnostics.Debug.WriteLine("use Time" + useTime);

            if (useTime)
            {
                System.Diagnostics.Debug.WriteLine("use Date" + useTime);

                if (!useDate)
                {

                    year = DateTime.Now.Year;
                    month = DateTime.Now.Month;
                    day = DateTime.Now.Day;
                }

                string[] data = s.Split('|');
                string time = data[data.Length - 1];
                DateTime dt1 = DateTime.Parse(time);
                DateTime dt2 = new DateTime(year, month, day, hour, minute, 0);

                TimeSpan diff = (dt2 - dt1).Duration();

                System.Diagnostics.Debug.WriteLine("time difference" + diff.TotalMinutes);


                if (diff.TotalMinutes > timespan)
                {
                    System.Diagnostics.Debug.WriteLine("time too far off");
                    b = false;
                    return false;
                }
            }

            if (useDate)
            {
                string[] data = s.Split('|');
                string time = data[data.Length - 1];
                DateTime dt1 = DateTime.Parse(time);

                if (dt1.Year != year || dt1.Month != month || dt1.Day != day) 
                {
                    b = false;
                    return false;
                }
            }

            return b;
        }

        public SearchFilter()
        { }

        public SearchFilter(int y, int mo, int d,int h, int m, string s, string e)
        {
            year = y; month = mo; day = d;
            hour = h; 
            minute = m; 
            Start = s; 
            End = e;
        }
        public SearchFilter(int y, int mo, int d,int h, int m, string s, string e, int t)
        {
            year = y; month = mo; day = d;
            hour = h;
            minute = m;
            Start = s;
            End = e;
            timespan = t;
        }

        
    }

    public partial class Suche : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Suchen_Button_Click(object sender, EventArgs e)
        {
            SearchFilter s = new SearchFilter();


            s.useDate = (Datum_TextBox.Text != "")?true:false;



            DateTime date;
            DateTime.TryParse(Datum_TextBox.Text, out date);

            if(s.useDate)
            {
                s.year = date.Year;
                s.month = date.Month;
                s.day = date.Day;
            }

            s.useTime = (Uhrzeit_TextBox.Text != "") ? true : false;
             if(s.useTime)
            {
                 s.hour = int.Parse(Uhrzeit_TextBox.Text.Split(':')[0]);

                s.minute = int.Parse(Uhrzeit_TextBox.Text.Split(':')[1]);
            }
            
            s.Start = Abfahrtsort_TextBox.Text;
            s.End = Zielort_TextBox.Text;
                
                
            

            HttpContext.Current.Session["search_filter"] = s;

            Response.Redirect("AlleFahrten");




        }
    }
}