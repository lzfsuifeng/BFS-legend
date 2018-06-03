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
    public partial class User_Select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            SqlDataReader dt=UsersBll.select(name);
            dt.Read();
            if (dt != null)
            {
                Name.Text = dt[1].ToString().Trim();
                Password.Text = dt[2].ToString().Trim();
                Tel.Text = dt[3].ToString().Trim();
                Sex.Text = dt[4].ToString().Trim();
                Vip.Text = dt[6].ToString().Trim();
                Admin.Text = dt[7].ToString().Trim();
                img.ImageUrl = dt[5].ToString().Trim();
                BindView();
            }
        }

       
        //绑定数据
        protected void BindView()
        {
            ListView1.DataSource = UsersBll.all();
            ListView1.DataBind();
        }
    }
}