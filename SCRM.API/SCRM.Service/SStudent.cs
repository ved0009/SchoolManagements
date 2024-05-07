using Dapper;
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
    public class SStudent : IStudent
    {
        private readonly IDapperConnections _dapper;
        private static readonly string Secret = "your_secret_key_here";

        private Response response;

        public SStudent(IDapperConnections dapper)
        {
            _dapper = dapper;
        }

        public Response GetAllStudentLists(int Id)
        {
            using (response = new Response())
            {
                try
                {
                    List<StudentList> studentLists = new List<StudentList>();
                    var param = new DynamicParameters();
                    param.Add("@createdBy", Id, DbType.Int32);
                    studentLists = _dapper.GetAll<StudentList>("sp_std_GetAllStudents", param, commandType: CommandType.StoredProcedure);
                    if (studentLists != null)
                    {

                        response.totalRecords = 1;
                        response.message = "Success";
                        response.success = true;
                        response.responseData = studentLists;

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