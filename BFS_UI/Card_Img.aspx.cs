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


namespace BFS_UI
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["cardid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["cardid"].ToString());
                    SqlDataReader dt = CardBll.idcard(id);
                    dt.Read();
                    if (dt != null)
                    {
                        txtName.Text = dt[1].ToString().Trim();
                        txtCost.Text = dt[2].ToString().Trim();
                        txtRd.Text = dt[3].ToString().Trim();
                        txtHp.Text = dt[4].ToString().Trim();
                        txtAp.Text = dt[5].ToString().Trim();
                        txtEffect.Text = dt[6].ToString().Trim();
                        txtCh.Text = dt[7].ToString().Trim();
                        txtRace.Text = dt[8].ToString().Trim();
                        txtOccupation.Text = dt[9].ToString().Trim();
                        txtOff.Text = dt[10].ToString().Trim();
                        img.ImageUrl = dt[11].ToString().Trim();
                    }
                }
            }
        }
    }
}