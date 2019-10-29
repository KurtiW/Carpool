using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARS
{
    public partial class AlleFahrten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();


            CARS.Website.SearchFilter s = HttpContext.Current.Session["search_filter"] as CARS.Website.SearchFilter;


            string text = CarsUtility.PullWebRequest(string.Format("getSeats.php?id={0}", HttpContext.Current.Session["user_id"]));
            

            string[] entrys = text.Split(';');


            foreach (string entry_ in entrys)
            {
                string entry = entry_.Replace("<br>", "");
                if (string.IsNullOrEmpty(entry))
                    continue;



                if (!s.DoesFilterFit(entry))
                    continue;
                if (entry.Split('|')[2] != HttpContext.Current.Session["user_id"].ToString())
                {
                    
                    TableRow entryPanel = new TableRow();
                 
                /*TableCell id = new TableCell();
                id.Text = entry.Split('|')[0];
                entryPanel.Controls.Add(id);

                */   

                    /*

                    TableCell userid = new TableCell();
                userid.Text = entry.Split('|')[2];
                entryPanel.Controls.Add(userid);*/

                

                    TableCell start = new TableCell();
                start.Text = entry.Split('|')[4];
                entryPanel.Controls.Add(start);

                    TableCell end = new TableCell();
                end.Text = entry.Split('|')[5];
                entryPanel.Controls.Add(end);

                    TableCell departure = new TableCell();
                departure.Text = entry.Split('|')[6].Substring(0,16);
                entryPanel.Controls.Add(departure);

                    TableCell name = new TableCell();
                    name.Text = entry.Split('|')[3];
                    entryPanel.Controls.Add(name);

                    TableCell count = new TableCell();
                    count.Text = entry.Split('|')[1];
                    entryPanel.Controls.Add(count);

                    TableCell controls1 = new TableCell();
                    entryPanel.Controls.Add(controls1); 
                    
                    TableCell controls2 = new TableCell();
                    entryPanel.Controls.Add(controls2);

                    Button c = new Button();
                    c.Click += delegate
                    {
                        System.Diagnostics.Debug.WriteLine("Click: " + entry.Split('|')[7]);

                        if (entry.Split('|')[7] == "-1")
                        {
                            HttpContext.Current.Session["reloadchat"] = CarsUtility.PullWebRequest(string.Format("createChat.php?id={0}&user={1}", HttpContext.Current.Session["user_id"], entry.Split('|')[2]));
                        }
                        else
                        {
                            HttpContext.Current.Session["reloadchat"] = entry.Split('|')[7];

                        }

                        Response.Redirect("Chat");

                    };
                    c.Text = "Chat";
                    controls1.Controls.Add(c);

                    Button f = new Button();
                    f.Click += delegate
                    {
                        CarsUtility.PullWebRequest(string.Format("takeSeat.php?ride={1}&user={0}", HttpContext.Current.Session["user_id"], entry.Split('|')[0]));
                        Response.Redirect("AlleFahrten");
                    };
                    f.Text = "Buchen";
                    controls2.Controls.Add(f);

                    Table1.Rows.Add(entryPanel);

                }




                //Fahrt buchen


            }
        }
    }
}