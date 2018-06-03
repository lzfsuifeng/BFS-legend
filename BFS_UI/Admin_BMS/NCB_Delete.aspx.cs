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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindncb();
            int id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["ncbid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["ncbid"].ToString());
                        if (News_Comment_BackBLL.deletencb(id) == 1)
                        {
                            Bindncb();
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
        protected void Bindncb()
        {
            ListView1.DataSource = News_Comment_BackBLL.allncb();
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