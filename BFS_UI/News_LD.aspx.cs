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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {       
            if (!IsPostBack)
            {
                //NewsClass = Request.QueryString["classname"].ToString();
                DataTable ld = NewsBll.luandou();
                NewsLD.DataSource = ld ;
                NewsLD.DataBind();
                if (ld != null)
                {
                    News_ClassName.Text = ld.Rows[0][6].ToString();
                }
            }
        }
    }
}