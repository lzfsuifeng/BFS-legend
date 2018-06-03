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
    public partial class Img_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["picid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["picid"].ToString());
                    SqlDataReader dt = PictureBll.IDselcet(id);
                    dt.Read();
                    if (dt != null)
                    {
                        Name.Text = dt[1].ToString().Trim();
                        Image1.ImageUrl = dt[2].ToString().Trim();
                        picclass.Text = dt[3].ToString().Trim();
                    }
                }
            }
        }
        //修改图片信息
        protected void UpdatePic_Click(object sender, EventArgs e)
        {
            Picture pic = new Picture();
            pic.Pic_ID1= Convert.ToInt32(Request.QueryString["picid"].ToString());
            pic.Pic_Name1 = Name.Text.Trim();
            //pic.Pic_ImgUrl1 = @"Img_Pic\" + FileUpload_img.PostedFile.FileName;
            pic.Pic_Class1 = DropDownList_Class.SelectedIndex == 0 ? "壁纸" : "原画";
            if (DropDownList_Class.SelectedIndex == 1)
            {
                pic.Pic_ImgUrl1 = @"~/Img_Pic/yh/" + FileUpload_img.PostedFile.FileName;
            }
            else
            {
                pic.Pic_ImgUrl1 = @"~/Img_Pic/bz/" + FileUpload_img.PostedFile.FileName;
            }
            try
            {
                if (PictureBll.updatepic(pic) == 1)
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