using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using BFS_Model;
using BFS_BLL;

namespace BFS_UI.Admin_BMS
{
    public partial class Live_Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void AddLive_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = @"~/Img_Live/" + FileUpload_img.PostedFile.FileName;
            Live live = new Live();
            live.Live_Title1 = txtName.Text.Trim();
            live.Live_Img1 = @"~/Img_Live/" + FileUpload_img.PostedFile.FileName;
            live.Live_Url1 = txtUrl.Text.Trim();
            try
            {
                if (LiveBll.addlive(live) == 1)
                {
                    txtName.Text = "";
                    txtUrl.Text = "";
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('添加失败！');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }
    }
}