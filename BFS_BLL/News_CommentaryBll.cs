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
    public class News_CommentaryBll
    {
        //查询所有新闻评论（附加评论所在新闻标题）,并根据评论时间排序
        public static DataTable allnc()
        {
            return News_CommentaryDal.allnc();
        }
        //根据新闻ID查询所有的新闻评论
        public static DataTable news_allnc(int News_ID)
        {
            return News_CommentaryDal.news_allnc(News_ID);
        }
        //根据新闻ID查询所有的新闻评论数量
        public static int news_allncnum(int News_ID)
        {
            return News_CommentaryDal.news_allncnum(News_ID);
        }
        //添加新闻评论
        public static int news_addnc(News_Commentary nc)
        {
            return News_CommentaryDal.news_addnc(nc);
        }
        //根据ID删除新闻评论
        public static int news_deletenc(int nc_id)
        {
            return News_CommentaryDal.news_deletenc(nc_id);
        }
      
    }
}
