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
    public partial class WebForm11 : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindcard();
            Bindkazu();
            if (!IsPostBack)
            {
               
            }
        }
        //绑定卡组信息数据
        protected void Bindkazu()
        {
            DataTable kz = NewsBll.kazu();
            if (kz != null)
            {
                kazu.DataSource = kz;
                kazu.DataBind();
            }
        }
        //绑定卡牌数据
        protected void Bindcard()
        {
            CardView.DataSource = CardBll.allcard();
            CardView.DataBind();
        }
        ////确认查询条件
        //protected void Button_Click(object sender, EventArgs e)
        //{
        //    if (txtName.Text != "卡牌")
        //    {
        //        string card_name = txtName.Text.Trim();
        //        CardView.DataSource = CardBll.namecard(card_name);
        //        CardView.DataBind();
        //    }
        //    else
        //    {
        //        if (DropDownList_cost.SelectedIndex != 0)
        //        {
        //            CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text);
        //            CardView.DataBind();
        //            if (DropDownList_occ.SelectedIndex != 0)
        //            {
        //                CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text);
        //                CardView.DataBind();
        //                if (DropDownList_cost.SelectedIndex != 0)
        //                {
        //                    CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text, int.Parse(DropDownList_cost.SelectedItem.Text));
        //                    CardView.DataBind();
        //                    if (DropDownList_Race.SelectedIndex != 0)
        //                    {
        //                        CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text, int.Parse(DropDownList_cost.SelectedItem.Text), DropDownList_Race.SelectedItem.Text);
        //                        CardView.DataBind();
        //                        if (DropDownList_rd.SelectedIndex != 0)
        //                        {
        //                            CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text, int.Parse(DropDownList_cost.SelectedItem.Text), DropDownList_Race.SelectedItem.Text, DropDownList_rd.SelectedItem.Text);
        //                            CardView.DataBind();
        //                        }
        //                    }
        //                }
        //            }
        //        }
        //    }

        //}
       
        //protected void moreselect1_Click(object sender, EventArgs e)
        //{
        //    Panel1.Visible = true;
        //}

        //一级查询
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList_off.SelectedIndex != 0)
            {
                CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text);
                CardView.DataBind();
            }
        }
        //打开第二级搜索条件
        protected void moreselect1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            yiji.Visible = false;
            erji.Visible = true;
        }

        //二级级查询
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList_occ.SelectedIndex != 0)
            {
                CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text);
                CardView.DataBind();
            }
        }
        //打开第三级搜索条件
        protected void moreselect2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            erji.Visible = false;
            sanji.Visible = true;
        }

        //三级查询
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (DropDownList_cost.SelectedIndex != 0)
            {
                CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text, int.Parse(DropDownList_cost.SelectedItem.Text));
                CardView.DataBind();
            }
        }
        //打开第第四级搜索条件
        protected void moreselect3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            sanji.Visible = false;
            siji.Visible = true;
        }

        //四级查询
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (DropDownList_Race.SelectedIndex != 0)
            {
                CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text, int.Parse(DropDownList_cost.SelectedItem.Text), DropDownList_Race.SelectedItem.Text);
                CardView.DataBind();
            }
        }
        //打开第五级搜索条件
        protected void moreselect4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
            siji.Visible = false;
        }

        //五级查询
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (DropDownList_rd.SelectedIndex != 0)
            {
                CardView.DataSource = CardBll.selectcard(DropDownList_off.SelectedItem.Text, DropDownList_occ.SelectedItem.Text, int.Parse(DropDownList_cost.SelectedItem.Text), DropDownList_Race.SelectedItem.Text, DropDownList_rd.SelectedItem.Text);
                CardView.DataBind();
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "卡牌")
            {
                string card_name = txtName.Text.Trim();
                CardView.DataSource = CardBll.namecard(card_name);
                CardView.DataBind();
            }
        }
    }
}