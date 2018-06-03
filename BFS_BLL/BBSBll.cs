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
    public class BBSBll
    {
        //根据查询所有帖子根据发帖时间排序
        public static DataTable allbbs()
        {
            return BBSDal.allbbs();
        }
        //查询所有精华帖子
        public static DataTable creambbs()
        {
            return BBSDal.creambbs();
        }

        //查询最新的五个精华帖子
        public static DataTable top5cream()
        {
            return BBSDal.top5cream();
        }
        //根据ID查询单个帖子的具体信息
        public static SqlDataReader selectbbs(int bbs_id)
        {
            return BBSDal.selectbbs(bbs_id);
        }
        //发表帖子
        public static int addbbs(BBS bbs)
        {
            return BBSDal.addbbs(bbs);
        }
        //根据ID删除帖子
        public static int deletebbs(int bbs_id)
        {
            return BBSDal.deletebbs(bbs_id);
        }
        //设置精华帖子
        public static int jinghu(int bbs_id)
        {

            return BBSDal.jinghu(bbs_id);
        }
        //搜索帖子数量
        public static int bbs_num()
        {

            return BBSDal.bbs_num();
        }
        //搜索精华帖子数量
        public static int cream_num()
        {

            return BBSDal.cream_num();
        }
        //根据帖子分类搜索帖子数量
        public static int class_num(string bbs_class)
        {

            return BBSDal.class_num(bbs_class);
        }
        //模糊搜索
        public static DataTable momuselect(string title)
        {

            return BBSDal.momuselect(title);
        }
        //查询帖子分类数据
        public static DataTable classbbs(string bbs_class)
        {

            return BBSDal.classbbs(bbs_class);
        }
    }
}
