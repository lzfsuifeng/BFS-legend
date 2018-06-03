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
    public class Back_Comment_BackBll
    {
        //根据回复ID显示所有其下的评论
        public static DataTable bcallbcb(int bbc_bc_id)
        {
            return Back_Comment_BackDal.bcallbcb(bbc_bc_id);

        }
        //增加回复
        public static int addbcb(Back_Comment_Back bcb)
        {
            return Back_Comment_BackDal.addbcb(bcb);
        }
    }
}
