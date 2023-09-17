using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace finalweb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand sqlcomm = new SqlCommand("select * from [dbo].[LOGIN] where USERNAME=@USERNAME AND PASSWORD=@PASSWORD",sqlconn);
            sqlcomm.Parameters.AddWithValue("USERNAME", TxtUsername.Text);
            sqlcomm.Parameters.AddWithValue("PASSWORD", Txtpwd.Text);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            if(dt.Rows.Count>0)
            {
                Session["id"] = TxtUsername.Text;
                Response.Redirect("MyFavorites.aspx");
                Session.RemoveAll();
            }
            else
            {
                LitMsg.Text = "Username or Password Wrong!";
            }

        }
    }
}