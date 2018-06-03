using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BFS_DAL;
using BFS_Model;


namespace BFS_BLL
{
    public class NewsBll
    {
        //查询所有乱斗的新闻
        public static DataTable luandou()
        {
            return NewsDal.luandou();
        }
        //查询所有杂谈的新闻
        public static DataTable zatan()
        {
            return NewsDal.zatan();
        }
        //查询所有版本更新的新闻
        public static DataTable banben()
        {
            return NewsDal.banben();
        }
        //查询最新的5条乱斗的新闻
        public static DataTable luandouTop5()
        {
            return NewsDal.luandouTop5();
        }
        //查询最新的5条杂谈的新闻
        public static DataTable zatanTop5()
        {
            return NewsDal.zatanTop5();
        }
        //查询最新的5条版本更新的新闻
        public static DataTable banbenTop5()
        {
            return NewsDal.banbenTop5();
        }
        //查询卡组的新闻
        public static DataTable kazu()
        {
            return NewsDal.kazuTop5();
        }
        //查询最新的5条卡组更新的新闻
        public static DataTable kazuTop5()
        {
            return NewsDal.kazuTop5();
        }
        //根据id查询所阅读的新闻内容
        public static SqlDataReader read(int newsid)
        {
            return NewsDal.read(newsid);
        }
        //查询所有新闻
        public static DataTable all()
        {
            return NewsDal.all();
        }
        //添加新闻
        public static int Addnews(News news)
        {
            return NewsDal.Addnews(news);
        }
        //根据id删除所阅读的新闻内容
        public static int delete(int newsid)
        {
            return NewsDal.delete(newsid);
        }
        //修改新闻内容
        public static int Updatenews(News news)
        {
            return NewsDal.Updatenews(news);
        }
    }
}
