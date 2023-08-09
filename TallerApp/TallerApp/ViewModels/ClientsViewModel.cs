﻿using TallerApp.Data.Models;
using TallerApp.Services;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using TallerApp.ViewModels;
using Xamarin.CommunityToolkit.ObjectModel;
namespace TallerApp.ViewModels
{
    public class ClientsViewModel : BaseViewModel
    {
        private readonly IClientService _clientService;

        public ClientsViewModel(IClientService clientService)
        {
            AppearingCommand = new AsyncCommand(async () => await OnAppearingAsync());
            Title = "Clients";
            _clientService = clientService;
        }

        public ObservableRangeCollection<Client> Clients { get; set; } = new ObservableRangeCollection<Client>();

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
                var clients = await _clientService.GetClientsAsync();
                if (clients != null)
                {
                    Clients.ReplaceRange(clients);
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
