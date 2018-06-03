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
    public class Back_Comment_BackDal
    {
        ////查询所有帖子评论回复
        //public static DataTable allbcb()
        //{
        //    string sql = "select BCB_ID,BCB_Content,BCB_Time,BCB_Users_Name,BC_Users_Name,BBS_Title from BBS_Comment,BBS_Comment_Back,BBS where BCB_BC_ID=BC_ID and BC_BBS_ID=BBS_ID order by BCB_Time asc";
        //    return DBHelper.GetFillData(sql);
        //}
        //根据评论id查询所有回复
        public static DataTable bcallbcb(int bbc_bc_id)
        {
            string sql = "select  a.BCB_Content,a.BCB_Time,a.BCB_Users_Name,Users_Img from Back_Comment_Back a,BBS_Comment_Back b, Users where a.BCB_Users_Name = Users_Name and a.BCBID ='"+bbc_bc_id+"' order by a.BCB_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //发表回复
        public static int addbcb(Back_Comment_Back bcb)
        {
            string sql = "insert into Back_Comment_Back values(@BCB_Content,@BCB_Time,@BCB_Users_Name,@BCBID)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@BCB_Content",bcb.BCB_Comment1),
                new SqlParameter("@BCB_Time",bcb.BCB_Time1),
                new SqlParameter("@BCB_Users_Name",bcb.BCB_Users_Name1),
                new SqlParameter("@BCBID",bcb.BCBID1)

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
