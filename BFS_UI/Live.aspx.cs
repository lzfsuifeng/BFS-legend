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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
            bingLive();
        }
        //绑定主播直播间数据
        protected void bingLive()
        {
            DataTable bl = LiveBll.allLive();
            if (bl != null)
            {
                live_view.DataSource = bl;
                live_view.DataBind(); 
            }
        }
    }
}