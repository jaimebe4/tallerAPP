using Refit;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using TallerApp.Data.Models;

namespace TallerApp.Data.API
{
    public interface IClientApi
    {
        [Get("/Clients")]
        Task<List<Client>> GetClientsAsync();
    }
}
