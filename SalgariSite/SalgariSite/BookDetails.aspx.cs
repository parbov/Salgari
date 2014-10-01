using SalgariSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalgariSite
{
    public partial class BookDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public Book SelectBook()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                var db = new ApplicationDbContext();
                return db.Books.Find(Convert.ToInt32(Request.QueryString["Id"].ToString()));
            }
            return null;
        }
    }
}