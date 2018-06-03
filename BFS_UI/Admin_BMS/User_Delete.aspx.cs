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
    public partial class User_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            string usersname;
            if (!IsPostBack)
            {
                
                try
                {
                    if (Request.QueryString["usersname"] != null)
                    {
                        usersname = Request.QueryString["usersname"].ToString();
                        UsersBll.delete(usersname);
                        BindView();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                    }
                   
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        ////删除数据
        //protected void btnDelete_Click(object sender, EventArgs e)
        //{
            

        //}
        //绑定数据
        protected void BindView()
        {
            ListView1.DataSource = UsersBll.all();
            ListView1.DataBind();
        }
    }
}