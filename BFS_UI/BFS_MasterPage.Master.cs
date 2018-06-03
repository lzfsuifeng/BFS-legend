using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BFS_UI
{
    public partial class BFS_MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
                img.ImageUrl=Session["img"].ToString();
            }else
            {
                Label1.Text = "游客";
            }
        }
    }
}