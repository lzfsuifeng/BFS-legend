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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //NewsClass = Request.QueryString["classname"].ToString();
                DataTable zt = NewsBll.zatan();
                NewsLD.DataSource = zt;
                NewsLD.DataBind();
                if (zt != null)
                {
                    News_ClassName2.Text = zt.Rows[0][6].ToString();
                }
            }
        }
    }
}