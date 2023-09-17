using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalweb
{
    public partial class MyFavorites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FINALEntities db = new FINALEntities();
            Repeater1.DataSource = db.ABOUT.ToList();
            Repeater1.DataBind();

            if (Session["id"] != null)
            {
                Labusrname.Text = Session["id"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButLogout_Click(object sender, EventArgs e)
        {
            FINALEntities db = new FINALEntities();
            Repeater1.DataSource = db.ABOUT.ToList();
            Repeater1.DataBind();

            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
}