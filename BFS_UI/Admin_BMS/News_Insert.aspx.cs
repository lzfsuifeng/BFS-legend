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
    public partial class News_Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径  
            fileBrowser.SetupCKEditor(txtContent);
        }

        protected void AddNews_Click(object sender, EventArgs e)
        {
            News news = new News();
            news.News_Title1 = txtTitle.Text.Trim();
            news.News_Time1= DateTime.Now;
            news.News_Conentent1 = txtContent.Text;
            news.News_Num1 = int.Parse(txtNum.Text.Trim());
            news.News_Img1= @"~/Img_News/" + FileUpload1.PostedFile.FileName;
            news.News_Class1 = DropDownList_Class.SelectedItem.Text;
            try
            {
                if (NewsBll.Addnews(news)==1)
                {
                    txtContent.Text = "";
                    txtTitle.Text = "";
                    txtNum.Text = "";
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('添加失败！');</script>");

                }
            }
            catch(Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }

        }
    }
}