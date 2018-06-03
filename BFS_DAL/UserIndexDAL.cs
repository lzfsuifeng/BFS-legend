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
    public class UserIndexDAL
    {
        //搜索用户发表帖子数量
        public static int BBS_Num(string BBS_Users_Name)
        {
            string sql = "select count(*) from BBS where BBS_Users_Name='" + BBS_Users_Name + "'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜索用户发表帖子
        public static DataTable BBS_All(string BBS_Users_Name)
        {
            string sql = "select * from BBS where BBS_Users_Name='" + BBS_Users_Name + "'";
            return DBHelper.GetFillData(sql);
        }
        //搜素用户的新闻评论数量
        public static int News_Num(string NC_Users_Name)
        {
            string sql = "select count(*) from News_Commentary,Users,News where NC_News_ID = News_ID and Users_Name = NC_Users_Name and NC_Users_Name='" + NC_Users_Name + "'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜素用户的新闻评论
        public static DataTable News_All(string NC_Users_Name)
        {
            string sql = "select NC_ID,NC_Content,NC_Time,Users_Name, News_Title from News_Commentary,Users,News where NC_News_ID = News_ID and Users_Name = NC_Users_Name and NC_Users_Name='" + NC_Users_Name + "' order by NC_Time  desc";
            return DBHelper.GetFillData(sql);
        }
        //搜素用户的帖子评论数量
        public static int BBScomt_Num(string BBS_Users_Name)
        {
            string sql = "select count(*) from BBS_Comment,BBS where BBS_ID=BC_BBS_ID and BBS_Users_Name='" + BBS_Users_Name + "'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜素用户的帖子评论
        public static DataTable BBScomt_ALL(string BBS_Users_Name)
        {
            string sql = "select BBS_Title,BBS_Comment.* from BBS_Comment,BBS where BBS_ID=BC_BBS_ID and BBS_Users_Name='" + BBS_Users_Name + "' order by BC_Time desc";
            return DBHelper.GetFillData(sql);
        }
        //搜素新闻评论回复数量
        public static int News_Comment_Back_Num(string CB_Users_Name)
        {
            string sql = "select count(*) from News_Commentary,News_Comment_Back,News where CB_NC_ID=NC_ID and NC_News_ID=News_ID and  CB_Users_Name='" + CB_Users_Name + "' order by CB_Time asc";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜素新闻评论回复
        public static DataTable News_Comment_Back_ALL(string CB_Users_Name)
        {
            string sql = "select CB_ID,CB_Content,CB_Time,CB_Users_Name,NC_Users_Name,News_Title from News_Commentary,News_Comment_Back,News where CB_NC_ID=NC_ID and NC_News_ID=News_ID and  CB_Users_Name='" + CB_Users_Name + "' order by CB_Time asc";
            return DBHelper.GetFillData(sql);
        }
        //搜素帖子评论回复数量
        public static int BBS_Comment_Back_Num(string BBS_Users_Name)
        {
            string sql = "select count(*) from BBS_Comment,BBS_Comment_Back,BBS where BCB_BC_ID=BC_ID and BC_BBS_ID=BBS_ID and BBS_Users_Name='" + BBS_Users_Name + "' ";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜素帖子评论回复
        public static DataTable BBS_Comment_Back_ALL(string BBS_Users_Name)
        {
            string sql = "select BCB_BC_ID,BCB_Content,BCB_Time,BCB_Users_Name,BC_Users_Name,BBS_Title from BBS_Comment,BBS_Comment_Back,BBS where BCB_BC_ID=BC_ID and BC_BBS_ID=BBS_ID and BBS_Users_Name='" + BBS_Users_Name + "' order by BCB_Time asc ";
            return DBHelper.GetFillData(sql);
        }
        //搜素用户发表的评论数量
        public static int userBBScomt_Num(string BBS_Users_Name)
        {
            string sql = "select count(*) from BBS_Comment,BBS where BBS_ID=BC_BBS_ID and BC_Users_Name='" + BBS_Users_Name + "'";
            return DBHelper.ExecuteScalar<int>(sql);
        }
        //搜素用户发表的评论
        public static DataTable userBBScomt_ALL(string BBS_Users_Name)
        {
            string sql = "select BBS_Title,BBS_Comment.* from BBS_Comment,BBS where BBS_ID=BC_BBS_ID and BC_Users_Name='" + BBS_Users_Name + "' order by BC_Time desc";
            return DBHelper.GetFillData(sql);
        }
    }
}
