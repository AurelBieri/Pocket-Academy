using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Security.Cryptography;

namespace pocketacademy.Models
{
    class User
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }

        public User(string username, string password, string email) 
        {
            Username = username;
            Password = password;
            Email = email;
        }

        public static string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }

    }
}
