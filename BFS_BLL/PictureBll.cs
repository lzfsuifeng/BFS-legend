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
    public class PictureBll
    {
        //查询所有图片
        public static DataTable all()
        {
            return PictureDal.All();
        }
        //查询所有壁纸
        public static DataTable bzAll()
        {
            return PictureDal.bzAll();
        }
        //查询所有玩家原画
        public static DataTable yhAll()
        {
            return PictureDal.yhAll();
        }
        //查询最新5张玩家原画
        public static DataTable yhTop5()
        {
            return PictureDal.yhTop5();
        }
        //根据图片ID查询图片
        public static SqlDataReader IDselcet(int ID)
        {
            return PictureDal.Idselect(ID);
        }
        //根据ID删除图片
        public static int deleteid(int picid)
        {
            return PictureDal.deleteid(picid);
        }
        //修改图片信息
        public static int updatepic(Picture pic)
        {
            return PictureDal.updatepic(pic);
        }
        //增加图片
        public static int addpic(Picture pic)
        {
            return PictureDal.addpic(pic);
        }
    }
}
