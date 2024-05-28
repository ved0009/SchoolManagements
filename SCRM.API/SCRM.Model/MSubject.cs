using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.Model
{
    public class responseMSubject
    {
        public Int32 ID { get; set; }
        public Int32? ClassID { get; set; }
        public Int32? SchoolId { get; set; }
        public String SubjectName { get; set; }
        public Int32? Marks { get; set; }
        public DateTime? CreatedOn { get; set; }
        public String CreatedBy { get; set; }
       
    }
    public class getAllMSubject
    {
        public Int32? SchoolId { get; set; }
    }
    public class getAllMSubjectById
    {
        public Int32? SchoolId { get; set; }
        public Int32? ClassID { get; set; }

    }

    public class MSubjectDetail
    {
        public String SubjectName { get; set; }
        public Int32 Marks { get; set; }
        public Boolean isRemoved { get; set; }

    }
    public class insertMSubjectDetail
    {
        public Int32? ClassID { get; set; }
        public Int32? SchoolId { get; set; }
        public String CreatedBy { get; set; }
        public string? typOrderDetail { get; set; }
        public List<MSubjectDetail> typSubjectDetailjson { get; set; } = new List<MSubjectDetail>();

    }
    public class getsubjctsN
    {
        public Int32? ClassID { get; set; }
        public string? ClassName { get; set; }


        public Int32? SchoolId { get; set; }
        public Int32? TotalMarks { get; set; }

        public Int32? TotalSubjects { get; set; }

        public List<getsubjctsbDetail> SubjectDetails { get; set; }
    }
    public class getsubjctsbDetail
    {
        public Int32 ID { get; set; }
        public Int32? ClassID { get; set; }
        public Int32? SchoolId { get; set; }
        public String SubjectName { get; set; }
        public Int32 Marks { get; set; }
    }

    }
