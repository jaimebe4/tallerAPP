using TallerApp.Data.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace TallerApp.Services
{
    public interface IClientService
    {
        Task<List<Client>> GetClientsAsync();
    }
}
