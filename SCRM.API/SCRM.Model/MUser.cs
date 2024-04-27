using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.Model
{
    public class MUser
    {
        public int Id { get; set; }
        public int Idd { get; set; }
    }


    public class MUserLogin
    {
        public string UserName { get; set; } = string.Empty;
        public string Password { get; set; }= string.Empty;

    }
    
    public class MUserLoginDetail
    {
        public string UserName { get; set; } = string.Empty;
        public int UserId { get; set; } 
        public string Email { get; set; }= string.Empty;
        public int Gender { get; set; } 

    }



}
