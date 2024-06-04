using pocketacademy.Models;
using pocketacademy.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Forms;
using pocketacademy.Database;
using System.Web;
using System.Text.RegularExpressions;

namespace pocketacademy.Views
{
    public partial class SubjectDetailPage : ContentPage
    {
        private readonly Subjecte _subject;
        private IFirebaseService _firebaseService;

        public SubjectDetailPage(Subjecte subject)
        {
            InitializeComponent();
            _subject = subject;
            _firebaseService = DependencyService.Get<IFirebaseService>();

            subjectNameLabel.Text = _subject.Name;
            LoadSubjectDetails();
        }

        private async void LoadSubjectDetails()
        {
            try
            {
                var imageUrl = await _firebaseService.GetFileUrlAsync($"images/{_subject.Name.ToLower()}.jpg");
                subjectImage.Source = ImageSource.FromUri(new Uri(imageUrl));

                var files = await Databasehelper.GetFidlesAsync(_subject.Name.ToLower());
                foreach (var file in files)
                {
                    var match = Regex.Match(file, @"([^\/\\]+)\?");
                    var fileName = match.Success ? match.Groups[1].Value : "Unknown";
                    var button = new Button
                    {
                        Text = fileName,
                        Command = new Command(async () => await _firebaseService.DownloadFileAsync($"files/{_subject.Name.ToLower()}/{fileName}"))
                    };
                    fileList.Children.Add(button);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error loading details: {ex.Message}");
            }


        }

        private async void OnOpenFileUploadPageClicked(object sender, EventArgs e)
        {
            var fileUploadPage = new FileUploadPage(_subject.Name);
            await Navigation.PushAsync(fileUploadPage);
        }
    }
}
