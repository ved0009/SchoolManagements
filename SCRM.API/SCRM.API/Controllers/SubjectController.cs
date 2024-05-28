using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SCRM.IService;
using SCRM.Model;

namespace SCRM.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SubjectController : ControllerBase
    {
        private readonly ISubject  _subject;

        public SubjectController(ISubject subject)
        {
            _subject = subject;
        }

        [HttpPost("GetAllSubjects")]
        public IActionResult GetAllSubjects(getAllMSubject getAllMSubject)
        {

            var data = _subject.GetAllSubjects(getAllMSubject);
            return Ok(data);
        }
        [HttpPost("GetAllSubjectsN")]
        public IActionResult GetAllSubjectsN(getAllMSubject getAllMSubject)
        {

            var data = _subject.GetAllSubjectsN(getAllMSubject);
            return Ok(data);
        }

        [HttpPost("GetAllSubjectsByID")]
        public IActionResult GetAllSubjectsById(getAllMSubjectById getAllMSubjectById)
        {

            var data = _subject.GetAllSubjectsById(getAllMSubjectById);
            return Ok(data);
        }

        [HttpPost("InsertUpdateSubjects")]
        public IActionResult InsertUpdateSubjects(insertMSubjectDetail insertMSubject)
        {

            var data = _subject.InsertUpdateSubjects(insertMSubject);
            return Ok(data);
        }

    }
}
