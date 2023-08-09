using TallerApp.Data.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using TallerApp.Data.API;
using TallerApp.Services;

namespace TallerApp.Services
{
    public class ClientService : IClientService
    {
        private readonly IClientApi _clientApi;

        public ClientService(IClientApi clientApi)
        {
            _clientApi = clientApi;
        }


        public async Task<List<Client>> GetClientsAsync()
        {
            var clients = new List<Client>();

            try
            {
                var response = await _clientApi.GetClientsAsync();
                clients = response.ToList();
                return clients;
            }
            catch (Exception ex)
            {
                var error = ex.Message;
            }
            return clients;
        }
    }
}