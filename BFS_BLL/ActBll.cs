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
    public class ActBll
    {
        //查询所有活动信息
        public static DataTable allact()
        {
            return ActDal.allact();
        }
        //根据ID查询一个活动的具体信息
        public static SqlDataReader select(int actid)
        {
            return ActDal.select(actid);
        }
        //根据ID删除一个活动
        public static int delete(int actid)
        {
            return ActDal.delete(actid);
        }
        //更改某个活动
        public static int update(ActIvit act)
        {
            return ActDal.update(act);
        }
        //增加活动
        public static int add(ActIvit act)
        {
            return ActDal.add(act);
        }
        //查询最新的活动
        public static DataTable newact()
        {
            return ActDal.newact();
        }
    }
}
