using TallerApp.Data.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using TallerApp.Data.Models.Dto;

namespace TallerApp.Services
{
    public interface IStorieService
    {
        Task<List<StoriesDto>> PostObtenerHistoriasAsync();
        Task<Int64> PostCrearHistoriaAsync(Storie storie);
    }
}
