using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                List.Controls.Add(chat_list_panel);

                Button chatoption = new Button();
                chatoption.Text = ci.chat_name;
                chatoption.Click += delegate
                {
                    ShowChat(ci);
                };
                chat_list_panel.Controls.Add(chatoption);


            }
        }

        public void ShowChat(Chat_Info c)
        {
            string chat_history = CarsUtility.PullWebRequest(string.Format("viewChat.php?id={0}", c.chat_id)).Replace("<br>", "");

            foreach(string message in chat_history.Split(';'))
            {
                if (string.IsNullOrWhiteSpace(message))
                    continue;
                c.history.Add(new Chat_Info.Message(message));
            }

            foreach(Chat_Info.Message m in c.history)
            {
                Panel message = new Panel();
                History.Controls.Add(message);

                Label user = new Label();
                user.Text = c.GetUserName(m.user_id);
                message.Controls.Add(user);

                Label time = new Label();
                time.Text = m.time;
                message.Controls.Add(time);

                Label message_text = new Label();
                message_text.Text = m.message;
                message.Controls.Add(message_text);
            }
        }
    }
}