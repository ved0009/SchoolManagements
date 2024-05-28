using Dapper;
using SCRM.IService;
using SCRM.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace SCRM.Service
{
    public class SSubject : ISubject
    {
        private readonly IDapperConnections _dapper;
        private static readonly string Secret = "your_secret_key_here";
        private Response response;
        public SSubject(IDapperConnections dapper)
        {
            _dapper = dapper;
        }
        public Response GetAllSubjects(getAllMSubject getAllMSubject)
        {
            using (response = new Response())
            {
                try
                {
                    List<getAllMSubject> SubjectLists = new List<getAllMSubject>();
                    var param = new DynamicParameters();
                    param.Add("@SchoolID", getAllMSubject.SchoolId, DbType.Int32);
                    var result = _dapper.GetAll<responseMSubject>("sp_std_GetAllSubjects", param, commandType: CommandType.StoredProcedure);
                    if (SubjectLists != null)
                    {

                        response.totalRecords = 1;
                        response.message = "Success";
                        response.success = true;
                        response.statusCode = 200;
                        response.responseData = result;

                    }
                    else
                    {
                        response.totalRecords = 0;
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

        public Response GetAllSubjectsById(getAllMSubjectById getAllMSubjectById)
        {

            using (response = new Response())
            {
                try
                {
                   
                    var param = new DynamicParameters();
                    param.Add("@SchoolID", getAllMSubjectById.SchoolId, DbType.Int32);
                    param.Add("@ClassID", getAllMSubjectById.ClassID, DbType.Int32);
                     var SubjectListsbyiId = _dapper.GetAll<responseMSubject>("sp_std_GetAllSubjectsByID", param, commandType: CommandType.StoredProcedure);
                    if (SubjectListsbyiId != null)
                    {

                        response.totalRecords = 1;
                        response.message = "Success";
                        response.success = true;
                        response.statusCode = 200;
                        response.responseData = SubjectListsbyiId;

                    }
                    else
                    {
                        response.totalRecords = 0;
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

        public Response InsertUpdateSubjects(insertMSubjectDetail insertMSubject)
        {

            DataTable dt = new DataTable();
            dt.Columns.Add("SubjectName", typeof(string));
            dt.Columns.Add("Marks", typeof(int));
            dt.Columns.Add("isRemoved", typeof(bool));

            foreach (var subject in insertMSubject.typSubjectDetailjson)
            {
                dt.Rows.Add(subject.SubjectName, subject.Marks, subject.isRemoved);
            }

            using (response = new Response())
            {
                try
                {

                    var param = new DynamicParameters();
                    param.Add("@ClassID", insertMSubject.ClassID, DbType.Int32);
                    param.Add("@SchoolID", insertMSubject.SchoolId, DbType.String);
                    param.Add("@CreatedBy", insertMSubject.CreatedBy, DbType.String);
                    param.Add("@typSubjects", dt.AsTableValuedParameter("typSubjects"), DbType.Int32);                  
                    var result = _dapper.Insert<string>("sp_std_InsertUpdateSubjects", param, commandType: CommandType.StoredProcedure);
                    if (result == "success")
                    {
                        response.totalRecords = 1;
                        response.statusCode = 200;
                        response.message = "New Subject created";
                        response.success = true;
                        response.responseData = "New Subject created";
                    }
                    else
                    {
                        response.totalRecords = 0;
                        response.statusCode = 401;
                        response.message = "Something went wrong while creating new class";
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
        public Response GetAllSubjectsN(getAllMSubject request)
        {
            using (response = new Response())
            {
                try
                {
                    List<getsubjctsN> classHeaders = new List<getsubjctsN>();
                    List<getsubjctsbDetail> subjectDetails = new List<getsubjctsbDetail>();

                    var param = new DynamicParameters();
                    param.Add("@SchoolID", request.SchoolId, DbType.Int32);

                    // First execution for aggregated results
                    classHeaders = _dapper.GetAll<getsubjctsN>("sp_std_GetAllSubjectsHeader", param, commandType: CommandType.StoredProcedure).ToList();

                    // Second execution for detailed results
                    subjectDetails = _dapper.GetAll<getsubjctsbDetail>("sp_std_GetAllSubjectsDetail", param, commandType: CommandType.StoredProcedure).ToList();

                    if (classHeaders.Any() && subjectDetails.Any())
                    {
                        // Grouping detailed results by ClassID and SchoolID
                        var groupedDetails = subjectDetails
                            .GroupBy(d => new { d.ClassID, d.SchoolId })
                            .ToDictionary(g => g.Key, g => g.ToList());

                        // Adding the grouped details to the corresponding class headers
                        foreach (var header in classHeaders)
                        {
                            header.SubjectDetails = groupedDetails
                                .GetValueOrDefault(new { header.ClassID, header.SchoolId }, new List<getsubjctsbDetail>());
                        }

                        response.totalRecords = classHeaders.Count;
                        response.message = "Success";
                        response.success = true;
                        response.statusCode = 200;
                        response.responseData = classHeaders;
                    }
                    else
                    {
                        response.totalRecords = 0;
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




    }
}
