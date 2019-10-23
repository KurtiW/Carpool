using System;
using System.Timers;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace CARS.Website
{


    public partial class Chat : System.Web.UI.Page
    {
        List<Chat_Info> info = new List<Chat_Info>();
        

        public class Chat_Info
        {
            public string chat_id;
            public string chat_name;
            public string chat_createdat;
            public string last_update;


            public List<Chat_User> users = new List<Chat_User>();
            public List<Message> history = new List<Message>();


            public string GetUserName(string id)
            {

                foreach (Chat_User u in users)
                {
                    if (u.chat_user_id == id)
                    {
                        return u.chat_user_name;
                    }
                }

                return null;
            }

            public Chat_Info(string chat)
            {
                chat_id = chat.Split('|')[0];
                chat_name = chat.Split('|')[1];
                chat_createdat = chat.Split('|')[2];
                last_update = chat.Split('|')[3];


                if (chat_name == "") 
                {
                    string users_string = CarsUtility.PullWebRequest(string.Format("viewChatUser.php?id={0}", chat_id)).Replace("<br>", "");

                    chat_name = "";

                    foreach (string user in users_string.Split(';'))
                    {
                        if (string.IsNullOrWhiteSpace(user))
                            continue;
                        Chat_User userObj = new Chat_User(user);

                        if (userObj.chat_user_id.ToString() != HttpContext.Current.Session["user_id"].ToString())
                        {
                            chat_name += userObj.chat_user_name + " ";
                        }

                        users.Add(userObj);
                    }
                    

                }
            }




            public class Chat_User
            {
                public string chat_user_index;
                public string chat_user_id;
                public string chat_user_name;


                public Chat_User(string user) 
                {
                    chat_user_index = user.Split('|')[0];
                    chat_user_id = user.Split('|')[1];
                    chat_user_name = user.Split('|')[2];
                }

                
            }

            public class Message
            {
                public string id;
                public string user_id;
                public string message;
                public string time;


                public Message(string m)
                {
                    id = m.Split('|')[0];
                    user_id = m.Split('|')[1];
                    message = m.Split('|')[2];
                    time = m.Split('|')[3];

                }

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Username_Label.Text = HttpContext.Current.Session["user_name"].ToString();

            CarsUtility.user = HttpContext.Current.Session["user_id"].ToString();


            string chats = CarsUtility.PullWebRequest(string.Format("viewChats.php?id={0}", HttpContext.Current.Session["user_id"]));
            chats = chats.Replace("<br>", "");

            info.Clear();

            foreach(string chat in chats.Split(';'))
            {
                if (string.IsNullOrEmpty(chat))
                    continue;

                info.Add(new Chat_Info(chat));

               
            }

            foreach (Chat_Info ci in info)
            {
                Panel chat_list_panel = new Panel();
                chat_list_panel.CssClass = "chatoption_con";

                List.Controls.Add(chat_list_panel);

                Button chatoption = new Button();
                chatoption.Text = ci.chat_name;
                chatoption.CssClass += " chatoption";

                chatoption.Click += delegate
                {
                    HttpContext.Current.Session["chat_id"] = ci.chat_id;
                    CarsUtility.current = ci;

                    foreach (Panel p in List.Controls)
                    {
                        Button b = p.Controls[0] as Button;
                        b.CssClass = b.CssClass.Replace("active_chat", "");
                    }

                    chatoption.CssClass += " active_chat";

                    ShowChat(ci);
                };

                if(CarsUtility.reloadchat == ci.chat_id)
                {
                    chatoption.CssClass += " active_chat";

                                    CarsUtility.reloadchat = "";

                    HttpContext.Current.Session["chat_id"] = ci.chat_id;
                    CarsUtility.current = ci;
                    ShowChat(ci);
                }
                chat_list_panel.Controls.Add(chatoption);


            }
        }

        public void ShowChat(Chat_Info c)
        {


            System.Timers.Timer t = new System.Timers.Timer();
            t.Interval = 5000;
            t.Elapsed += delegate
            {

                string last_change = CarsUtility.PullWebRequest(string.Format("lastChatupdate.php?id={0}", c.chat_id)).Replace("<br>", "");
                if (CarsUtility.current.last_update != last_change)
                {
                    CarsUtility.reloadchat = CarsUtility.current.chat_id;
                    ShowChat(CarsUtility.current);
                }

            };
            t.Enabled = false;


            string chat_history = CarsUtility.PullWebRequest(string.Format("viewChat.php?id={0}", CarsUtility.current.chat_id)).Replace("<br>", "");
            System.Diagnostics.Debug.WriteLine(chat_history);
            CarsUtility.current.history.Clear();
            System.Diagnostics.Debug.WriteLine("history cleared");

            foreach(string message in chat_history.Split(';'))
            {
                if (string.IsNullOrWhiteSpace(message))
                    continue;
                CarsUtility.current.history.Add(new Chat_Info.Message(message));
            }

            DateTime lastMessage = DateTime.MinValue;

            foreach (Chat_Info.Message m in CarsUtility.current.history)
            {
                DateTime messageTime = DateTime.Parse(m.time);

                if (messageTime.Date != lastMessage.Date)
                {
                    lastMessage = messageTime;
                    Panel date = new Panel();
                    date.CssClass = "Date";
                    History.Controls.Add(date);

                    Label d = new Label();
                    d.CssClass = "DateLabel";

                    //Weniger als 5 Tage
                    if (new TimeSpan(DateTime.Now.Ticks - messageTime.Ticks).Days < 5)
                    {
                        string[] days = new string[] 
                        {
                            "Montag","Dienstag","Mittwoch", "Donnerstag", "Freitag", "Samstag", "Sonntag"
                        };



                        d.Text = days[((int) messageTime.DayOfWeek) -1];

                    }
                    else 
                    {

                        string[] months = new string[] 
                        {
                            "Januar","Februar","März", "April", "Mai", "Juni", "Juli", "August","September","Oktober","November","Dezember"
                        };

                        string a = "0" + messageTime.Date.Day;
                        string b = "0" + messageTime.Date.Month;
                        d.Text = a.Substring(a.Length - 3, 2) + ". " + months[messageTime.Date.Month-1]; 
                    }

                    date.Controls.Add(d);
                }

                System.Diagnostics.Debug.WriteLine("instance message : " + m.message);

                Panel message = new Panel();
                message.CssClass = "msg_panel " + ((m.user_id == CarsUtility.user) ? "me" : "somebody");
                History.Controls.Add(message);

                Label time = new Label();
                time.CssClass = "TimeLabel";
                time.Text = m.time.Substring(10, 6);
                message.Controls.Add(time);

                Label user = new Label();
                user.CssClass = "UserLabel";
                user.Text = c.GetUserName(m.user_id);
                message.Controls.Add(user);

               

                Label message_text = new Label();
                message_text.CssClass = "MessageLabel";
                message_text.Text = m.message;
                message.Controls.Add(message_text);
            }
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Message_IF.Text))
            CarsUtility.PullWebRequest(string.Format("sendMessage.php?text={0}&author={1}&chat={2}", Message_IF.Text, HttpContext.Current.Session["user_id"], HttpContext.Current.Session["chat_id"]));
            Message_IF.Text = "";
            ShowChat(CarsUtility.current);
            Message_IF.Text = "";

        }
    }
}