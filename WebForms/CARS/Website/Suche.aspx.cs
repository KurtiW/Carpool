﻿using System;
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

            if (string.IsNullOrWhiteSpace(s))
            {
                b = false;
                return false;

            }

            if (!string.IsNullOrWhiteSpace(Start) && !s.Split('|')[4].ToLower().Contains(Start.ToLower()))
            {
                b = false;
                return false;

            }


            if (!string.IsNullOrWhiteSpace(End) && !s.Split('|')[5].ToLower().Contains(End.ToLower())) 
            {
                b = false;
                return false;

            }


            if (useTime)
            {

                if (!useDate)
                {

                    year = DateTime.Now.Year;
                    month = DateTime.Now.Month;
                    day = DateTime.Now.Day;
                }

                string[] data = s.Split('|');
                string time = data[6];

                System.Diagnostics.Debug.WriteLine(s);

                DateTime dt1 = DateTime.Parse(time);
                DateTime dt2 = new DateTime(year, month, day, hour, minute, 0);

                TimeSpan diff = (dt2 - dt1).Duration();



                if (diff.TotalMinutes > timespan)
                {
                    b = false;
                    return false;
                }
            }

            if (useDate)
            {
                string[] data = s.Split('|');
                string time = data[6];
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