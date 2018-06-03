using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BFS_BLL;
using BFS_Model;

namespace BFS_UI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //int i = 0;
            DataTable dt = ActBll.newact();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            
            if (!IsPostBack)
            {
                bindLuandou();
                bindZatan();
                bindBanben();
                Bindtiezi();
                bindlive();
                binglistview();
            }
        }
        //绑定最新资讯
        protected void binglistview()
        {
            ListView1.DataSource = NewsBll.all();
            ListView1.DataBind();
        }
        //绑定首页三个新闻分区的数据
        protected void bindLuandou()
        {
            DataTable ld = NewsBll.luandouTop5();
            if (ld != null)
            {
                News_luandou.DataSource = ld;
                News_luandou.DataBind();
            }
        }
        protected void bindZatan()
        {
            DataTable zt = NewsBll.zatanTop5();
            if (zt != null)
            {
                News_zatan.DataSource = zt;
                News_zatan.DataBind();
            }
        }
        protected void bindBanben()
        {
            DataTable bb = NewsBll.banbenTop5();
            if (bb != null)
            {
                News_banben.DataSource = bb;
                News_banben.DataBind();
            }
        }
        protected void Bindtiezi()
        {
            DataTable tz = BBSBll.top5cream();
            if (tz != null)
            {
                jinghua.DataSource = tz;
                jinghua.DataBind();
            }
        }
        protected void bindlive()
        {
            DataTable a = LiveBll.allLive();
            if (a != null)
            {
                liveview.DataSource = a;
                liveview.DataBind();
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