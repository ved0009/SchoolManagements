using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SCRM.IService;
using System.Security.Claims;

namespace SCRM.API.Controllers
{
    [Route("api/[controller]")]
    // [Authorize]
    [ApiController]
    public class CommonController : ControllerBase
    {
        private readonly ICommonService _commonService;
        private readonly IWebHostEnvironment _env;


        public CommonController(ICommonService commonService, IWebHostEnvironment env)
        {
            _commonService = commonService;
            _env = env;


        }

        [HttpGet("GetProfileDetails")]
        public IActionResult GetProfileDetails()
        {
            int userId = Convert.ToInt32(HttpContext.User.FindFirst("UserId").Value);
            var data = _commonService.GetUserMenus(userId);
            return Ok(data);
        }
        [HttpGet("GetUserMenus")]
        public IActionResult GetUserMenus()
        {
            //int userId = Convert.ToInt32(HttpContext.User.FindFirst("UserId").Value);
            int userId = 5;
            var data = _commonService.GetUserMenus(userId);
            return Ok(data);
        }

        [HttpGet("GetRoles")]
        public IActionResult GetRoles()
        {
            var data = _commonService.GetRole();
            return Ok(data);
        }




        [HttpPost("UploadImage")]
        public IActionResult UploadImage(IFormFile image, string FilesTypes)
        {
            var data = _commonService.UploadFiles(image, FilesTypes);

            return Ok(new { url = data });
        }

        [HttpDelete("DeleteFiles")]
        public IActionResult DeleteFiles(string filesName, string FileTypes)
        {
            return Ok(new { filesName = filesName, message = "File deleted successfully" });
        }


    }
}
