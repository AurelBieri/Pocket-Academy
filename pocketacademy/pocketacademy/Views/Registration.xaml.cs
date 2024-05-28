using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using pocketacademy.Models;
using pocketacademy.Database;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace pocketacademy.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Registration : ContentPage
    {
        public Registration()
        {
            InitializeComponent();
        }

        private void buttonRegister_Click(object sender, EventArgs e)
        {
            string username = editTextUsername.Text;
            string password = editTextPassword.Text;
            string email = editTextEmail.Text;

            bool isEmailValid = Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$");

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password) || string.IsNullOrWhiteSpace(email))
            {
                textViewMessage.Text = "Please fill in all fields.";
                return;
            }
            else if (!isEmailValid)
            {
                textViewMessage.Text = "Please enter a valid email address.";
                return;
            }
            else if (password.Length < 8)
            {
                textViewMessage.Text = "Password must be at least 8 characters long.";
                return;
            }

            password = User.HashPassword(password);

            User user = new User(username, password, email);

            Databasehelper.PostUserInfo(user);

            textViewMessage.Text = "Registration successful!";
        }
    }
}