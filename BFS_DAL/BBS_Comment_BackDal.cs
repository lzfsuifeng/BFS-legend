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
    public class BBS_Comment_BackDal
    {
        //查询所有帖子评论回复
        public static DataTable allbcb()
        {
            string sql = "select BCB_ID,BCB_Content,BCB_Time,BCB_Users_Name,BC_Users_Name,BBS_Title from BBS_Comment,BBS_Comment_Back,BBS where BCB_BC_ID=BC_ID and BC_BBS_ID=BBS_ID order by BCB_Time asc";
            return DBHelper.GetFillData(sql);
        }
        //根据评论id查询所有回复
        public static DataTable bcallbcb(int bbc_bc_id)
        {
            string sql = "select Users_Img,BC_Users_Name, Users_Name,BCB_Content,BCB_Time from BBS_Comment,Users,BBS_Comment_Back where BCB_BC_ID ='"+bbc_bc_id+"' and Users_Name = BCB_Users_Name and BC_ID=BCB_BC_ID order by BCB_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //发表回复
        public static int addbcb(BBS_Comment_Back bcb)
        {
            string sql = "insert into BBS_Comment_Back values(@BCB_Content,@BCB_Time,@BCB_Users_Name,@BCB_BC_ID)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@BCB_Content",bcb.BCB_Content1),
                new SqlParameter("@BCB_Time",bcb.BCB_Time1),
                new SqlParameter("@BCB_Users_Name",bcb.BCB_Users_Name1),
                new SqlParameter("@BCB_BC_ID",bcb.BCB_BC_ID1)

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //根据评论id删除回复
        public static int deletebcb(int bbc_bc_id)
        {
            string sql = "delete from BBS_Comment_Back where BCB_BC_ID='" + bbc_bc_id + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }
    }
}
