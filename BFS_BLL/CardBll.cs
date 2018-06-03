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
    public class CardBll
    {
        //增加卡牌
        public static int addcard(Card card)
        {
            return CardDal.addcard(card);
        }
        //修改卡牌
        public static int updatecard(Card card)
        {
            return CardDal.updatecard(card);
        }
        //删除卡牌
        public static int deletecard(int cardid)
        {
            return CardDal.deletecard(cardid);
        }
        //查询所有卡牌
        public static DataTable allcard()
        {
            return CardDal.allcard();
        }
        //根据ID卡牌查询卡牌信息
        public static SqlDataReader idcard(int card_id)
        {
            return CardDal.idcard(card_id);
        }
        //根据版本查询所有卡牌
        public static DataTable selectcard(string card_off)
        {
            return CardDal.selectcard(card_off);
        }
        //根据版本，职业查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation)
        {
            return CardDal.selectcard(card_off,card_occupation);
        }
        //根据版本，职业，费用查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation, int card_cost)
        {
            return CardDal.selectcard(card_off, card_occupation, card_cost);
        }
        //根据版本，职业，费用,种族查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation, int card_cost,string card_race)
        {
            return CardDal.selectcard(card_off, card_occupation, card_cost,card_race);
        }
        //根据版本，职业，费用,种族，稀有度查询所有卡牌
        public static DataTable selectcard(string card_off, string card_occupation, int card_cost, string card_race,string card_rd)
        {
            return CardDal.selectcard(card_off, card_occupation, card_cost, card_race,card_rd);
        }
        //根据卡牌名称查询卡牌
        public static DataTable namecard(string card_name)
        {
            return CardDal.namecard(card_name);
        }
    }
}
