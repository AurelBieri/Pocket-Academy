using System;
using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Android;
using Xamarin.Essentials;
using pocketacademy;
using AndroidX.Core.App;
using AndroidX.Core.Content;

namespace YourNamespace.Droid
{
    [Activity(Label = "YourAppName", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState); // Essential for Xamarin.Essentials
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState); // Initialize Xamarin.Forms
            LoadApplication(new App()); // Load your Xamarin.Forms app
            RequestStoragePermissions(); // Custom method to handle permission request
        }

        void RequestStoragePermissions()
        {
            if (Build.VERSION.SdkInt >= BuildVersionCodes.M)
            {
                if (CheckSelfPermission(Manifest.Permission.ReadExternalStorage) != Permission.Granted
                    || CheckSelfPermission(Manifest.Permission.WriteExternalStorage) != Permission.Granted)
                {
                    RequestPermissions(new string[] { Manifest.Permission.ReadExternalStorage, Manifest.Permission.WriteExternalStorage }, 0);
                }
            }
        }

    }
}
