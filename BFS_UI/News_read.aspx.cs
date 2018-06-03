using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BFS_Model;
using BFS_BLL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace BFS_UI
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        static bool flag;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            int newsid;
            if (!IsPostBack)
            {
                flag = true;
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
                        //txtClass.Text=dt[6].ToString();
                        string img1 = dt[4].ToString().Trim();   
                    }
                    BingNC();
                    //显示总共多少评论
                    Label1.Text = News_CommentaryBll.news_allncnum(newsid).ToString();
                }
            }
        }
        //评论
        protected void pinglun_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                try
                {
                    int newsid = Convert.ToInt32(Request.QueryString["newsid"].ToString());
                    News_Commentary nc = new News_Commentary();
                    nc.NC_News_ID1 = newsid;
                    nc.NC_User_Name1 = Session["username"].ToString();
                    nc.NC_Content1 = FCKeditor1.Text;
                    nc.NC_Time1 = DateTime.Now;
                    if (News_CommentaryBll.news_addnc(nc) == 1)
                    {
                        FCKeditor1.Text = "";
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('评论成功！');", true);
                        BingNC();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('评论失败！');", true);
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('对不起，请先登录！');", true);
            }

        }
        //回复
        protected void huifu_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["username"] != null)
            {
                try
                {
                    News_Comment_Back ncb = new News_Comment_Back();
                    ncb.CB_Content1 = (bt.Parent.FindControl("FCKeditor2") as TextBox).Text;
                    ncb.CN_Time1 = DateTime.Now;
                    ncb.CB_Users_Name1= Session["username"].ToString();
                    ncb.CB_NC_ID1= Int32.Parse((bt.Parent.FindControl("HiddenField1") as HiddenField).Value); 

                    if ( News_Comment_BackBLL.cbadd(ncb)== 1)
                    {
                        FCKeditor1.Text = "";
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('回复评论成功！');", true);
                        flag = true;
                        BingNC();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('回复评论失败！');", true);
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('对不起，请先登录！');", true);
            }
        }
        //绑定新闻评论数据
        protected void BingNC()
        {
            int newsid = Convert.ToInt32(Request.QueryString["newsid"].ToString());
            DataTable nc = News_CommentaryBll.news_allnc(newsid);
            if (nc != null)
            {
                listView1.DataSource = nc;
                listView1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton bt = (LinkButton)sender;
            Panel pl = (bt.Parent.FindControl("Panel1") as Panel);
            pl.Visible = !pl.Visible;
            flag = !flag;

        }
        protected void listView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            Repeater rpt = e.Item.FindControl("Repeater2") as Repeater;//找到里层的repeate;
            int ncbid = Convert.ToInt32(((Label)e.Item.FindControl("Label3")).Text);

            rpt.DataSource = News_Comment_BackBLL.cball(ncbid);
            rpt.DataBind();
        }
        protected void DataPager1_PreRender(object sender, EventArgs e)
        {
            if (flag == true)
            {
                BingNC();
            }
        }
    }
}