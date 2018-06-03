using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BFS_UI
{
    public partial class Admin1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            times.Text= DateTime.Now.ToShortDateString().ToString();
            if (Session["username"] != null)
            {
                userName.Text = Session["username"].ToString();
                img.ImageUrl = Session["img"].ToString();
            }
        }
    }
}