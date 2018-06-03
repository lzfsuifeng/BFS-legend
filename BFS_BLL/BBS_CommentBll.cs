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
    public class BBS_CommentBll
    {
        //查询所有评论
        public static DataTable allbc()
        {
            return BBS_CommentDal.allbc();
        }
        //根据帖子ID显示所有其下的评论
        public static DataTable bbsallbc(int bc_bbs_id)
        {
            return BBS_CommentDal.bbsallbc(bc_bbs_id);
        }
        //根据帖子ID显示所有其下的评论数量
        public static int num(int bc_bbs_id)
        {
            return BBS_CommentDal.num(bc_bbs_id);
        }
        //增加评论
        public static int addbc(BBS_Comment bc)
        {
            return BBS_CommentDal.addbc(bc);
        }
        //删除评论
        public static int deletebc(int bc_id)
        {
            return BBS_CommentDal.deletebc(bc_id);
        }
    }
}
