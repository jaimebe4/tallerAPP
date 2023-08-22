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
    public partial class VehiclesPage : ContentPage
    {

        public VehiclesPage()
        {
            InitializeComponent();
        }


        private void cbox_activate_CheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            if (cbox_activate.IsChecked)
                btn_register.IsEnabled = true;
            else
                btn_register.IsEnabled = false;
            
            progress.ProgressTo(100, 250, Easing.Linear);
            lbl_progress.Text = "100%";

        }

        private void btn_registrar_Clicked(object sender, EventArgs e)
        {
            cleanForm();
            //DisplayAlert("Vehiculo Registrado", "Haz registrado el Vehiculo", "Cerrar");
        }

        private void cleanForm()
        {
            pkr_vehicleType.SelectedItem = string.Empty;
            lbl_vehicleName.Text = string.Empty;
            lbl_vehicleModel.Text = string.Empty;
            lbl_vehicleBrand.Text = string.Empty;
            lbl_vehiclePlaque.Text = string.Empty;
            cbox_activate.IsChecked = false;
            progress.ProgressTo(0, 250, Easing.Linear);
            lbl_progress.Text = "0%";
        }

        private void lbl_vehicleType_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.17, 250, Easing.Linear);
            lbl_progress.Text = "17%";
        }

        private void lbl_vehicleName_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.34, 250, Easing.Linear);
            lbl_progress.Text = "34%";
        }

        private void lbl_vehicleName_TextChanged(object sender, TextChangedEventArgs e)
        {
            string vehicleName = lbl_vehicleName.Text.ToString();
            //string cadena = $"Bienvenido {vehiclename}. Llene sus datos";
            //lbl_principal.Text = cadena;
        }

        private void lbl_vehicleBrand_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.51, 250, Easing.Linear);
            lbl_progress.Text = "51%";
        }

        private void lbl_vehicleModel_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.68, 250, Easing.Linear);
            lbl_progress.Text = "68%";
        }

        private void lbl_vehiclePlaque_Completed(object sender, EventArgs e)
        {
            progress.ProgressTo(.85, 250, Easing.Linear);
            lbl_progress.Text = "85%";
        }

        private void sw_example_Toggled(object sender, ToggledEventArgs e)
        {

        }


    }
}