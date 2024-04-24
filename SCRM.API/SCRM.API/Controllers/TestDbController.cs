using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SCRM.IService;

namespace SCRM.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TestDbController : ControllerBase
    {

        private readonly ICommonService _commonService;

        public TestDbController(ICommonService commonService)
        {
                _commonService = commonService;
        }

        [HttpGet("TestDbConnection")]

        public IActionResult TestDbConnection()
        {
            var result = _commonService.CheckDb();
            return Ok(result);    
        }
    }
}
