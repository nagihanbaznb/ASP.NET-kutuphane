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
    public partial class BooksIRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        

        }

        protected void gvBook_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(gvBook.SelectedIndex > -1)
            {
                veridoldur();
            }
        }
        public void veridoldur()
        {
            lblID.Text = gvBook.SelectedRow.Cells[1].Text;
            txtBook.Text = gvBook.SelectedRow.Cells[2].Text;
            txtAuthor.Text = gvBook.SelectedRow.Cells[3].Text;

            dsLove.DataBind();
            ddlLove.DataBind();
            ddlLove.SelectedValue = gvBook.SelectedRow.Cells[4].Text;
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            
            verileribosalt();
        }

        public void verileribosalt()
        {
            gvBook.SelectedIndex = -1;
            lblID.Text = "";
            txtBook.Text = "";
            txtAuthor.Text = "";
            ddlLove.SelectedIndex = 0;
            txtBook.Focus();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if(gvBook.SelectedIndex > -1)
            {
                if (dsBooks.Delete()>0)
                {
                    lblMessage.Text = "Record deleted.";
                    verileribosalt();
                }
            }
            else
            {
                lblMessage.Text = "Select record to delete.";
            }
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(gvBook.SelectedIndex > -1)
            {
                
                    if (dsBooks.Update() > 0)
                    {
                        lblMessage.Text = "Record updated.";
                        verileribosalt();

                    }
                
            }
            else
            {
                
                    if (dsBooks.Insert() > 0)
                    {
                        lblMessage.Text = "Record inserted.";
                        verileribosalt();
                    }
                
            }
        }
    }
}