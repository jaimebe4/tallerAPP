using System;
using System.Collections.Generic;
using TallerApp.ViewModels;
using TallerApp.Views;
using Xamarin.Forms;

namespace TallerApp
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
        }

        private async void OnMenuItemClicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("//LoginPage");
        }
    }
}
