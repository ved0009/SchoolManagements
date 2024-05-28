using Microsoft.AspNetCore.Http;
using SCRM.Model;

namespace SCRM.IService
{
    public interface ICommonService
    {
        Response CheckDb();

        Response ProfileDetails(int userid);
  
        Response GetRole();
        Response CreateUserLogins(int userid);
        Response DeleteFiles(string FileName, string FileTypes);
        Response UploadFiles(IFormFile file, string FileTypes);
 
     }
}
