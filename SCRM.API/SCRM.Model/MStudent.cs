using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

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
        public string Name { get; set; }    = string.Empty;
        public string Image { get; set; } = string.Empty;
        public string StudentId { get; set; } = string.Empty;
        public string Class { get; set; } = string.Empty;   
    }

    public class InsertUpdateStudentDetails
    {
        public int StudentId { get; set; } = 0;
        public string Name { get; set; } = string.Empty;                    
        public string Class { get; set; } = string.Empty;
        public string RegistrationNumber { get; set; } = string.Empty;
        public string Image { get; set; } = string.Empty;
        public DateTime DateOfAdmission { get; set; }
        public decimal FeeDiscount { get; set; }
        public string Mobile { get; set; }

        // other infomations //

        public DateTime DateOfBirth { get; set; }
        public int StudentBirthNicId { get; set; }
        public int Orphan { get; set; }
        public int Gender { get; set; }
        public int OSC { get; set; }
        public string IdentityMarks { get; set; } = string.Empty;
        public string PreviousSchool { get; set; } = string.Empty;
        public int Religion { get; set; }
        public int BloodGroup { get; set; }
        public string BoardRollNumber { get; set; } = string.Empty;
        public string FamilyAddress { get; set; } = string.Empty;   
        public string DiseaseIfAny { get; set; } = string.Empty;
        public string AnyAdditionalNotes { get; set; } = string.Empty;
        public int TotalSiblings { get; set; }
        public string Address { get; set; } = string.Empty;     


        public List<InsertUpdateStudentDetailsParentsInfo> insertUpdateStudentDetailsParentsInfos { get; set; }
    }

    public class InsertUpdateStudentDetailsParentsInfo
    {
        public int StudentId { get; set; }
        public string Name { get; set; } = string.Empty;
        public int NationalId { get; set; }
        public int OccupationType { get; set; }
       public string ParrentType { get; set; } = string.Empty;
        public int EducationType { get; set; }
        public string Mobile { get; set; } = string.Empty;
      //  public string Profession { get; set; }
        public double Income { get; set; } = double.NaN;
    }



    //// other infomations //

    //public DateTime DateOfBirth { get; set; }
    //public int StudentBirthNicId { get; set; }
    //public int Orphan { get; set; }
    //public int Gender { get; set; }
    //public int OSC { get; set; }
    //public string IdentityMarks { get; set; }
    //public string PreviousSchool { get; set; }
    //public int Religion { get; set; }
    //public int BloodGroup { get; set; }
    //public string BoardRollNumber { get; set; }
    //public string FamilyAddress { get; set; }
    //public string DiseaseIfAny { get; set; }
    //public string AnyAdditionalNotes { get; set; }
    //public int TotalSiblings { get; set; }
    //public string  Address { get; set; }
    //public List<InsertUpdateStudentDetailsParentsInfo> insertUpdateStudentDetailsParentsInfos { get; set; }


    

}