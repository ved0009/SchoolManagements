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

namespace SCRM.Service
{
    public class CommonService : ICommonService
    {
        private readonly IDapperConnections _dapper;
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
                    mCountries = _dapper.GetAll<TestDb>("sp_get_all_users", param, commandType: CommandType.StoredProcedure);
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
                    response.responseData = ex;
                    

                }

            }
            return response;
        }
    }
}