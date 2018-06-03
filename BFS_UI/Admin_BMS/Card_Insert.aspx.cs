using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using BFS_Model;
using BFS_BLL;

namespace BFS_UI.Admin_BMS
{
    public partial class Card_Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCard_Click(object sender, EventArgs e)
        {
            Card card = new Card();
            card.Card_Name1 = txtName.Text.Trim();
            card.Card_Cost1 =int.Parse(DropDownList_cost.SelectedItem.Text);
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
                if (CardBll.addcard(card) == 1)
                {
                    txtAp.Text = "";
                    txtEffect.Text = "";
                    txtHp.Text = "";
                    txtName.Text = "";
                    
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