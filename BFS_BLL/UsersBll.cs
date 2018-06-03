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
    public class UsersBll
    {
        private static UsersDal userdal = new UsersDal();
        //登录
        public static SqlDataReader Login(string UsersName, string UsersPassword)
        {
            return userdal.Login(UsersName, UsersPassword);

        }
      
        //注册
        public static bool zhuce(Users user)
        {
            return userdal.Zhuce(user) > 0;
        }

        //删除
        public static int delete(string usersname)
        {
            return userdal.delete(usersname);
        }

        //查询所有用户信息
        public static DataTable all()
        {
            return userdal.all();
        }
        //查询用户信息
        public static SqlDataReader select(string name)
        {
            return userdal.select(name);
        }
        //修改用户信息
        public static int update(Users users)
        {
            return userdal.update(users);
        }
        //用户修改信息
        public static int usersupdate(Users users)
        {
            return userdal.usersupdate(users);
        }
        //用户注册成为VIP会员
        public static int usersvip( string usersname)
        {
            return userdal.usersvip(usersname);
        }
    }
}
