using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class Announcements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            FINALEntities db = new FINALEntities();
            Repeater1.DataSource = db.ANNOUNCEMENTS.ToList();
            Repeater1.DataBind();
        }
    }
}