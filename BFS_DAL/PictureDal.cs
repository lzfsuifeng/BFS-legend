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
    public class PictureDal
    {
        //查询所有的图片
        public static DataTable All()
        {
            string sql = "select * from Picture";
            return DBHelper.GetFillData(sql);
        }
        //查询所有的壁纸
        public static DataTable bzAll()
        {
            string sql = "select * from Picture where Pic_Class='壁纸'";
            return DBHelper.GetFillData(sql);
        }
        //查询所有玩家原画
        public static DataTable yhAll()
        {
            string sql = "select * from Picture where Pic_Class='原画'";
            return DBHelper.GetFillData(sql);
        }
        //查询最新5张玩家原画
        public static DataTable yhTop5()
        {
            string sql = "select top 5 * from Picture where Pic_Class='原画' order by Pic_ID desc";
            return DBHelper.GetFillData(sql);
        }
        //根据ID删除图片
        public static int deleteid(int picid)
        {
            string sql = "delete from Picture where Pic_ID=@Pic_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Pic_ID",picid)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //修改图片信息
        public static int updatepic(Picture pic)
        {
            string sql = "update Picture set Pic_Name=@Pic_Name,Pic_ImgUrl=@Pic_ImgUrl,Pic_Class=@Pic_Class where Pic_ID=@Pic_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Pic_ID",pic.Pic_ID1),
                new SqlParameter("@Pic_Name",pic.Pic_Name1),
                new SqlParameter("@Pic_ImgUrl",pic.Pic_ImgUrl1),
                new SqlParameter("@Pic_Class",pic.Pic_Class1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //添加图片信息
        public static int addpic(Picture pic)
        {
            string sql = "insert into Picture values(@Pic_Name,@Pic_ImgUrl,@Pic_Class)";
            SqlParameter[] sp = new SqlParameter[]
            {
               
                new SqlParameter("@Pic_Name",pic.Pic_Name1),
                new SqlParameter("@Pic_ImgUrl",pic.Pic_ImgUrl1),
                new SqlParameter("@Pic_Class",pic.Pic_Class1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //根据ID查询图片
        public static SqlDataReader Idselect(int ID)
        {
            string sql= "select * from Picture where Pic_ID=@Pic_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Pic_ID",ID)
            };
            return DBHelper.GetDataReader(sql, sp);
        }
    }
}
