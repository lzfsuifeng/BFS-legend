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
    public class ActDal
    {
        //查询全部的活动信息
        public static DataTable allact()
        {
            string sql = "select * from ActIvit";
            return DBHelper.GetFillData(sql);
        }
        //根据ID查询某个活动具体的信息
        public static SqlDataReader select(int actid)
        {
            string sql = "select * from ActIvit where Act_ID=@Act_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Act_ID",actid)
            };
            return DBHelper.GetDataReader(sql, sp);
        }
        //查询最新活动具体的信息
        public static DataTable newact()
        {
            string sql = "select top 3 * from ActIvit order by Act_Time desc";
            
            return DBHelper.GetFillData(sql);
        }
        //根据ID删除活动
        public static int delete(int actid)
        {
            string sql= "delete from ActIvit where Act_ID=@Act_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Act_ID",actid)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //修改活动信息
        public static int update(ActIvit act)
        {
            string sql = "update ActIvit set Act_Title=@Act_Title,Act_Content=@Act_Content,Act_Img=@Act_Img,Act_Time=@Act_Time where Act_ID=@Act_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Act_ID",act.Act_ID1),
                new SqlParameter("@Act_Title",act.Act_Title1),
                new SqlParameter("@Act_Content",act.Act_Content1),
                new SqlParameter("@Act_Img",act.Act_Img1),
                new SqlParameter("@Act_Time",act.Act_Time1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //增加活动
        public static int add(ActIvit act)
        {
            string sql = "insert into ActIvit values(@Act_Title,@Act_Content,@Act_Img,@Act_Time)";
            SqlParameter[] sp = new SqlParameter[]
            {
               
                new SqlParameter("@Act_Title",act.Act_Title1),
                new SqlParameter("@Act_Content",act.Act_Content1),
                new SqlParameter("@Act_Img",act.Act_Img1),
                new SqlParameter("@Act_Time",act.Act_Time1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
