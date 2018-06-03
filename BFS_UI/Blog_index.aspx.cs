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
    public partial class WebForm16 : System.Web.UI.Page
    {
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

            lookbbs.Visible = true;
            addbbs.Visible = false;
            zuce.Visible = false;

            BindBBS();
            Bindjinghua();
            if(Request.QueryString["jh"] != null)
            {
                bindju();
            }
            if (Request.QueryString["class"]!=null)
            {
                classBBS(Request.QueryString["class"]);
            }


            if (Request.QueryString["ft"] != null)
            {
                lookbbs.Visible = false;
                zuce.Visible = false;
                addbbs.Visible = true;
                if (Session["username"] != null)
                {
                    if (bool.Parse(Session["vip"].ToString()) == true)
                    {
                        Panel1.Visible = true;
                        Panel2.Visible = false;
                    }
                    else
                    {
                        Panel2.Visible = true;
                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先登录！');</script>");
                }
            }

            if (Request.QueryString["hy"] != null)
            {
                lookbbs.Visible = false;
                zuce.Visible = true;
                addbbs.Visible = false;
                if (Session["username"] != null)
                {
                    if (bool.Parse(Session["vip"].ToString()) == true)
                    {
                        Panel3.Visible = true;
                    }
                    else
                    {
                        Panel5.Visible = true;
                    }
                }
                else
                {
                    Panel4.Visible = true;
                }
            }
        }
        //根据返回的职业分类绑定数据
        protected void classBBS(string bbsclass)
        {
            BBSView.DataSource = BBSBll.classbbs(bbsclass);
            BBSView.DataBind();

        }


        //绑定全部帖子数据
        protected void BindBBS()
        {
            BBSView.DataSource = BBSBll.allbbs();
            BBSView.DataBind();
        }
        //绑定全部精华帖
        protected void bindju()
        {
            BBSView.DataSource = BBSBll.creambbs();
            BBSView.DataBind();
        }
        //绑定前五的精华帖子
        protected void Bindjinghua()
        {
            jinghua.DataSource = BBSBll.top5cream();
            jinghua.DataBind();
        }
        //发帖
        protected void Button1_Click(object sender, EventArgs e)
        {
            BBS bbs = new BBS();
            bbs.BBS_Title1 = txtTitle1.Text.Trim();
            bbs.BBS_Users_Name1 = Session["username"].ToString();
            bbs.BBS_Time1 = DateTime.Now;
            bbs.BBS_Content1 = txtContent.Text;
            bbs.BBS_Class1 = DropDownList_occ.SelectedItem.Text;
            bbs.BBS_Cream1 = "否";
            bbs.BBS_Img1 = @"~/Img_BBS/" + FileUpload_img.PostedFile.FileName;
            try
            {
                if (BBSBll.addbbs(bbs) == 1)
                {
                    txtContent.Text = "";
                    txtTitle1.Text = "";
                    BindBBS();
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('发布成功！');</script>");

                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('发布失败！');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }
        //模糊搜索帖子
        protected void Button1_Click1(object sender, EventArgs e)
        {

            BBSView.DataSource = BBSBll.momuselect(txttitle.Text.Trim());
            BBSView.DataBind();
        }

        protected void huiyuan_Click(object sender, EventArgs e)
        {
            if (txtCn.Text == "我承诺我会严格遵守论坛的相关制度")
            {
                if (UsersBll.usersvip(Session["usersname"].ToString()) > 0)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('注册VIP成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('注册VIP失败！');</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('承诺失败！');</script>");
            }
        }
    }
}