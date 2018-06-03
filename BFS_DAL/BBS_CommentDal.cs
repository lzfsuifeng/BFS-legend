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
    public class BBS_CommentDal
    {
        //查询所有评论
        public static DataTable allbc()
        {
            string sql = "select BBS_Title,BBS_Comment.* from BBS_Comment,BBS where BBS_ID=BC_BBS_ID order by BC_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //根据帖子ID显示所有其下的评论
        public static DataTable bbsallbc(int bc_bbs_id)
        {
            string sql = "select Users_Img,BBS_Comment. *from BBS_Comment,Users where BC_BBS_ID='"+bc_bbs_id+"' and BBS_Comment.BC_Users_Name=Users_Name order by BC_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //根据帖子ID显示所有其下的评论数量
        public static int num(int bc_bbs_id)
        {
            string sql = "select count(*)from BBS_Comment where BC_BBS_ID='" + bc_bbs_id + "'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //增加评论
        public static int addbc(BBS_Comment bc)
        {
            string sql = "insert into BBS_Comment values(@BC_Content,@BC_Time,@BC_Users_Name,@BC_BBS_ID)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@BC_Content",bc.BC_Content1),
                new SqlParameter("@BC_Time",bc.BC_Time1),
                new SqlParameter("@BC_Users_Name",bc.BC_Users_Name1),
                new SqlParameter("@BC_BBS_ID",bc.BC_BBS_ID1)

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //删除评论
        public static int deletebc(int bc_id)
        {
            string sql = "delete from BBS_Comment where BC_ID='" + bc_id + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }
    }
}
