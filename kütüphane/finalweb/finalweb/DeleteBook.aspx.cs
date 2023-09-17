using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class DeleteAuthor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FINALEntities db = new FINALEntities();
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var ktp = db.ABOUT.Find(x);
            db.ABOUT.Remove(ktp);
            db.SaveChanges();
            Response.Redirect("MyFavorites.aspx");
        }
    }
}