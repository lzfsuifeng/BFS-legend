using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BFS_BLL;
using BFS_Model;

namespace BFS_UI
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        static bool flag;
        protected void Page_Load(object sender, EventArgs e)
        {
            //查询有关各职业帖子数量.
            num.Text = BBSBll.bbs_num().ToString();
            num1.Text = BBSBll.class_num("德鲁伊").ToString();
            num2.Text = BBSBll.class_num("猎人").ToString();
            num3.Text = BBSBll.class_num("法师").ToString();
            num4.Text = BBSBll.class_num("圣骑士").ToString();
            num5.Text = BBSBll.class_num("牧师").ToString();
            num6.Text = BBSBll.class_num("战士").ToString();
            num7.Text = BBSBll.class_num("潜行者").ToString();
            num8.Text = BBSBll.class_num("萨满祭祀").ToString();
            num9.Text = BBSBll.class_num("术士").ToString();

            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径  
            fileBrowser.SetupCKEditor(txtContent);



            Bindjinghua();
            //绑定帖子内容
            int id;
            if (!IsPostBack)
            {
                flag = true;
                if (Request.QueryString["bbsid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["bbsid"].ToString());
                    SqlDataReader dt = BBSBll.selectbbs(id);
                    dt.Read();
                    if (dt != null)
                    {
                        txtTitle.Text = dt[1].ToString().Trim();
                        txtTime.Text = string.Format("{0:yyyy-MM-dd hh:mm}", dt[2]);
                        Content.Text = dt[4].ToString();
                        Image1.ImageUrl = dt[3].ToString().Trim();
                        txtClass.Text = dt[7].ToString().Trim();
                        txtName.Text = dt[5].ToString().Trim();
                    }
                    BingBC();
                    //显示总共多少评论
                    Label1.Text = BBS_CommentBll.num(id).ToString();
                }
            }

        }
        //发表评论
        protected void pinglun_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                try
                {
                    int id = Convert.ToInt32(Request.QueryString["bbsid"].ToString());
                    BBS_Comment bc = new BBS_Comment();
                    bc.BC_BBS_ID1 = id;
                    bc.BC_Users_Name1 = Session["username"].ToString();
                    bc.BC_Content1 =txtContent.Text;
                    bc.BC_Time1 = DateTime.Now;
                    if (BBS_CommentBll.addbc(bc) == 1)
                    {
                        txtContent.Text = "";
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('评论成功！');", true);
                        BingBC();
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
                    BBS_Comment_Back bcb = new BBS_Comment_Back();
                    bcb.BCB_BC_ID1 = Int32.Parse((bt.Parent.FindControl("HiddenField1") as HiddenField).Value);
                    bcb.BCB_Content1 = (bt.Parent.FindControl("txtContent") as TextBox).Text;
                    bcb.BCB_Time1 = DateTime.Now;
                    bcb.BCB_Users_Name1 = Session["username"].ToString();
                    if (BBS_Comment_BackBll.addbcb(bcb) == 1)
                    {
                        txtContent.Text = "";
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('回复评论成功！');", true);
                        flag = true;
                        BingBC();
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
        ////多级回复
        //protected void huifu1_Click(object sender, EventArgs e)
        //{
        //    Button bt = (Button)sender;
        //    if (Session["username"] != null)
        //    {
        //        try
        //        {
        //            Back_Comment_Back bcb = new Back_Comment_Back();
        //            bcb.BCBID1 = Int32.Parse((bt.Parent.FindControl("HiddenField2") as HiddenField).Value);
        //            bcb.BCB_Comment1 = (bt.Parent.FindControl("txtContent") as TextBox).Text;
        //            bcb.BCB_Time1 = DateTime.Now;
        //            bcb.BCB_Users_Name1 = Session["username"].ToString();
        //            if (Back_Comment_BackBll.addbcb(bcb) == 1)
        //            {
        //                txtContent.Text = "";
        //                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('回复评论成功！');", true);
        //                flag = true;
        //                BingBC();
        //            }
        //            else
        //            {
        //                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('回复评论失败！');", true);
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("错误原因：" + ex.Message);
        //        }
        //    }
        //    else
        //    {
        //        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "updateScript", "alert('对不起，请先登录！');", true);
        //    }
        //}
        protected void BingBC()
        {
            int id = Convert.ToInt32(Request.QueryString["bbsid"].ToString());
            DataTable bc = BBS_CommentBll.bbsallbc(id);
            if (bc != null)
            {
                listView1.DataSource = bc;
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
        //protected void LinkButton2_Click(object sender, EventArgs e)
        //{
        //    LinkButton bt = (LinkButton)sender;
        //    Panel p2 = (bt.Parent.FindControl("Panel2") as Panel);
        //    p2.Visible = !p2.Visible;
        //    flag = !flag;

        //}
        //protected void listView2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    Repeater rpt = e.Item.FindControl("Repeater3") as Repeater;//找到里层的repeate;
        //    int bcbid = Convert.ToInt32(((Label)e.Item.FindControl("Label3")).Text);

        //    rpt.DataSource = BBS_Comment_BackBll.bcallbcb(bcbid);
        //    rpt.DataBind();
        //}
        protected void listView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            Repeater rpt = e.Item.FindControl("Repeater2") as Repeater;//找到里层的repeate;
            int bcbid = Convert.ToInt32(((Label)e.Item.FindControl("Label3")).Text);

            rpt.DataSource = BBS_Comment_BackBll.bcallbcb(bcbid);
            rpt.DataBind();
        }
        protected void DataPager1_PreRender(object sender, EventArgs e)
        {
            if (flag == true)
            {
                BingBC();
            }
        }

        //绑定前五的精华帖子
        protected void Bindjinghua()
        {
            jinghua.DataSource = BBSBll.top5cream();
            jinghua.DataBind();
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