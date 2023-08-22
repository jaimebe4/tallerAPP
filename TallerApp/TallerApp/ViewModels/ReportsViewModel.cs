using TallerApp.Data.Models;
using TallerApp.Resx;
using TallerApp.Services;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using TallerApp.ViewModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;
using System.Collections.Generic;
using TallerApp.Data.Models.Dto;

namespace TallerApp.ViewModels
{
    public class ReportsViewModel : BaseViewModel
    {
        private readonly IStorieService _storieService;

        public ReportsViewModel(IStorieService storieService)
        {
            AppearingCommand = new AsyncCommand(async () => await OnAppearingAsync());
            Title = "Historias";
            _storieService = storieService;
        }
        public ObservableRangeCollection<StoriesDto> ListadoHistorias { get; set; } = new ObservableRangeCollection<StoriesDto>();
        public ICommand AppearingCommand { get; set; }
        private async Task OnAppearingAsync()
        {
            await LoadData();
        }

        private async Task LoadData()
        {
            try
            {
                IsBusy = true;
                var listadohistorias = await _storieService.PostObtenerHistoriasAsync();
                if (listadohistorias != null)
                {
                    ListadoHistorias.ReplaceRange(listadohistorias);
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
