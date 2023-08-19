using TallerApp.Data.API;
using TallerApp.Data.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TallerApp.Services
{
    public class StorieService : IStorieService
    {

        private readonly IStorieApi _storieApi;

        public StorieService(IStorieApi storieApi)
        {
            _storieApi = storieApi;
        }

        public async Task<long> PostCrearHistoriaAsync(Storie storie)
        {
            try
            {
                var response = await _storieApi.PostCrearHistoriaAsync(storie);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    return 0;
                }
            }
            catch (Exception ex)
            {
                var error = ex.Message;
            }
            return 1;
        }

        public async Task<List<Storie>> PostObtenerHistoriasAsync()
        {
            var stories = new List<Storie>();
            var ResultStories = new ResultStories();
            try
            {
                var response = await _storieApi.PostObtenerHistoriasAsync();

                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();

                    ResultStories = JsonConvert.DeserializeObject<ResultStories>(content);
                    if (ResultStories.value != null)
                    {
                        stories = ResultStories.value.ToList();
                    }
                }

                return stories;
            }
            catch (Exception ex)
            {
                var error = ex.Message;
            }
            return stories;
        }


    }
}
