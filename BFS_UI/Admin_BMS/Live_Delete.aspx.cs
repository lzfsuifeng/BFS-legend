using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BFS_Model;
using BFS_BLL;


namespace BFS_UI.Admin_BMS
{
    public partial class Live_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            binglive();
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["liveid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["liveid"].ToString());
                    LiveBll.deletelive(id);
                    binglive();
                }
            }
        }
        //绑定数据
        protected void binglive()
        {
            ListView1.DataSource = LiveBll.allLive();
            ListView1.DataBind();
        }
    }
}