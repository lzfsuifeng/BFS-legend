using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BFS_Model
{
    public class News_Commentary
    {
        private int NC_ID;
        private string NC_Content;
        private DateTime NC_Time;
        private string NC_User_Name;
        private int NC_News_ID;

        public int NC_ID1
        {
            get
            {
                return NC_ID;
            }

            set
            {
                NC_ID = value;
            }
        }

        public string NC_Content1
        {
            get
            {
                return NC_Content;
            }

            set
            {
                NC_Content = value;
            }
        }

        public DateTime NC_Time1
        {
            get
            {
                return NC_Time;
            }

            set
            {
                NC_Time = value;
            }
        }

        public string NC_User_Name1
        {
            get
            {
                return NC_User_Name;
            }

            set
            {
                NC_User_Name = value;
            }
        }

        public int NC_News_ID1
        {
            get
            {
                return NC_News_ID;
            }

            set
            {
                NC_News_ID = value;
            }
        }
    }
}
