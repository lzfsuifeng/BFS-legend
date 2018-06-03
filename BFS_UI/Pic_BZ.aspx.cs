using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BFS_Model;
using BFS_BLL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BFS_UI
{
    public partial class Pic_BZ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["picid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["picid"].ToString());
                    SqlDataReader dt = PictureBll.IDselcet(id);
                    dt.Read();
                    if (dt != null)
                    {
                        string img1 = dt[2].ToString().Trim();
                        Image1.ImageUrl = img1;
                    }
                }
            }
        }
    }
}