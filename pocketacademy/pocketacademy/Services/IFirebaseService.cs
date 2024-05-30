using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace pocketacademy.Services
{
    public interface IFirebaseService
    {
        Task<string> GetFileUrlAsync(string path);
        Task<List<string>> GetFilesAsync(string path);
        Task DownloadFileAsync(string path);
        Task UploadFileAsync(string subjectName, List<string> files);
    }
}
