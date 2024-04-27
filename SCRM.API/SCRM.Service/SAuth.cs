using Dapper;
using Microsoft.Extensions.Configuration;
using SCRM.IService;
using SCRM.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.Service
{
    public class SAuth : IAuth
    {
        private readonly IDapperConnections _dapper;
         private readonly IConfiguration _config;
        Response response;
        public SAuth(IDapperConnections dapper,IConfiguration config)
        {
                _dapper = dapper;
            _config = config;
        }

        public Response Login(MUserLogin login)
        {
            using (response = new Response())
            {
                try
                {
                    var dbparams = new DynamicParameters();
                    dbparams.Add("", login.UserName, DbType.String);
                    dbparams.Add("", login.Password, DbType.String);
                    var result = new MUserLoginDetail();
                    result = _dapper.Get<MUserLoginDetail>("sp_get_all_users", dbparams, commandType: CommandType.StoredProcedure);
                    if (result.UserId != 0)
                    {

                        var token = Helper.GenerateToken(result,_config);

                        response.totalRecords = 1;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = result;
                        response.token = token;

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
    }
}
