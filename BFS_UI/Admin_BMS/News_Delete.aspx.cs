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
    public partial class News_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            int id;
            if (!IsPostBack)
            {           
                try
                {
                    if (Request.QueryString["newsid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["newsid"].ToString());
                        if (NewsBll.delete(id) == 1)
                        {
                            BindView();

                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除失败！');</script>");
                        }
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList_Class.SelectedIndex == 0)
            {
                ListView1.DataSource = NewsBll.luandou();
                ListView1.DataBind();
            }
            else if (DropDownList_Class.SelectedIndex == 1)
            {
                ListView1.DataSource = NewsBll.zatan();
                ListView1.DataBind();
            }
            else if (DropDownList_Class.SelectedIndex == 2)
            {
                ListView1.DataSource = NewsBll.banben();
                ListView1.DataBind();
            }
            else
            {
                ListView1.DataSource = NewsBll.kazu();
                ListView1.DataBind();
            }
        }
        //删除数据
        //protected void btnDelete_Click(object sender, EventArgs e)
        //{
        //    //Button bt = (Button)sender;
        //    //int newsid = Convert.ToInt32(((HiddenField)(bt.Parent.FindControl("HiddenField1"))).Value);
        //    //if (NewsBll.delete(newsid) > 0)
        //    //{
        //    //    ClientScript.RegisterStartupScript(this.GetType(), "message", "<script language='javascript' >alert('删除成功！');</script>");
        //    //    BindView();
        //    //}
            
        //}
        //绑定数据
        protected void BindView()
        {
            ListView1.DataSource = NewsBll.all();
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