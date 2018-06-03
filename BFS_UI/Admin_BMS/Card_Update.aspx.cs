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
    public partial class Card_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!IsPostBack)
            {
                if (Request.QueryString["cardid"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["cardid"].ToString());
                    SqlDataReader dt = CardBll.idcard(id);
                    dt.Read();
                    if (dt != null)
                    {
                        name.Text = dt[1].ToString().Trim();
                        cost.Text = dt[2].ToString().Trim();
                        rd.Text = dt[3].ToString().Trim();
                        hp.Text = dt[4].ToString().Trim();
                        ap.Text= dt[5].ToString().Trim();
                        effect.Text= dt[6].ToString().Trim();
                        ch.Text= dt[7].ToString().Trim();
                        race.Text= dt[8].ToString().Trim();
                        occupation.Text= dt[9].ToString().Trim();
                        off.Text= dt[10].ToString().Trim();
                        img.ImageUrl= dt[11].ToString().Trim();
                    }
                }
            }
        }

        protected void UpdateCard_Click(object sender, EventArgs e)
        {
            Card card = new Card();
            card.Card_ID1= Convert.ToInt32(Request.QueryString["cardid"].ToString());
            card.Card_Name1 = txtName.Text.Trim();
            card.Card_Cost1 = int.Parse(DropDownList_cost.SelectedItem.Text);
            card.Card_Rd1 = DropDownList_rd.SelectedItem.Text.ToString();
            card.Card_Ap1 = int.Parse(txtAp.Text.Trim());
            card.Card_Hp1 = int.Parse(txtHp.Text.Trim());
            card.Card_Characteristic1 = DropDownList_ch.SelectedItem.Text;
            card.Card_Race1 = DropDownList_Race.SelectedItem.Text;
            card.Card_Effect1 = txtEffect.Text.Trim();
            card.Card_Occupation1 = DropDownList3.SelectedItem.Text;
            card.Card_Off1 = DropDownList_off.SelectedItem.Text;
            card.Card_Img1 = @"~/Img_Card/" + FileUpload_img.PostedFile.FileName;
            try
            {
                if (CardBll.updatecard(card) == 1)
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