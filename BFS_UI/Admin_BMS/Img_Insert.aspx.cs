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
    public partial class Img_Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addPic_Click(object sender, EventArgs e)
        {
            Picture pic = new Picture();
            pic.Pic_Name1 = txtName1.Text.Trim();
            pic.Pic_Class1= DropDownList_Class.SelectedIndex == 0 ? "壁纸" : "原画";
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
                if (PictureBll.addpic(pic) == 1)
                {
                    txtName1.Text = "";
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