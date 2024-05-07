using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SCRM.IService;

namespace SCRM.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {

        private readonly IStudent _students;

        public StudentController(IStudent students)
        {
            _students = students;
        }

        [HttpGet("GetAllStudentLists/{Id}")]

        public IActionResult GetAllStudentLists(int Id)
        {
            var result = _students.GetAllStudentLists(Id);
            return Ok(result);
        }

    }
}
