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
    public partial class Action_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindview();
            int id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["actid"] != null)
                    {
                        id =int.Parse( Request.QueryString["actid"].ToString());
                        ActBll.delete(id);
                        Bindview();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        //绑定数据
        protected void Bindview()
        {
            ListView1.DataSource = ActBll.allact();
            ListView1.DataBind();
        }
        //限定显示的字数
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