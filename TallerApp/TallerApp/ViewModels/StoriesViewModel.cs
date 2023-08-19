using TallerApp.Data.Models;
using TallerApp.Resx;
using TallerApp.Services;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using TallerApp.ViewModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;

namespace TallerApp.ViewModels
{
    public class StoriesViewModel : BaseViewModel
    {

        public Command LoginCommand { get; }

        private readonly IVehicleService _vehicleService;
        private readonly IStorieService _storieService;

        private string _idVehicle;
        private DateTime _storieDate;
        private string _storieHour;
        private long _storieKM;
        private string _storieType;
        private string _storieLocal;
        private long _storiePrice;
        private string _storieNotes;



        public DateTime StorieDate { get => _storieDate; set => SetProperty(ref _storieDate, value); }
        public string StorieHour { get => _storieHour; set => SetProperty(ref _storieHour, value); }
        public long StorieKM { get => _storieKM; set => SetProperty(ref _storieKM, value); }
        public string StorieType { get => _storieType; set => SetProperty(ref _storieType, value); }
        public string StorieLocal { get => _storieLocal; set => SetProperty(ref _storieLocal, value); }
        public long StoriePrice { get => _storiePrice; set => SetProperty(ref _storiePrice, value); }
        public string StorieNotes { get => _storieNotes; set => SetProperty(ref _storieNotes, value); }


        private Vehicle _vehicle;
        public Vehicle Vehicle
        {
            get { return _vehicle; }
            set
            {
                _vehicle = value;
                OnPropertyChanged(nameof(_vehicle));
            }
        }

        public StoriesViewModel(IVehicleService vehicleService,
            IStorieService storieService)
        {
            AppearingCommand = new AsyncCommand(async () => await OnAppearingAsync());
            LoginCommand = new Command(OnLoginClicked);
            Title = "Vehiculos";
            _vehicleService = vehicleService;
            _storieService = storieService;
        }

        public ICommand AppearingCommand { get; set; }

        public ObservableRangeCollection<Vehicle> Vehicles { get; set; } = new ObservableRangeCollection<Vehicle>();

        private async Task OnAppearingAsync()
        {
            await LoadData();
        }


        private async Task LoadData()
        {
            try
            {
                IsBusy = true;
                var vehicles = await _vehicleService.PostObtenerVehiculosAsync();
                if (vehicles != null)
                {
                    Vehicles.ReplaceRange(vehicles);
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


        private async void OnLoginClicked(object obj)
        {
            try
            {
                IsBusy = true;
                Storie storie = new Storie();

                storie.VehicleId = Vehicle.Id;
                storie.StorieDate = StorieDate;
                storie.StorieHour = StorieHour;
                storie.StorieKm = StorieKM;
                storie.StorieType = StorieType;
                storie.StorieLocal = StorieLocal;
                storie.StoriePrice = StoriePrice;
                storie.StorieNotes = StorieNotes;

                long stories = await _storieService.PostCrearHistoriaAsync(storie);
                if (stories == 0)
                {
                    await Application.Current.MainPage.DisplayAlert(
                   "Crear Historias",
                   "Historia Registrada con éxito",
                   AppResources.OkText);
                }
                else
                {
                    await Application.Current.MainPage.DisplayAlert(
                     "Crear Historias",
                     "Fallo el proceso de registro.",
                     AppResources.OkText);
                }

            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert(
                 "Crear Historias",
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
