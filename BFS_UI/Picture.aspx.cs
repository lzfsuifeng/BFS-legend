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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            bingbz();
            bingyh();
            bindLuandou();
            bindZatan();
            bindBanben();
            Bindtiezi();
            bindlive();
          
            
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
        //绑定壁纸数据源
        protected void bingbz()
        {
            DataTable bz = PictureBll.bzAll();
            if (bz != null)
            {
                Pic_bz.DataSource = bz;
                Pic_bz.DataBind();
            }
        }
        //绑定最新原画数据源
        protected void bingyh()
        {
            DataTable yh = PictureBll.yhTop5();
            if (yh != null)
            {
                string img1 = yh.Rows[0][2].ToString();
                string img2 = yh.Rows[1][2].ToString();
                string img3 = yh.Rows[2][2].ToString();
                string img4 = yh.Rows[3][2].ToString();
                string img5 = yh.Rows[4][2].ToString();
                Image1.ImageUrl = img1;
              
                Image2.ImageUrl = img2;
                Image3.ImageUrl = img3;
                Image4.ImageUrl = img4;
                Image5.ImageUrl = img5;
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