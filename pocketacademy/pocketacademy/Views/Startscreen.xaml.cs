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
    public partial class Startscreen : ContentPage
    {
        public Startscreen()
        {
            InitializeComponent();
        }

        private async void buttonLogin_Click(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
        }

        private async void buttonRegister_Click(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Registration());
        }
    }
}