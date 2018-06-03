using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BFS_BLL;
using BFS_Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BFS_UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["img"] = "";
            Session["vip"] = "";
        }
        //登录验证
        protected void login_Button1_Click(object sender, EventArgs e)
        {
            string usersName = txtName.Text.Trim();
            string usersPasswod = txtPassword.Text.Trim();
            try
            {
                 SqlDataReader dr = UsersBll.Login(usersName, usersPasswod);
                //数据绑定
                 dr.Read();
               
                //读取用户表的管理员属性，如果是管理员用户，直接跳转到后台管理系统，否则跳转到前台界面
                           
                 bool a=bool.Parse(dr[7].ToString().Trim());
                 if (dr != null)
                 {
                     //保存用户名
                     Session["username"] = dr[1].ToString();
                     //保存用户头像
                     Session["img"] = dr[5].ToString();
                    //保存用户vip属性
                     Session["vip"] = dr[6].ToString();
                   
                    if (a==false)
                     {
                         Response.Redirect("~/BFS_Web.aspx");
                     }
                     else
                     {
                         Response.Redirect("~/Admin_BMS/Admin.aspx");
                     }
                 }
                 else
                 {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('登陆失败，密码错误！');</script>");
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
                            
        }
    }
}