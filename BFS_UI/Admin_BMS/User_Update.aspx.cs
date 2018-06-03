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
    public partial class User_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindView();
                if (Request.QueryString["usersname"] != null)
                {
                    string name = Request.QueryString["usersname"].ToString().Trim();
                    SqlDataReader dt = UsersBll.select(name);
                    dt.Read();
                    if (dt != null)
                    {
                        txtName.Text = dt[1].ToString().Trim();
                        txtPassword.Text = dt[2].ToString().Trim();
                        txtTel.Text = dt[3].ToString().Trim();
                        Sex.Text = dt[4].ToString().Trim();
                        Image1.ImageUrl = dt[5].ToString();
                        Vip.Text = dt[6].ToString().Trim();
                        Admin.Text = dt[7].ToString().Trim();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Users users = new Users();
            users.Users_Name1 = txtName1.Text.Trim();
            users.Users_Password1 = txtPassword1.Text.Trim();
            users.Users_Tel1 = txtTel1.Text.Trim();
            users.Users_Sex1 = RadioButtonList_sex.SelectedItem.Text;
            users.Users_Vip1 = int.Parse(RadioButtonList_vip.SelectedValue)==1 ? true:false;
            users.Users_Admin1 = int.Parse(RadioButtonList_admin.SelectedValue) == 1 ? true : false;
            users.Users_Img1 = @"~/Img_Users/" + FileUpload1.PostedFile.FileName;
            try
            {
                if (UsersBll.update(users)==1)
                {
                    BindView();
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
        //绑定数据
        protected void BindView()
        {
            ListView1.DataSource = UsersBll.all();
            ListView1.DataBind();
        }
    }
}