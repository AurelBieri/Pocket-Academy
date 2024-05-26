using pocketacademy.Services;
using pocketacademy.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace pocketacademy
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            MainPage = new NavigationPage(new Startscreen());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
