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
    public partial class BBS_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            int id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["bbsid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["bbsid"].ToString());
                        if (BBSBll.deletebbs(id) == 1)
                        {
                            BindView();

                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除失败！');</script>");
                        }
                    }
                    if (Request.QueryString["jhid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["jhid"].ToString());
                        if (BBSBll.jinghu(id) == 1)
                        {
                            BindView();

                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('设置成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('设置失败！');</script>");
                        }
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        //设置精华帖子
        protected void btn_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            int id = Int32.Parse((bt.Parent.FindControl("HiddenField1") as HiddenField).Value);
            try
            {
                if (BBSBll.jinghu(id) == 1)
                {
                    BindView();

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('设置成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('设置失败！');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }

        }
        //绑定数据
        //绑定数据
        protected void BindView()
        {
            ListView1.DataSource = BBSBll.allbbs();
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