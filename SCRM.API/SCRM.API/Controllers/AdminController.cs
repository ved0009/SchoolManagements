using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SCRM.IService;
using SCRM.Model;

namespace SCRM.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminController : ControllerBase
    {
        private readonly IAdmin _admin;
        public AdminController(IAdmin admin)
        {
            _admin = admin;
        }

        [HttpGet("GetAllRoutings")]
        public IActionResult GetAllRoutings()
        {
            var result = _admin.GetAllRoutings();
            return Ok(result);
        }
    }
}
