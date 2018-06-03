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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindnc();
            int id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["ncid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["ncid"].ToString());
                        if (News_CommentaryBll.news_deletenc(id) == 1)
                        {
                            Bindnc();
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除删除失败！');</script>");
                        }

                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        //绑定数据
        protected void Bindnc()
        {
            ListView1.DataSource = News_CommentaryBll.allnc();
            ListView1.DataBind();
        }
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }
    }
}