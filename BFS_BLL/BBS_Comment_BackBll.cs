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
    public class BBS_Comment_BackBll
    {
        //查询所有帖子评论回复
        public static DataTable allbcb()
        {
            return BBS_Comment_BackDal.allbcb();
        }
        //根据回复ID显示所有其下的评论
        public static DataTable bcallbcb(int bbc_bc_id)
        {
            return BBS_Comment_BackDal.bcallbcb(bbc_bc_id);

        }
        //增加回复
        public static int addbcb(BBS_Comment_Back bcb)
        {
            return BBS_Comment_BackDal.addbcb(bcb);
        }
        //删除回复
        public static int deletebcb(int bbc_bc_id)
        {
            return BBS_Comment_BackDal.deletebcb(bbc_bc_id);
        }
    }
}
