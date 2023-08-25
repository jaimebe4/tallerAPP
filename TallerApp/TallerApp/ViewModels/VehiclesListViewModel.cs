using System;
using System.Collections.Generic;
using System.Text;
using TallerApp.Services;
using Xamarin.CommunityToolkit.ObjectModel;
using TallerApp.Data.Models;
using TallerApp.Resx;
using Xamarin.Forms;
using System.Threading.Tasks;
using System.Windows.Input;
using TallerApp.Data.Models.Dto;
using TallerApp.Models;

namespace TallerApp.ViewModels
{
    public class VehiclesListViewModel : BaseViewModel
    {
        private readonly IVehicleService _vehicleService;

        public ObservableRangeCollection<Vehicle> ListadoVehiculos { get; set; } = new ObservableRangeCollection<Vehicle>();
        public ICommand AppearingCommand { get; set; }
        private async Task OnAppearingAsync()
        {
            await LoadData();
        }

        public VehiclesListViewModel(IVehicleService vehicleService)
        {
            AppearingCommand = new AsyncCommand(async () => await OnAppearingAsync());
            Title = "Vehiculos";
            _vehicleService = vehicleService;
        }

        private async Task LoadData()
        {
            try
            {
                IsBusy = true;
                var listadovehiculos = await _vehicleService.PostObtenerVehiculosAsync();
                if (listadovehiculos != null)
                {
                    ListadoVehiculos.ReplaceRange(listadovehiculos);
                }

            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }
            finally
            {
                IsBusy = false;
            }
        }
    }
}
