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
    public class News_Comment_BackDal
    {
        //根据新闻评论ID查询所有的回复
        public static DataTable cball(int ncid)
        {
            string sql = "select NC_Users_Name, Users_Name,CB_Content,CB_Time from News_Commentary,Users,News_Comment_Back where CB_NC_ID = @CB_NC_ID and Users_Name = CB_Users_Name and NC_ID=CB_NC_ID order by CB_Time desc";
            SqlParameter[] sp = new SqlParameter[]
           {  
                   new SqlParameter("@CB_NC_ID",ncid)
           };
            return DBHelper.GetFillData(sql, sp);
        }
        //增加新闻评论回复
        public static int cbadd(News_Comment_Back ncb)
        {
            string sql = "insert into News_Comment_Back values(@CB_Content,@CB_Time,@CB_Users_Name,@CB_NC_ID)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@CB_Content",ncb.CB_Content1),
                 new SqlParameter("@CB_Time",ncb.CN_Time1),
                  new SqlParameter("@CB_Users_Name",ncb.CB_Users_Name1),
                   new SqlParameter("@CB_NC_ID",ncb.CB_NC_ID1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //查询所有的新闻评论回复
        public static DataTable allncb()
        {
            string sql= "select CB_ID,CB_Content,CB_Time,CB_Users_Name,NC_Users_Name,News_Title from News_Commentary,News_Comment_Back,News where CB_NC_ID=NC_ID and NC_News_ID=News_ID order by CB_Time asc";
            return DBHelper.GetFillData(sql);
        }
        //根据回复ID删除回复
        public static int deletencb(int ncb_id)
        {
            string sql = "delete from News_Comment_Back where CB_ID='" + ncb_id + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }
    }
}
