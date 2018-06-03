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
    public class CardDal
    {
        //增加卡牌
        public static int addcard(Card card)
        {
            string sql = "insert into Card values(@Card_Name,@Card_Cost,@Card_Rd,@Card_Hp,@Card_Ap,@Card_Effect,@Card_Characteristic,@Card_Race,@Card_Occupation,@Card_Off,@Card_Img)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Card_Name",card.Card_Name1),
                new SqlParameter("@Card_Cost",card.Card_Cost1),
                new SqlParameter("@Card_Ap",card.Card_Ap1),
                new SqlParameter("@Card_Hp",card.Card_Hp1),
                new SqlParameter("@Card_Rd",card.Card_Rd1),
                new SqlParameter("@Card_Effect",card.Card_Effect1),
                new SqlParameter("@Card_Characteristic",card.Card_Characteristic1),
                new SqlParameter("@Card_Race",card.Card_Race1),
                new SqlParameter("@Card_Occupation",card.Card_Occupation1),
                new SqlParameter("@Card_Off",card.Card_Off1),
                new SqlParameter("@Card_Img",card.Card_Img1)

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //查询所有卡牌
        public static DataTable allcard()
        {
            string sql = "select *from Card";
            return DBHelper.GetFillData(sql);
        }
        //根据ID卡牌查询卡牌信息
        public static SqlDataReader idcard(int card_id)
        {
            string sql = "select *from Card where Card_ID='" + card_id + "'";
            return DBHelper.GetDataReader(sql);
        }
        //根据版本查询所有卡牌
        public static DataTable selectcard(string card_off)
        {
            string sql = "select *from Card where Card_Off='"+card_off+"'";
            return DBHelper.GetFillData(sql);
        }
        //根据版本，职业查询所有卡牌
        public static DataTable selectcard( string card_off, string card_occupation )
        {
            string sql = "select *from Card where Card_Off='" + card_off + "' and  Card_Occupation='" + card_occupation + "'";
            return DBHelper.GetFillData(sql);
        }
        //根据版本，职业，费用查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation, int card_cost)
        {
            string sql = "select *from Card where Card_Off='" + card_off + "' and  Card_Occupation='" + card_occupation + "' and Card_Cost='" + card_cost + "'";
            return DBHelper.GetFillData(sql);
        }
        //根据版本，职业，费用,种族查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation, int card_cost,string card_race)
        {
            string sql = "select *from Card where Card_Off='" + card_off + "' and  Card_Occupation='" + card_occupation + "' and Card_Cost='" + card_cost + "'  and Card_Race='" + card_race + "'";
            return DBHelper.GetFillData(sql);
        }
        //根据版本，职业，费用,种族，稀有度查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation, int card_cost, string card_race,string card_rd)
        {
            string sql = "select *from Card where Card_Off='" + card_off + "' and  Card_Occupation='" + card_occupation + "' and Card_Cost='" + card_cost + "'  and Card_Race='" + card_race + "' and Card_Rd='" + card_rd + "'";
            return DBHelper.GetFillData(sql);
        }
        //根据卡牌名称查询卡牌
        public static DataTable namecard(string card_name)
        {
            string sql = "select *from Card where Card_Name='" + card_name + "'";
            return DBHelper.GetFillData(sql);
        }
        //删除卡牌
        public static int deletecard(int cardid)
        {
            string sql = "delete from Card where Card_ID='" + cardid + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }

        //修改卡牌
        public static int updatecard(Card card)
        {
            string sql = "update Card set Card_Name=@Card_Name,Card_Cost=@Card_Cost,Card_Rd=@Card_Rd,Card_Ap=@Card_Ap,Card_Hp=@Card_Hp,Card_Effect=@Card_Effect,Card_Characteristic=@Card_Characteristic,Card_Race=@Card_Race,Card_Occupation=@Card_Occupation,Card_Off=@Card_Off where Card_ID=@Card_ID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@Card_ID",card.Card_ID1),
                new SqlParameter("@Card_Name",card.Card_Name1),
                new SqlParameter("@Card_Cost",card.Card_Cost1),
                new SqlParameter("@Card_Ap",card.Card_Ap1),
                new SqlParameter("@Card_Hp",card.Card_Hp1),
                new SqlParameter("@Card_Rd",card.Card_Rd1),
                new SqlParameter("@Card_Effect",card.Card_Effect1),
                new SqlParameter("@Card_Characteristic",card.Card_Characteristic1),
                new SqlParameter("@Card_Race",card.Card_Race1),
                new SqlParameter("@Card_Occupation",card.Card_Occupation1),
                new SqlParameter("@Card_Off",card.Card_Off1),
                new SqlParameter("@Card_Img",card.Card_Img1)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
