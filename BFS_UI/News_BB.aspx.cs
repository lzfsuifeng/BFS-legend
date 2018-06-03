using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BFS_BLL;
using BFS_Model;

namespace BFS_UI
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //NewsClass = Request.QueryString["classname"].ToString();
                DataTable bb = NewsBll.banben();
                NewsBB.DataSource = bb;
                NewsBB.DataBind();
                if (bb != null)
                {
                    News_ClassName3.Text = bb.Rows[0][6].ToString();
                }
            }
        }
    }
}