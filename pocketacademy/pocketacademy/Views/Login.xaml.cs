using pocketacademy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using pocketacademy.Database;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace pocketacademy.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Login : ContentPage
    {
        public Login()
        {
            InitializeComponent();
        }

        private async void buttonLogin_Click(object sender, EventArgs e)
        {
            string username = editTextUsername.Text;
            string password = editTextPassword.Text;
            password = User.HashPassword(password);
            List<User> users = new List<User>();
            users = await Databasehelper.GetAllUsers();

            var matchingUser = users.FirstOrDefault(user => user.Username == username && user.Password == password);

            if (matchingUser != null)
            {
                textViewMessage.Text = "Login successful!";
                // go to the main site
            }
            else
            {
                textViewMessage.Text = "Invalid username or password.";
            }

        }
    }
}