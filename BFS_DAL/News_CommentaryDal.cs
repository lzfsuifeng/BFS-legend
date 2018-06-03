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
    public class News_CommentaryDal
    {
        //根据新闻ID查询所有的新闻评论
        public static DataTable news_allnc(int news_ID)
        {
            string sql = "select *from News_Commentary where NC_News_ID=@NC_News_ID";  
            SqlParameter[] sp = new SqlParameter[]
            {
                   new SqlParameter("@NC_News_ID",news_ID)
            };
            return DBHelper.GetFillData(sql,sp);
        }

       

        //根据新闻ID查询所有的新闻评论的数量
        public static int news_allncnum(int news_ID)
        {
            string sql = "select count(*)from News_Commentary where NC_News_ID=@NC_News_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                   new SqlParameter("@NC_News_ID",news_ID)
            };
            return DBHelper.ExecuteScalar<int>(sql,sp);
        }
        //根据评论ID删除评论
        public static int news_deletenc(int nc_id)
        {
           string sql= "delete from News_Commentary where NC_ID='" + nc_id + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }

        //查询所有新闻评论（附加评论所在新闻标题）,并根据评论时间排序
        public static DataTable allnc()
        {
            string sql = "select NC_ID,NC_Content,NC_Time,Users_Name, News_Title from News_Commentary,Users,News where NC_News_ID = News_ID and Users_Name = NC_Users_Name order by NC_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //添加新闻评论
        public static int news_addnc(News_Commentary nc)
        {
            string sql = "insert into News_Commentary values(@NC_Content,@NC_Time,@NC_Users_Name,@NC_News_ID)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@NC_Content",nc.NC_Content1),
                 new SqlParameter("@NC_Time",nc.NC_Time1),
                  new SqlParameter("@NC_Users_Name",nc.NC_User_Name1),
                   new SqlParameter("@NC_News_ID",nc.NC_News_ID1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
