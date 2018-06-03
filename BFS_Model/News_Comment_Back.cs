using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BFS_Model
{
    public class News_Comment_Back
    {
        private int CB_ID;
        private string CB_Content;
        private DateTime CN_Time;
        private string CB_Users_Name;
        private int CB_NC_ID;

        public int CB_ID1
        {
            get
            {
                return CB_ID;
            }

            set
            {
                CB_ID = value;
            }
        }

        public string CB_Content1
        {
            get
            {
                return CB_Content;
            }

            set
            {
                CB_Content = value;
            }
        }

        public DateTime CN_Time1
        {
            get
            {
                return CN_Time;
            }

            set
            {
                CN_Time = value;
            }
        }

        public string CB_Users_Name1
        {
            get
            {
                return CB_Users_Name;
            }

            set
            {
                CB_Users_Name = value;
            }
        }

        public int CB_NC_ID1
        {
            get
            {
                return CB_NC_ID;
            }

            set
            {
                CB_NC_ID = value;
            }
        }
    }
}
