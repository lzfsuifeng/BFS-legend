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
    public partial class Action_Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addAct_Click(object sender, EventArgs e)
        {
            ActIvit act = new ActIvit();
            act.Act_Title1 = txtTitle.Text.Trim();
            act.Act_Time1 = DateTime.Parse(txtTime.Text.Trim());
            act.Act_Img1 = @"~/Img_Act/" + FileUpload1.PostedFile.FileName;
            act.Act_Content1 = txtContent.Text;
            try
            {
                if (ActBll.add(act) == 1)
                {
                    txtTitle.Text = "";
                    txtTime.Text = "";
                    txtContent.Text = "";
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