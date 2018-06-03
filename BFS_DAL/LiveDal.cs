using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BFS_Model;

namespace BFS_DAL
{
    public  class LiveDal
    {
        //查询所有主播
        public static DataTable allLive()
        {
            string sql = "select * from Live";
            return DBHelper.GetFillData(sql);
        }
        //增加主播
        public static int addlive(Live live)
        {
            string sql = "insert into Live Values(@Live_Title,@Live_Img,@Live_Url)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Live_Title",live.Live_Title1),
                new SqlParameter("@Live_Img",live.Live_Img1),
                  new SqlParameter("@Live_Url",live.Live_Url1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //修改主播
        public static int updatelive(Live live)
        {
            string sql = "update Live set Live_Title=@Live_Title,Live_Img=@Live_Img,Live_Url=@Live_Url where Live_ID=@Live_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Live_ID",live.Live_ID1),
                new SqlParameter("@Live_Title",live.Live_Title1),
                new SqlParameter("@Live_Img",live.Live_Img1),
                new SqlParameter("@Live_Url",live.Live_Url1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //删除主播
        public static int deletelive(int liveid)
        {
            string sql = "delete Live where Live_ID=@Live_ID";
            SqlParameter[] sp = new SqlParameter[]
           {
                new SqlParameter("@Live_ID",liveid)
                
           };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
         //查询一个主播
        public static SqlDataReader selectlive(int liveid)
        {
            string sql = "select * from Live where Live_ID=@Live_ID";
            SqlParameter[] sp = new SqlParameter[]
           {
                new SqlParameter("@Live_ID",liveid)

           };
            return DBHelper.GetDataReader(sql, sp);
        }
    }
}
