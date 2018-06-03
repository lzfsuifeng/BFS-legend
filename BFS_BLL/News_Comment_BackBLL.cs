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
    public  class News_Comment_BackBLL
    {
        //根据新闻评论的ID查询所有回复
        public static DataTable cball(int ncid)
        {
            return News_Comment_BackDal.cball(ncid);
        }
        //增加新闻评论的回复
        public static int cbadd(News_Comment_Back ncb)
        {
            return News_Comment_BackDal.cbadd(ncb);
        }
        //查询所有的新闻评论回复
        public static DataTable allncb()
        {
            return News_Comment_BackDal.allncb();
        }
        //根据回复ID删除回复
        public static int deletencb(int ncb_id)
        {
            return News_Comment_BackDal.deletencb(ncb_id);
        }
    }
}
