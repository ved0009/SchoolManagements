using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.Model
{
    public class MStudent
    {

    }

    public class StudentList
    {
        // sp name = sp_std_GetAllStudents
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string StudentId { get; set; }
    }

    public class InsertUpdateStudentDetails
    {
        public int StudentId { get; set; } = 0;
        public string Name { get; set; }  
        public string Class { get; set; }  
        public string Section { get; set; }  
        public string Image { get; set; }  
        public DateTime DateOfAdmission { get; set; }  
        public decimal FeeDiscount { get; set; }  
        public string Mobile { get; set; }  

 

    }
}
