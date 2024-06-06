using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
            labelUsername.Text = Application.Current.Properties["Username"] as string;
            labelEmail.Text = Application.Current.Properties["Email"] as string;
        }

        private async void OnLogoutClicked(object sender, EventArgs e)
        {
            // Abmelde-Logik hier hinzufügen
            // Beispiel: Navigieren Sie zurück zur Login-Seite
            Application.Current.MainPage = new NavigationPage(new Login());
        }

        public async void OnHomeClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Mainpage());
        }

        public async void OnAccountSettingsClicked(object sender, EventArgs e)
        {
            
        }

    }
}