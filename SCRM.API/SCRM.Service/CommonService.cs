using System.Data.Common;
using System.Data;
using Dapper;
using SCRM.IService;
using Microsoft.Extensions.Configuration;
using MySqlConnector;
using SCRM.Model;
using System.Security.Claims;
using System.Text;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.IdentityModel.Tokens;
using System.IO.IsolatedStorage;
using Microsoft.AspNetCore.Http;
using static System.Net.Mime.MediaTypeNames;

namespace SCRM.Service
{
    public class CommonService : ICommonService
    {
        private readonly IDapperConnections _dapper;
        //private readonly IWebHostEnvironment _end;

        private static readonly string Secret = "your_secret_key_here";

        private Response response;

        public CommonService(IDapperConnections dapper)
        {
            _dapper = dapper;
        }

        public Response CheckDb()
        {
            using (response = new Response())
            {
                try
                {
                    List<TestDb> mCountries = new List<TestDb>();
                    var param = new DynamicParameters();
                    param.Add("@mynum", 1, DbType.Int32);
                    mCountries = _dapper.GetAll<TestDb>("sp_test", param, commandType: CommandType.StoredProcedure);
                    if (mCountries.Count > 0)
                    {

                        response.totalRecords = mCountries.Count;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = mCountries;
                        
                    }
                    else
                    {
                        response.totalRecords = mCountries.Count;
                        response.message = "No record found";
                        response.success = false;
                        response.responseData = null;
                       

                    }
                }
                catch (Exception ex)
                {
                    response.totalRecords = -1;
                    response.message = ex.Message;
                    response.success = false;
                    response.responseData = ex.Message;
                    

                }

            }
            return response;
        }

        public Response ProfileDetails(int userid)
        {
            using (response = new Response())
            {
                try
                {
                   MUserProfileDetails profile = new MUserProfileDetails();
                    var param = new DynamicParameters();
                    param.Add("puserid", userid, DbType.Int32);
                    profile = _dapper.Get<MUserProfileDetails>("sp_get_userdetails", param, commandType: CommandType.StoredProcedure);
                    if (profile != null)
                    {

                        response.totalRecords =1;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = profile;

                    }
                    else
                    {
                        response.totalRecords = 0;
                        response.message = "No record found";
                        response.success = false;
                        response.responseData = null;


                    }
                }
                catch (Exception ex)
                {
                    response.totalRecords = -1;
                    response.message = ex.Message;
                    response.success = false;
                    response.responseData = ex.Message;
                }

            }
            return response;
        }

        public Response GetRole()
        {
            using (response = new Response())
            {
                try
                {
                    List<MRole> roles = new List<MRole>();
                    var param = new DynamicParameters();

                    roles = _dapper.GetAll<MRole>("sp_GetRoles", param, commandType: CommandType.StoredProcedure);
                    if (roles.Count > 0)
                    {

                        response.totalRecords = roles.Count;
                        response.statusCode = 200;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = roles;

                    }
                    else
                    {
                        response.totalRecords = roles.Count;
                        response.statusCode = 404;
                        response.message = "No record found";
                        response.success = false;
                        response.responseData = null;
                    }
                }
                catch (Exception ex)
                {
                    response.totalRecords = -1;
                    response.message = ex.Message;
                    response.success = false;
                    response.responseData = ex.Message;


                }

            }
            return response;
        }

        public Response CreateUserLogins(int userid)
        {
            throw new NotImplementedException();
        }

        public Response DeleteFiles(string FileName, string FileTypes)
        {
            throw new NotImplementedException();
        }

        public Response UploadFiles(IFormFile image, string FileTypes)
        {
            using (response = new Response())
            {
                try
                {
                   

                     if (image != null || image.Length > 0)
                    {

                         response.statusCode = 200;
                        response.message = "Success";
                        response.success = true;
 
                    }
                    else
                    {
                        //response.totalRecords = image./*Length*/;
                        response.statusCode = 404;
                        response.message = "No images found while uploading";
                        response.success = false;
                        response.responseData = null;
                    }
                }
                catch (Exception ex)
                {
                    response.totalRecords = -1;
                    response.message = ex.Message;
                    response.success = false;
                    response.responseData = ex.Message;


                }

            }
            return response;


            //if (image == null || image.Length == 0)
            //    return BadRequest("No file uploaded.");

            //var uploadsPath = Path.Combine(_env.WebRootPath, "Images/" + FilesTypes);
            //if (!Directory.Exists(uploadsPath))
            //{
            //    Directory.CreateDirectory(uploadsPath);
            //}

            //var filePath = Path.Combine(uploadsPath, image.FileName);
            //using (var stream = new FileStream(filePath, FileMode.Create))
            //{
            //    image.CopyToAsync(stream);
            //}

            //var fileUrl = $"{Request.Scheme}://{Request.Host}/Images/{FilesTypes}/{image.FileName}";
        }
    }
}