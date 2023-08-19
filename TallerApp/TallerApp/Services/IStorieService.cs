using TallerApp.Data.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace TallerApp.Services
{
    public interface IStorieService
    {
        Task<List<Storie>> PostObtenerHistoriasAsync();
        Task<Int64> PostCrearHistoriaAsync(Storie storie);
    }
}
