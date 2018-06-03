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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           Users user = new Users();
            user.Users_Name1 = txtName.Text.Trim();
            user.Users_Password1 = txtPassword.Text.Trim();
            user.Users_Tel1 = txtTel.Text.Trim();
            user.Users_Sex1 = RadioButtonList_sex.SelectedItem.Text;
            user.Users_Img1 = @"~/Img_Users/"+FileUpload_Img.FileName;
            bool a=UsersBll.zhuce(user);
            if (txtPassword.Text.Trim() == txtPassword2.Text.Trim())
            {
                if (a == true)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Response.Write("注册失败");
                }
            }
            
        }
    }
}