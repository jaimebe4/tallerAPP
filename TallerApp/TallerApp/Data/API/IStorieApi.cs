using TallerApp.Data.Models;
using TallerApp.Data.Models.Dto;
using Refit;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace TallerApp.Data.API
{
    public interface IStorieApi
    {
        [Post("/Stories/PostCrearHistoria")]
        Task<HttpResponseMessage> PostCrearHistoriaAsync(Storie storie);


        [Post("/Stories/PostObtenerHistorias")]
        Task<HttpResponseMessage> PostObtenerHistoriasAsync();


    }
}
