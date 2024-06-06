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
                try
                {
                    var imageUrl = await _firebaseService.GetFileUrlAsync($"images/{_subject.Name.ToLower()}.jpg");
                    subjectImage.Source = ImageSource.FromUri(new Uri(imageUrl));
                    subjectImage.IsVisible = true;
                    noImageLabel.IsVisible = false;
                }
                catch (Exception imageEx)
                {
                    Debug.WriteLine($"Image not found for subject {_subject.Name}: {imageEx.Message}");
                    subjectImage.IsVisible = false;
                    noImageLabel.IsVisible = true;
                }

                var files = await _firebaseService.GetFilesAsync(_subject.Name.ToLower());
                foreach (var fileMetadata in files)
                {
                    var button = new Button
                    {
                        Text = fileMetadata.FileName,
                        Command = new Command(async () => await _firebaseService.DownloadFileAsync(fileMetadata.FileUrl))
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
