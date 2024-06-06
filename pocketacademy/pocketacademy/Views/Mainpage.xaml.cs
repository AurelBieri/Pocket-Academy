using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using pocketacademy.Models;
using pocketacademy.Database;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace pocketacademy.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Mainpage : ContentPage
    {
        public List<Subjecte> Subjects { get; set; }
        public List<Subjecte> FilteredSubjects { get; set; }

        public Mainpage()
        {
            InitializeComponent();
            InitializeDataAsync();
        }

        private async Task InitializeDataAsync()
        {
            Subjects = await GetSubjects();
            FilteredSubjects = new List<Subjecte>(Subjects);
            PopulateSubjectsGrid(Subjects);
        }

        private async Task<List<Subjecte>> GetSubjects()
        {
            List<Subjecte> subjects = new List<Subjecte>();
            subjects = await Databasehelper.GetAllSubject();
            return subjects;
        }

        private void PopulateSubjectsGrid(List<Subjecte> subjects)
        {
            subjectsGrid.Children.Clear();
            subjectsGrid.RowDefinitions.Clear();
            subjectsGrid.ColumnDefinitions.Clear();

            int columnCount = 3;
            int rowCount = (subjects.Count + columnCount - 1) / columnCount;

            for (int i = 0; i < rowCount; i++)
            {
                subjectsGrid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            }

            for (int j = 0; j < columnCount; j++)
            {
                subjectsGrid.ColumnDefinitions.Add(new ColumnDefinition { Width = GridLength.Star });
            }

            for (int i = 0; i < subjects.Count; i++)
            {
                var subject = subjects[i];
                var button = new Button
                {
                    Text = subject.Name,
                    CommandParameter = subject,
                    HeightRequest = 100,
                    Margin = new Thickness(5),
                    BackgroundColor = (Color)Application.Current.Resources["Primary"],
                    TextColor = Color.White
                };
                button.Clicked += OnSubjectClicked;

                int row = i / columnCount;
                int column = i % columnCount;

                subjectsGrid.Children.Add(button, column, row);
            }
        }

        private void OnSearchBarTextChanged(object sender, TextChangedEventArgs e)
        {
            string searchText = e.NewTextValue?.ToLower() ?? string.Empty;
            FilteredSubjects = Subjects
                .Where(s => s.Name.ToLower().Contains(searchText))
                .ToList();
            PopulateSubjectsGrid(FilteredSubjects);
        }

        private async void OnSubjectClicked(object sender, EventArgs e)
        {
            var button = sender as Button;
            var subject = button?.CommandParameter as Subjecte;
            if (subject != null)
            {
                await Navigation.PushAsync(new SubjectDetailPage(subject));
            }
        }

        public async void OnHomeClicked(object sender, EventArgs e)
        {
            await DisplayAlert("Home", "Home button clicked", "OK");
        }

        public async void OnAccountSettingsClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AccountSettingsPage());
        }
    }
}
