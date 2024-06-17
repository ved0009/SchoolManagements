using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.Model
{
    public class MCommon
    {

    }

    public class MRole
    {
        public int Id { get; set; }
        public string RoleName { get; set; } = string.Empty;
        public int Isactive { get; set; }
    }

    public class ImagesLists
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public string ImageUrl { get; set; } = string.Empty;
        public int size { get; set; }
    }
    public enum ResponseEnum
    {
        Success = 0,
        Error = 1,
        No_Record_Found = 2,
        Failed = 3,
        Error_While_Inserting = 4,
        Found = 5,



    }

}
