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
        public int Id { get; set; } = 0;
        public int dml { get; set; } = 0;


    }
}
