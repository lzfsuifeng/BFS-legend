using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BFS_Model
{
    public class BBS_Comment
    {
        private int BC_ID;
        private string BC_Content;
        private DateTime BC_Time;
        private string BC_Users_Name;
        private int BC_BBS_ID;

        public int BC_ID1
        {
            get
            {
                return BC_ID;
            }

            set
            {
                BC_ID = value;
            }
        }

        public string BC_Content1
        {
            get
            {
                return BC_Content;
            }

            set
            {
                BC_Content = value;
            }
        }

        public DateTime BC_Time1
        {
            get
            {
                return BC_Time;
            }

            set
            {
                BC_Time = value;
            }
        }

        public string BC_Users_Name1
        {
            get
            {
                return BC_Users_Name;
            }

            set
            {
                BC_Users_Name = value;
            }
        }

        public int BC_BBS_ID1
        {
            get
            {
                return BC_BBS_ID;
            }

            set
            {
                BC_BBS_ID = value;
            }
        }
    }
}
