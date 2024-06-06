using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace pocketacademy.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AccountSettingsPage : ContentPage
    {
        public AccountSettingsPage()
        {
            InitializeComponent();
            // Beispiel-Daten, ersetzen Sie dies durch echte Datenabrufe
            labelUsername.Text = "SampleUsername";
            labelEmail.Text = "sample@example.com";
        }

        private async void OnLogoutClicked(object sender, EventArgs e)
        {
            // Abmelde-Logik hier hinzufügen
            // Beispiel: Navigieren Sie zurück zur Login-Seite
            Application.Current.MainPage = new NavigationPage(new Login());
        }
    }
}
