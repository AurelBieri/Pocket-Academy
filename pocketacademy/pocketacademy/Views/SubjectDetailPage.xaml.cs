using pocketacademy.Models;
using pocketacademy.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reactive.Subjects;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using pocketacademy.Database;

#if __ANDROID__
using Firebase.Storage;
using Firebase.Database;
using Firebase.Database.Query;
#endif

namespace pocketacademy.Views
{
    public partial class SubjectDetailPage : ContentPage
    {
        private readonly Subjecte _subject;
        private List<string> selectedFiles = new List<string>();
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
                    var button = new Button
                    {
                        Text = file,
                        Command = new Command(async () => await _firebaseService.DownloadFileAsync($"files/{_subject.Name.ToLower()}/{file}"))
                    };
                    fileList.Children.Add(button);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error loading details: {ex.Message}");
                // Optionally show an alert or some UI indication of the error
            }
        }

        private async void OnChooseFileClicked(object sender, EventArgs e)
        {
            try
            {
                var customFileType = new FilePickerFileType(
                    new Dictionary<DevicePlatform, IEnumerable<string>>
                    {
                    { DevicePlatform.Android, new[] { "*/*" } },
                    { DevicePlatform.UWP, new[] { "." } }
                    });

                var result = await FilePicker.PickMultipleAsync(new PickOptions
                {
                    FileTypes = customFileType,
                    PickerTitle = "Select files to upload"
                });

                if (result != null)
                {
                    selectedFiles = result.Select(file => file.FullPath).ToList();
                    fileListView.ItemsSource = selectedFiles;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }

        private async void OnUploadFilesClicked(object sender, EventArgs e)
        {
            if (_subject == null)
            {
                await DisplayAlert("Error", "No subject selected", "OK");
                return;
            }

            await _firebaseService.UploadFileAsync(_subject.Name, selectedFiles);
            await DisplayAlert("Success", "Files uploaded successfully", "OK");
        }
    }
}
