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
        private void btn_registrar_Clicked(object sender, EventArgs e)
        {
            cleanForm();
            DisplayAlert("Servicio Registrado", "Haz registrado el Servicio", "Cerrar");
        }

        private void cleanForm()
        {
            pkr_serviceVehicle.SelectedItem = string.Empty;
            pkr_serviceType.SelectedItem = string.Empty;
            lbl_serviceHour.Text = string.Empty;
            lbl_serviceKm.Text = string.Empty;
            lbl_serviceLocal.Text = string.Empty;
            lbl_serviceNotes.Text = string.Empty;
            lbl_servicePrice.Text = string.Empty;
            progress.ProgressTo(0, 250, Easing.Linear);
            lbl_progress.Text = "0%";
            btn_register.IsEnabled = false;
        }

        private void pkr_serviceVehicle_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.14, 250, Easing.Linear);
            lbl_progress.Text = "14%";
            lbl_serviceHour.IsEnabled = true;
        }
        private void lbl_serviceHour_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.28, 250, Easing.Linear);
            lbl_progress.Text = "28%";
            lbl_serviceKm.IsEnabled = true;
        }
        private void lbl_serviceKm_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.42, 250, Easing.Linear);
            lbl_progress.Text = "42%";
            pkr_serviceType.IsEnabled = true;
        }
        private void pkr_serviceType_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.56, 250, Easing.Linear);
            lbl_progress.Text = "56%";
            lbl_serviceLocal.IsEnabled = true;
        }
        private void lbl_serviceLocal_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.70, 250, Easing.Linear);
            lbl_progress.Text = "70%";
            lbl_servicePrice.IsEnabled = true;
        }
        private void lbl_servicePrice_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.84, 250, Easing.Linear);
            lbl_progress.Text = "84%";
            lbl_serviceNotes.IsEnabled = true;
        }
        private void lbl_serviceNotes_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(1, 250, Easing.Linear);
            lbl_progress.Text = "100%";
            btn_register.IsEnabled = true;
            
        }

    }
}