using System.ComponentModel;
using TallerApp.ViewModels;
using Xamarin.Forms;

namespace TallerApp.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}