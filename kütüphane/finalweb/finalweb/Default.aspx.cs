using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class Default : System.Web.UI.Page
    {
        FINALEntities db = new FINALEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.ABOUT.ToList();
            Repeater1.DataBind();
            Repeater2.DataSource = db.ABOUT.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.ANNOUNCEMENTS.ToList();
            Repeater3.DataBind();
            Repeater4.DataSource = db.ANNOUNCEMENTS.ToList();
            Repeater4.DataBind();
            Repeater5.DataSource = db.ANNOUNCEMENTS.ToList();
            Repeater5.DataBind();
            Repeater6.DataSource = db.BOOKSIREAD.ToList();
            Repeater6.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CONTACT t = new CONTACT();
            t.NAMESURNAME = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.TOPIC = TextBox3.Text;
            t.MESSAGE = TextBox4.Text;
            db.CONTACT.Add(t);
            db.SaveChanges();
        }
    }
}