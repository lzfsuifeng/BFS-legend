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
    public  class LiveBll
    {
        //查询所有主播
        public static DataTable allLive()
        {
            return LiveDal.allLive();
        }
        //根据ID查询某个主播信息
        public static SqlDataReader selectlive(int liveid)
        {
            return LiveDal.selectlive(liveid);
        } 
        //增加主播
        public static int addlive(Live live)
        {
            return LiveDal.addlive(live);
        }
        //删除主播
        public static int deletelive(int liveid)
        {
            return LiveDal.deletelive(liveid);
        }
        //修改主播
        public static int updatelive(Live live)
        {
            return LiveDal.updatelive(live);
        }
    }
}
