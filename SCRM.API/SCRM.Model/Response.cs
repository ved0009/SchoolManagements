using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SCRM.Model
{
    public class Response:IDisposable
    {
        public long transationId { get; set; } = DateTime.Now.Ticks;
        public int totalRecords { get; set; } = 0;
        public int statusCode { get; set; } = 404;
        public bool success { get; set; } = false;

        public string message { get; set; } = string.Empty;
        public object? responseData { get; set; } 
        public string token { get; set; } = string.Empty;

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
