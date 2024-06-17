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
    public class SAdmin : IAdmin 
    {
        private readonly IDapperConnections _dapper;
         
        Response response;
        public SAdmin(IDapperConnections dapper)
        {
                _dapper = dapper;
             
        }

        public Response GetAllRoutings()
        {
            using (response = new Response())
            {
                try
                {
                    List<AdminMenuLists> menuLists = new List<AdminMenuLists>();    
                    var dbparams = new DynamicParameters();
                    dbparams.Add("@proles", 1, DbType.Int32);
                    dbparams.Add("@prolename", "Hello", DbType.String);

                    menuLists = _dapper.GetAll<AdminMenuLists>("sp_Admin_GetMenus", dbparams, commandType: CommandType.StoredProcedure);
                    if (menuLists.Count >0)
                    {
                       
                        response.totalRecords = menuLists.Count;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = menuLists;
                    }
                    else
                    {
                        response.totalRecords = 0;
                        response.message = "No ,menus";
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

        public Response InsertUpdateRoutings(AdminMenuLists menuLists)
        {
            using (response = new Response())
            {
                try
                {
                     var dbparams = new DynamicParameters();
                    dbparams.Add("@proles", 1, DbType.Int32);
                    dbparams.Add("@prolename", "Hello", DbType.String);

                    var result  = _dapper.Insert<string>("sp_Admin_GetMenus", dbparams, commandType: CommandType.StoredProcedure);
                    if (result == "success")
                    {

                        response.totalRecords = 1;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = result;
                    }
                    else
                    {
                        response.totalRecords = 0;
                        response.message = "Error while inserting";
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
