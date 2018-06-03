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
    public class NewsDal
    {
        //查询所有乱斗的新闻
        public static DataTable luandou()
        {
            string sql = "select * from News where News_Class='乱斗'";
            return DBHelper.GetFillData(sql);
        }
        //查询最新的五条乱斗新闻
        public static DataTable luandouTop5()
        {
            string sql = "select top 5 * from News where News_Class='乱斗' order by News_ID desc";
            return DBHelper.GetFillData(sql);
        }
        //查询所有杂谈的新闻
        public static DataTable zatan()
        {
            string sql = "select * from News where News_Class='杂谈'";
            return DBHelper.GetFillData(sql);
        }
        //查询最新的五条杂谈新闻
        public static DataTable zatanTop5()
        {
            string sql = "select top 5 * from News where News_Class='杂谈' order by News_ID desc";
            return DBHelper.GetFillData(sql);
        }
        //查询所有版本更新的新闻
        public static DataTable banben()
        {
            string sql = "select * from News where News_Class='版本'";
            return DBHelper.GetFillData(sql);
        }
        //查询最新的五条版本更新新闻
        public static DataTable banbenTop5()
        {
            string sql = "select top 5 * from News where News_Class='版本' order by News_ID desc";
            return DBHelper.GetFillData(sql);
        }
        //查询所有版本更新的新闻
        public static DataTable kazu()
        {
            string sql = "select * from News where News_Class='卡组'";
            return DBHelper.GetFillData(sql);
        }
        //查询最新的五条版本更新新闻
        public static DataTable kazuTop5()
        {
            string sql = "select top 5 * from News where News_Class='卡组' order by News_ID desc";
            return DBHelper.GetFillData(sql);
        }

        //根据id查询所访问的新闻内容
        public static SqlDataReader read(int newsid)
        {
            string sql = "select * from News where News_ID=@News_ID";
            SqlParameter[] sp=new SqlParameter[]{
                new SqlParameter("@News_ID",newsid)
            };
            return DBHelper.GetDataReader(sql,sp);
        }

       

        //查询所有的新闻
        public static DataTable all()
        {
            string sql = "select * from News";
            return DBHelper.GetFillData(sql);
        }
        //增加新闻
        public static int Addnews(News news)
        {
            string sql = "insert into News values(@News_Title,@News_Time,@News_Conentent,@News_Img,@News_Num,@News_Class)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@News_Title",news.News_Title1),
                new SqlParameter("@News_Time",news.News_Time1),
                new SqlParameter("@News_Conentent",news.News_Conentent1),
                new SqlParameter("@News_Img",news.News_Img1),
                new SqlParameter("@News_Class",news.News_Class1),
                new SqlParameter("@News_Num",news.News_Num1)
               
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //根据id删除新闻

        public static int delete(int newsid)
        {
            string sql = "delete from News where News_ID='" + newsid + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }
        //修改新闻内容
        public static int Updatenews(News news)
        {
            string sql = "update News set News_Title=@News_Title,News_Time=@News_Time,News_Conentent=@News_Conentent,News_Img=@News_Img,News_Num=@News_Num,News_Class=@News_Class where News_ID=@News_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@News_ID",news.News_ID1),
                new SqlParameter("@News_Title",news.News_Title1),
                new SqlParameter("@News_Time",news.News_Time1),
                new SqlParameter("@News_Conentent",news.News_Conentent1),
                new SqlParameter("@News_Img",news.News_Img1),
                new SqlParameter("@News_Class",news.News_Class1),
                new SqlParameter("@News_Num",news.News_Num1)
               
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
