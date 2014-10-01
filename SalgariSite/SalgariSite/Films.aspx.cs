using SalgariSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalgariSite
{
    public partial class Films : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new ApplicationDbContext();
            this.FilmsRepeater.DataSource = db.Films.ToList();
            this.DataBind();
        }

        
    }
}