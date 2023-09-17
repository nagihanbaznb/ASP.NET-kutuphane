using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class NewAuthor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        FINALEntities db = new FINALEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            ABOUT t = new ABOUT();
            t.BOOKSILOVE = TextBox1.Text;
            t.AUTHORSILOVE = TextBox2.Text;
            db.ABOUT.Add(t);
            db.SaveChanges();
            Response.Redirect("MyFavorites.aspx");
        }
    }
}