using System;
using System.Collections.Generic;
using System.Linq;
using Xamarin.Essentials;
using Xamarin.Forms;
using pocketacademy.Services;

namespace pocketacademy.Views
{
    public partial class FileUploadPage : ContentPage
    {
        private List<string> selectedFiles = new List<string>();
        private readonly string _subjectName;
        private IFirebaseService _firebaseService;

        public FileUploadPage(string subjectName)
        {
            InitializeComponent();
            _subjectName = subjectName;
            _firebaseService = DependencyService.Get<IFirebaseService>();
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
            if (selectedFiles == null || !selectedFiles.Any())
            {
                await DisplayAlert("Error", "No files selected", "OK");
                return;
            }

            try
            {
                await _firebaseService.UploadFileAsync(_subjectName, selectedFiles);
                await DisplayAlert("Success", "Files uploaded successfully", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Error uploading files: {ex.Message}", "OK");
            }
        }
    }
}
