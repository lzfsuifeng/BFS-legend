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
    public partial class Live_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["liveid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["liveid"].ToString());
                    SqlDataReader dt = LiveBll.selectlive(id);
                    dt.Read();
                    if (dt != null)
                    {
                        Name.Text = dt[1].ToString().Trim();
                        Image1.ImageUrl = dt[2].ToString().Trim();
                        Url.Text = dt[3].ToString().Trim();
                    }
                }
            }
        }
        //修改主播信息
        protected void UpdateLive_Click(object sender, EventArgs e)
        {
            Live live = new Live();
            live.Live_ID1 = Convert.ToInt32(Request.QueryString["liveid"].ToString());
            live.Live_Title1 = txtName1.Text.Trim();
            live.Live_Img1 = @"Img_News\" +FileUpload_img.PostedFile.FileName;
            live.Live_Url1 = txtUrl.Text.Trim();
            try
            {
                if (LiveBll.updatelive(live) == 1)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('修改成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('修改失败！');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }
    }
}