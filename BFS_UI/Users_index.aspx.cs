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


namespace BFS_UI
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //新闻评论回复删除操作
            int id;
            if (!IsPostBack)
            {
               
               
                try
                {
                    if (Request.QueryString["ncid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["ncid"].ToString());
                        if (News_CommentaryBll.news_deletenc(id) == 1)
                        {
                            loginover.Visible = true;
                            shuju.Visible = true;
                            newscomment.Visible = true;
                            Bindnc();
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除删除失败！');</script>");
                        }

                    }
                    if (Request.QueryString["ncbid"] != null)
                    {
                       
                        id = Convert.ToInt32(Request.QueryString["ncbid"].ToString());
                        if (News_Comment_BackBLL.deletencb(id) == 1)
                        {
                            loginover.Visible = true;
                            shuju.Visible = true;
                            newscommentback.Visible = true;
                            Bindncb();

                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除删除失败！');</script>");
                        }

                    }
                    if (Request.QueryString["bbsid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["bbsid"].ToString());
                        if (BBSBll.deletebbs(id) == 1)
                        {
                            loginover.Visible = true;
                            shuju.Visible = true;
                            userbbs.Visible = true;
                            Bindbbs();

                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除失败！');</script>");
                        }
                    }
                    if (Request.QueryString["bcid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["bcid"].ToString());
                        if (BBS_CommentBll.deletebc(id) == 1)
                        {
                            loginover.Visible = true;
                            shuju.Visible = true;
                            bbscomment.Visible = true;
                            Bindnbc();

                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除删除失败！');</script>");
                        }

                    }
                    if (Request.QueryString["bcbid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["bcbid"].ToString());
                        if (BBS_Comment_BackBll.deletebcb(id) == 1)
                        {
                            loginover.Visible = true;
                            shuju.Visible = true;
                            bbscomentback.Visible = true;
                            Bindnbcb();
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除删除失败！');</script>");
                        }

                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }

            }
            if (Session["username"] != null)
            {
                login.Visible = false;
                loginover.Visible=true;


                //如果用户名不为空，将用户信息绑定
                SqlDataReader dt = UsersBll.select(Session["username"].ToString());
                dt.Read();
                Img.ImageUrl = dt[5].ToString();
                name.Text = dt[1].ToString();
                password.Text = dt[2].ToString();
                password1.Text = dt[2].ToString();
                Phone.Text = dt[3].ToString();
                Sex.Text = dt[4].ToString();
            }
            else
            {
                login.Visible = true;
                loginover.Visible = false;
            }

            if (loginover.Visible == true)
            {
                updateuser.Visible = true;
               
                //根据页面传值显示不同的数据
                if(Request.QueryString["bbs"] != null || Request.QueryString["news"] != null|| Request.QueryString["back"] != null)
                {
                    updateuser.Visible = false;
                    shuju.Visible = true;
                    //新闻评论
                    if (Request.QueryString["news"] == "nc")
                    {
                        newscomment.Visible = true;
                        Bindnc();                  
                           
                    }
                    //新闻评论回复
                    if (Request.QueryString["news"] == "ncb")
                    {
                        newscommentback.Visible = true;
                        Bindncb(); 
                    }
                    //发布帖子
                    if (Request.QueryString["bbs"] == "bbs")
                    {
                        userbbs.Visible = true;
                        Bindbbs();
                    }
                    //发布帖子下的评论
                    if (Request.QueryString["bbs"] == "bc")
                    {
                        bbscomment.Visible = true;
                        Bindnbc();
                    }
                    //发布帖子下评论的回复
                    if (Request.QueryString["bbs"] == "bcb")
                    {
                        bbscomentback.Visible = true;
                        Bindnbcb();
                    }

                    if (Request.QueryString["back"] == "bbs")
                    {
                        backbbs.Visible = true;
                        Bindnbcb();
                    }
                }

            }
        }
        //绑定数据

        //绑定用户新闻评论的全部数据
        protected void Bindnc()
        {
            ListView1.DataSource = UserIndexBLL.News_Comment_All(Session["username"].ToString());
            ListView1.DataBind();
        }
        //绑定用户新闻评论回复的全部数据
        protected void Bindncb()
        {
            ListView2.DataSource = UserIndexBLL.News_Comment_Back_ALL(Session["username"].ToString());
            ListView2.DataBind();
        }
        //绑定用户发表的帖子
        protected void Bindbbs()
        {
            ListView3.DataSource = UserIndexBLL.BBS_All(Session["username"].ToString());
            ListView3.DataBind();
        }
        //绑定用户帖子下的评论
        protected void Bindnbc()
        {
            ListView4.DataSource = UserIndexBLL.BBScomt_ALL(Session["username"].ToString());
            ListView4.DataBind();
        }
        //绑定用户帖子下评论的回复
        protected void Bindnbcb()
        {
            ListView5.DataSource = UserIndexBLL.BBS_Comment_Back_ALL(Session["username"].ToString());
            ListView5.DataBind();
        }
        //绑定用户发表的帖子
        protected void Bindnuserbc()
        {
            ListView5.DataSource = UserIndexBLL.userBBScomt_ALL(Session["username"].ToString());
            ListView5.DataBind();
        }

        //点击修改按钮，打开修改控件
        protected void Update_Click(object sender, EventArgs e)
        {
            FileUpload_img.Visible = true;
            UserName.Visible = true;
            Userphone.Visible = true;
            Userpassword.Visible = true;
            Userpassword2.Visible = true;
            Usersex.Visible = true;
        }

        protected void Update_Click1(object sender, EventArgs e)
        {
            if (Userpassword.Text.Trim() == Userpassword2.Text.Trim())
            {
                Users users = new Users();
                users.Users_Name1 = UserName.Text.Trim();
                users.Users_Password1 = Userpassword2.Text.Trim();
                users.Users_Tel1 = Userphone.Text.Trim();
                users.Users_Img1 = @"~/Img_Users/" + FileUpload_img.PostedFile.FileName;
                if (UsersBll.usersupdate(users) == 1)
                {
                    Session["img"] = @"~/Img_Users/" + FileUpload_img.PostedFile.FileName;
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('修改成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('修改失败！');</script>");

                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('前后密码不一致失败！');</script>");
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
    }
}