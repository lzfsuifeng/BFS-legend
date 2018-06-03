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
    public class BBSDal
    {
        //根据查询所有帖子根据发帖时间排序
        public static DataTable allbbs()
        {
            string sql = "select *from BBS order by BBS_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //查询所有精华帖子
        public static DataTable creambbs()
        {
            string sql = "select *from BBS where BBS_Cream='是' order by BBS_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //查询最新的五个精华帖子
        public static DataTable top5cream()
        {
            string sql = "select top 5 *from BBS where BBS_Cream='是' order by BBS_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //根据ID查询单个帖子的具体信息
        public static SqlDataReader selectbbs(int bbs_id)
        {
            string sql = "select *from BBS where BBS_ID='"+bbs_id+"'";
            return DBHelper.GetDataReader(sql);
        }
        //发表帖子
        public static int addbbs(BBS bbs)
        {
            string sql = "insert into BBS values(@BBS_Title,@BBS_Time,@BBS_Img,@BBS_Content,@BBS_Users_Name,@BBS_Cream,@BBS_Class)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@BBS_Title",bbs.BBS_Title1),
                new SqlParameter("@BBS_Time",bbs.BBS_Time1),
                new SqlParameter("@BBS_Content",bbs.BBS_Content1),
                new SqlParameter("@BBS_Img",bbs.BBS_Img1),
                new SqlParameter("@BBS_Cream",bbs.BBS_Cream1),
                 new SqlParameter("@BBS_Class",bbs.BBS_Class1),
                new SqlParameter("@BBS_Users_Name",bbs.BBS_Users_Name1)

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //设置精华帖子
        public static int jinghu(int bbs_id)
        {
            string sql="update BBS set BBS_Cream='是' where BBS_ID='"+bbs_id+"'";
            return DBHelper.GetExcuteNonQuery(sql);
        }
        //查询帖子分类数据
        public static DataTable classbbs(string bbs_class)
        {
            string sql = "select * from BBS where BBS_Class='" + bbs_class + "'";
            return DBHelper.GetFillData(sql);
        }
        //根据ID删除帖子
        public static int deletebbs(int bbs_id)
        {
            string sql = "delete from BBS where BBS_ID='" + bbs_id + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }
        //搜索帖子数量
        public static int bbs_num()
        {
            string sql = "select count(*) from BBS";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜索精华帖子数量
        public static int cream_num()
        {
            string sql = "select count(*) from BBS where BBS_Cream='是'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //根据帖子分类搜索帖子数量
        public static int class_num(string bbs_class)
        {
            string sql = "select count(*) from BBS where BBS_Class='"+bbs_class+"'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //模糊搜索
        public static DataTable momuselect(string title)
        {
            string sql = "select *from BBS where BBS_Title like '%" +title+ "%'";
            return DBHelper.GetFillData(sql);
        }
    }
}
