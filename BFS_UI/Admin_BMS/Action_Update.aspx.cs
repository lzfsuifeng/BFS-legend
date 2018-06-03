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
    public partial class Action_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["actid"] != null)
                {
                    id = int.Parse(Request.QueryString["actid"].ToString().Trim());
                    SqlDataReader dt = ActBll.select(id);
                    dt.Read();
                    if (dt != null)
                    {
                        title.Text = dt[1].ToString().Trim();
                        time.Text = string.Format("{0:yyyy-MM-dd hh:mm}", dt[4]);
                        Image1.ImageUrl = dt[3].ToString().Trim();
                        txtContent.Text = dt[2].ToString();
                    }
                }
            }
        }
        //修改活动信息
        protected void updateAct_Click(object sender, EventArgs e)
        {
            ActIvit act = new ActIvit();
            act.Act_ID1= int.Parse(Request.QueryString["actid"].ToString().Trim());
            act.Act_Title1 = txtTitle.Text.Trim();
            act.Act_Content1 = txtContent.Text;
            act.Act_Time1 = DateTime.Parse(DateTime.Now.ToShortDateString().ToString());
            act.Act_Img1 = @"~/Img_Act/"+FileUpload1.PostedFile.FileName;
            try
            {
                if (ActBll.update(act) == 1)
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