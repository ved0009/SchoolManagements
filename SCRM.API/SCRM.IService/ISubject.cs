using SCRM.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.IService
{
    public interface ISubject
    {
        Response GetAllSubjects(getAllMSubject getAllMSubject);
        Response GetAllSubjectsN(getAllMSubject getAllMSubject);

        Response GetAllSubjectsById(getAllMSubjectById getAllMSubjectById);
        Response InsertUpdateSubjects(insertMSubjectDetail insertMSubject);
    }
}
