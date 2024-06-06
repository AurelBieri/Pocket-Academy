using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Firebase.Database;
using Firebase.Storage;
using pocketacademy.Droid;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using pocketacademy.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reactive.Subjects;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Firebase.Storage;
using Firebase.Database;
using Firebase.Database.Query;
using pocketacademy.Services;

[assembly: Dependency(typeof(FirebaseService))]
namespace pocketacademy.Droid
{
    public class FirebaseService : IFirebaseService
    {
        private readonly FirebaseStorage _firebaseStorage;
        private readonly FirebaseClient _firebaseClient;

        public FirebaseService()
        {
            _firebaseStorage = new FirebaseStorage("pocket-academy-database.appspot.com");
            _firebaseClient = new FirebaseClient("https://pocket-academy-database-default-rtdb.europe-west1.firebasedatabase.app/");
        }

        public async Task<string> GetFileUrlAsync(string path)
        {
            var storageReference = _firebaseStorage.Child(path);
            return await storageReference.GetDownloadUrlAsync();
        }

        public async Task<List<FileMetadata>> GetFilesAsync(string subjectName)
        {
            var files = await _firebaseClient
                .Child("subjects")
                .Child(subjectName.ToLower())
                .Child("files")
                .OnceAsync<FileMetadata>();

            return files.Select(item => new FileMetadata
            {
                FileName = item.Object.FileName,
                FileUrl = item.Object.FileUrl
            }).ToList();
        }

        public async Task DownloadFileAsync(string fileUrl)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    var fileBytes = await client.GetByteArrayAsync(fileUrl);
                    var fileName = Path.GetFileName(new Uri(fileUrl).LocalPath);
                    var filePath = Path.Combine(FileSystem.CacheDirectory, fileName);
                    File.WriteAllBytes(filePath, fileBytes);
                    await Launcher.OpenAsync(new OpenFileRequest
                    {
                        File = new ReadOnlyFile(filePath)
                    });
                }
            }
            catch (Exception ex)
            {

            }
        }
    

    public async Task UploadFileAsync(string subjectName, List<string> files)
        {
            foreach (var file in files)
            {
                var fileName = Path.GetFileName(file);
                var fileStream = File.OpenRead(file);
                var storageReference = _firebaseStorage
                    .Child("files")
                    .Child(subjectName.ToLower())
                    .Child(fileName);

                await storageReference.PutAsync(fileStream);
                var fileUrl = await storageReference.GetDownloadUrlAsync();
                await SaveFileMetadata(subjectName, fileName, fileUrl);
            }
        }

        private async Task SaveFileMetadata(string subjectName, string fileName, string fileUrl)
        {
            var fileMetadata = new
            {
                FileName = fileName,
                FileUrl = fileUrl
            };

            await _firebaseClient
                .Child("subjects")
                .Child(subjectName.ToLower())
                .Child("files")
                .PostAsync(fileMetadata);
        }
    }
}