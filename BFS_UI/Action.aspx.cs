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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int actid;
            Repeater1.DataSource = ActBll.allact();
            Repeater1.DataBind();
            if (!IsPostBack)
            {
                if (Request.QueryString["actid"] != null)
                {
                    actid = Convert.ToInt32(Request.QueryString["actid"].ToString());
                    SqlDataReader dt = ActBll.select(actid);
                    dt.Read();
                    if (dt != null)
                    {
                        txtTitle.Text = dt[1].ToString().Trim();
                        txtTime.Text = dt[4].ToString().Trim();
                        txtContent.Text = dt[2].ToString();
                    }
                }
            }
        }
    }
}