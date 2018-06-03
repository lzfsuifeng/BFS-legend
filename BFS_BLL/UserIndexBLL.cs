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
    public  class UserIndexBLL
    {
        //搜索用户发表帖子数量
        public static int BBS_Num(string BBS_Users_Name)
        {
            return UserIndexDAL.BBS_Num(BBS_Users_Name);
        }
        //搜索用户发表帖子
        public static DataTable BBS_All(string BBS_Users_Name)
        {
            return UserIndexDAL.BBS_All(BBS_Users_Name);
        }
        //搜素用户的新闻评论数量
        public static int News_Comment_Num(string NC_Users_Name)
        {
            return UserIndexDAL.News_Num(NC_Users_Name);
        }
        //搜素用户的新闻评论
        public static DataTable News_Comment_All(string NC_Users_Name)
        {
            return UserIndexDAL.News_All(NC_Users_Name);
        }
        //搜素用户的帖子评论数量
        public static int BBScomt_Num(string BC_Users_Name)
        {
            return UserIndexDAL.BBScomt_Num(BC_Users_Name);
        }
        //搜素用户的帖子评论
        public static DataTable BBScomt_ALL(string BC_Users_Name)
        {
            return UserIndexDAL.BBScomt_ALL(BC_Users_Name);
        }
        //搜素新闻评论回复数量
        public static int News_Comment_Back_Num(string CB_Users_Name)
        {
            return UserIndexDAL.News_Comment_Back_Num(CB_Users_Name);
        }
        //搜素新闻评论回复
        public static DataTable News_Comment_Back_ALL(string CB_Users_Name)
        {
            return UserIndexDAL.News_Comment_Back_ALL(CB_Users_Name);
        }
        //搜素帖子评论回复数量
        public static int BBS_Comment_Back_Num(string BCB_Users_Name)
        {
            return UserIndexDAL.BBS_Comment_Back_Num(BCB_Users_Name);
        }
        //搜素帖子评论回复
        public static DataTable BBS_Comment_Back_ALL(string BCB_Users_Name)
        {
            return UserIndexDAL.BBS_Comment_Back_ALL(BCB_Users_Name);
        }
        //搜素用户的帖子评论数量
        public static int userBBScomt_Num(string BC_Users_Name)
        {
            return UserIndexDAL.userBBScomt_Num(BC_Users_Name);
        }
        //搜素用户的帖子评论
        public static DataTable userBBScomt_ALL(string BC_Users_Name)
        {
            return UserIndexDAL.userBBScomt_ALL(BC_Users_Name);
        }
    }
}
