using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class UpdateAuthor : System.Web.UI.Page
    {
        FINALEntities db = new FINALEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            if(Page.IsPostBack==false)
            {
                var deger = db.ABOUT.Find(x);
                TextBox1.Text = deger.BOOKSILOVE;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var deger = db.ABOUT.Find(x);
            deger.BOOKSILOVE = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("MyFavorites.aspx");
        }
    }
}