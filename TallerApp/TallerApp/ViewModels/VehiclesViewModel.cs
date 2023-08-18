using TallerApp.Data.Models;
using TallerApp.Resx;
using TallerApp.Services;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using TallerApp.ViewModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;
using System.Threading;

namespace TallerApp.ViewModels
{
    public class VehiclesViewModel : BaseViewModel
    {

        public Command LoginCommand { get; }

        private readonly IVehicleService _vehicleService;

        private string _vehicleType;
        private string _vehicleName;
        private string _vehicleBrand;
        private int _vehicleModel;
        private string _vehiclePlaque;

        public string VehicleType { get => _vehicleType; set => SetProperty(ref _vehicleType, value); }
        public string VehicleName { get => _vehicleName; set => SetProperty(ref _vehicleName, value); }
        public string VehicleBrand { get => _vehicleBrand; set => SetProperty(ref _vehicleBrand, value); }
        public int VehicleModel { get => _vehicleModel; set => SetProperty(ref _vehicleModel, value); }
        public string VehiclePlaque { get => _vehiclePlaque; set => SetProperty(ref _vehiclePlaque, value); }


        public VehiclesViewModel(IVehicleService vehicleService)
        {
            //AppearingCommand = new AsyncCommand(async () => await OnAppearingAsync());
            LoginCommand = new Command(OnLoginClicked);
            Title = "Vehiculos";
            _vehicleService = vehicleService;
        }

        public ICommand AppearingCommand { get; set; }

        //private async Task OnAppearingAsync()
        //{
        //    await LoadData();
        //}



        private async void OnLoginClicked(object obj)
        {
            try
            {
                IsBusy = true;
                Vehicle vehicle = new Vehicle();
                vehicle.VehicleBrand = VehicleBrand;
                vehicle.VehicleModel = Convert.ToInt16(VehicleModel);
                vehicle.VehicleType = VehicleType;
                vehicle.VehicleName = VehicleName;

                long vehiculos = await _vehicleService.PostCrearVehiculoAsync(vehicle);
                if (vehiculos == 0)
                {
                    await Application.Current.MainPage.DisplayAlert(
                   "Crear Vehiculos",
                   "Vehiculo Registrado con éxito",
                   AppResources.OkText);
                }
                else
                {
                    await Application.Current.MainPage.DisplayAlert(
                     "Crear Vehiculos",
                     "Fallo el proceso de registro.",
                     AppResources.OkText);
                }

            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert(
                 "Crear Vehiculos",
                 ex.Message,
                 AppResources.OkText);

                var message = ex.Message;
            }
            finally
            {
                IsBusy = false;
            }
        }
    }
}
