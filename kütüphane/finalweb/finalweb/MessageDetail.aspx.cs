using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class MessageDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FINALEntities db = new FINALEntities();
            int m = int.Parse(Request.QueryString["ID"]);
            var message = db.CONTACT.Find(m);
            TxtNameSurname.Text = message.NAMESURNAME;
            TxtMail.Text = message.MAIL;
            TxtTopic.Text = message.TOPIC;
            TxtMessage.Text = message.MESSAGE;
        }
    }
}