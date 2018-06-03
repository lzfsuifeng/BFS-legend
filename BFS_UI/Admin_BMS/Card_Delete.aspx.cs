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
    public partial class Card_Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCard();
            int id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["cardid"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["cardid"].ToString());
                        if (CardBll.deletecard(id)==1)
                        {
                            BindCard();
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除失败！');</script>");
                        }
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string card_off = DropDownList_off.SelectedItem.Text;
            string card_occupation = DropDownList3.SelectedItem.Text;
            int card_cost = int.Parse(DropDownList_cost.SelectedItem.Text);
            if (CardBll.selectcard(card_off, card_occupation, card_cost) != null)
            {
                ListView2.DataSource = CardBll.selectcard(card_off, card_occupation, card_cost);
                ListView2.DataBind();
            }
        }
        //限制数据表显示文本长度
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }
        //绑定数据
        protected void BindCard()
        {
            ListView2.DataSource = CardBll.allcard();
            ListView2.DataBind();
        }
    }
}