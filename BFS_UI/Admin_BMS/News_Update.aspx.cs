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
    public partial class News_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int newsid;
            if (!IsPostBack)
            {
                if (Request.QueryString["newsid"] != null)
                {
                    newsid = Convert.ToInt32(Request.QueryString["newsid"].ToString());
                    SqlDataReader dt = NewsBll.read(newsid);
                    dt.Read();
                    if (dt != null)
                    {
                        txtTitle.Text = dt[1].ToString().Trim();
                        txtTime.Text = string.Format("{0:yyyy-MM-dd hh:mm}", dt[2]);
                        txtContent.Text = dt[3].ToString();
                        txtImg1.Text = dt[4].ToString().Trim();
                       
                        txtNum.Text = dt[5].ToString().Trim();
                        txtClass.Text = dt[6].ToString().Trim();
                    }
                }
            }
        }
        //修改新闻
        protected void UpdateNews_Click(object sender, EventArgs e)
        {
            News news = new News();
            news.News_ID1= Convert.ToInt32(Request.QueryString["newsid"].ToString());
            news.News_Title1 = txtTitle.Text.Trim();
            news.News_Time1 = DateTime.Parse(DateTime.Now.ToShortDateString().ToString());
            news.News_Conentent1 = txtContent.Text;
            news.News_Num1 = int.Parse(txtNum.Text.Trim());
            news.News_Img1 = @"~/Img_News/" + FileUpload1.PostedFile.FileName;

            news.News_Class1 = DropDownList_Class.SelectedItem.Text.Trim();
            try
            {
                if (NewsBll.Updatenews(news) == 1)
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