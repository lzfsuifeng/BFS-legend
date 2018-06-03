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
    public class UsersDal
    {
       //验证用户登录信息，用于登录
        public SqlDataReader Login(string UsersName, string UsersPassword)
        {
            string sql = "select * from Users where Users_Name=@UsersName and Users_Password=@UsersPassword ";
            SqlParameter[] sp=new SqlParameter[]{
                new SqlParameter("@UsersName",UsersName),
                new SqlParameter("@UsersPassword",UsersPassword)
            };
            return DBHelper.GetDataReader(sql, sp);
        }
        //删除
        public int delete(string usersname)
        {
            string sql = "delete Users where Users_Name=@Users_Name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Users_Name",usersname)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //查询用户信息
        public SqlDataReader select(string name)
        {
            string sql = "select * from Users where Users_Name=@Users_Name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Users_Name",name)
            };
            return DBHelper.GetDataReader(sql, sp);
        }
        //用户注册成为vip会员
        public int usersvip(string usersname)
        {
            string sql = "update Users set Users_Vip='1' where Users_Name='"+usersname+"'";
            return DBHelper.GetExcuteNonQuery(sql);
        }

        //用户修改信息
        public int usersupdate(Users users)
        {
            string sql = "update Users set Users_Password=@Users_Password,Users_Tel=@Users_Tel,Users_Img=@Users_Img where Users_Name=@Users_Name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Users_Name",users.Users_Name1),
                new SqlParameter("@Users_Password",users.Users_Password1), 
                new SqlParameter("@Users_Img",users.Users_Img1),
                new SqlParameter("@Users_Tel",users.Users_Tel1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //修改用户信息
        public int update(Users users)
        {
            string sql = "update Users set Users_Password=@Users_Password,Users_Sex=@Users_Sex,Users_Vip=@Users_Vip,Users_Admin=@Users_Admin,Users_Tel=@Users_Tel,Users_Img=@Users_Img where Users_Name=@Users_Name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Users_Name",users.Users_Name1),
                new SqlParameter("@Users_Password",users.Users_Password1),
                new SqlParameter("@Users_Sex",users.Users_Sex1),
                new SqlParameter("@Users_Vip",users.Users_Vip1),
                new SqlParameter("@Users_Admin",users.Users_Admin1),
                new SqlParameter("@Users_Img",users.Users_Img1),
                new SqlParameter("@Users_Tel",users.Users_Tel1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        public DataTable all()
        {
            string sql = "select * from Users";
            return DBHelper.GetFillData(sql);
        }

        //增加用户信息，用于注册
        public int Zhuce(Users users)
        {
            string sql = "insert into Users(Users_Name,Users_Password,Users_Sex,Users_Tel,Users_Img) values(@username,@userpassword,@usersex,@usertel,@userimg)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@username",users.Users_Name1),
                new SqlParameter("@userpassword",users.Users_Password1),
                new SqlParameter("@uservip",users.Users_Vip1),
                new SqlParameter("@usersex",users.Users_Sex1),
                new SqlParameter("@userimg",users.Users_Img1),
                new SqlParameter("@usertel",users.Users_Tel1)
            };
            return DBHelper.GetExcuteNonQuery(sql,sp);
        }
    }
}
