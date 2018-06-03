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
    public partial class Img_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["picid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["picid"].ToString());
                    PictureBll.deleteid(id);
                    BindView();
                }
            }
        }
        //绑定图片数据
        private void BindView()
        {
            ListView1.DataSource = PictureBll.all();
            ListView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList_Class.SelectedIndex == 0)
            {
                BindView();
            }
            else if (DropDownList_Class.SelectedIndex == 1)
            {
                ListView1.DataSource = PictureBll.bzAll();
                ListView1.DataBind();
            }
            else
            {
                ListView1.DataSource = PictureBll.yhAll();
                ListView1.DataBind();
            }
        }
    }
}