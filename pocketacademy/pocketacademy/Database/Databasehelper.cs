using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Schema;
using Firebase.Database;
using Firebase.Database.Query;
using pocketacademy.Models;
using System.Linq;
using System.Reactive.Subjects;


namespace pocketacademy.Database
{
    class Databasehelper
    {
        private readonly FirebaseClient _firebase;

        public Databasehelper()
        {
            _firebase = new FirebaseClient("https://pocket-academy-database-default-rtdb.europe-west1.firebasedatabase.app/");
        }

        public static  async Task PostUserInfo(User user)
        {
            var databaseHelper = new Databasehelper();

            var result = await databaseHelper._firebase
                .Child("User")
                .PostAsync(user);
        }

        public static async Task<List<User>> GetAllUsers()
        {
            var databaseHelper = new Databasehelper();
            var Users = await databaseHelper._firebase
                .Child("User")
                .OnceAsync<User>();

            return Users.Select(r => r.Object).ToList();
        }

        public static async Task PostSubjects(Subjecte subject)
        {
            var databaseHelper = new Databasehelper();

            var result = await databaseHelper._firebase
                .Child("Subject")
                .PostAsync(subject);
        }

        public static async Task<List<Subjecte>> GetAllSubject()
        {
            var databaseHelper = new Databasehelper();
            var subjects = await databaseHelper._firebase
                .Child("Subject")
                .OnceAsync<Subjecte>();
            return subjects.Select(r => r.Object).ToList();
        }

        public static async Task<List<string>> GetFidlesAsync(string subjectName)
        {
            var databaseHelper = new Databasehelper();
            var files = await databaseHelper._firebase
                .Child("subjects")
                .Child(subjectName.ToLower())
                .Child("files")
                .OnceAsync<FileMetadata>();

            return files.Select(item => $"{item.Object.FileName} ({item.Object.FileUrl})").ToList();
        }
    }
}
