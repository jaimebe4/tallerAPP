using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TallerApp.Views;

namespace TallerApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ServicesPage : ContentPage
    {
        public ServicesPage()
        {
            InitializeComponent();
        }

        private void Entry_TextChanged(object sender, TextChangedEventArgs e)
        {

            if (e.NewTextValue.Contains("."))
            {
                if (e.NewTextValue.Length - 1 - e.NewTextValue.IndexOf(".") > 2)
                {
                    var s = e.NewTextValue.Substring(0, e.NewTextValue.IndexOf(".") + 2 + 1);
                    lbl_servicePrice.Text = s;
                    lbl_servicePrice.SelectionLength = s.Length;
                }
            }

        }
    }
}