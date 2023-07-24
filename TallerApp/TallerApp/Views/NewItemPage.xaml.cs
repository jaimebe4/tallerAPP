using System;
using System.Collections.Generic;
using System.ComponentModel;
using TallerApp.Models;
using TallerApp.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TallerApp.Views
{
    public partial class NewItemPage : ContentPage
    {
        public Item Item { get; set; }

        public NewItemPage()
        {
            InitializeComponent();
            BindingContext = new NewItemViewModel();
        }
    }
}