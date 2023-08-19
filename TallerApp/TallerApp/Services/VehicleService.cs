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
    public class VehicleService : IVehicleService
    {

        private readonly IVehicleApi _vehicleApi;

        public VehicleService(IVehicleApi vehicleApi)
        {
            _vehicleApi = vehicleApi;
        }

        public async Task<long> PostCrearVehiculoAsync(Vehicle vehicle)
        {
            try
            {
                var response = await _vehicleApi.PostCrearVehiculoAsync(vehicle);
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

        public async Task<List<Vehicle>> PostObtenerVehiculosAsync()
        {
            var vehiculos = new List<Vehicle>();
            var ResultVehicles = new ResultVehicles();
            try
            {
                var response = await _vehicleApi.PostObtenerVehiculosAsync();

                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();

                    ResultVehicles = JsonConvert.DeserializeObject<ResultVehicles>(content);
                    if (ResultVehicles.value != null)
                    {
                        vehiculos = ResultVehicles.value.ToList();
                    }
                }
                return vehiculos;
            }
            catch (Exception ex)
            {
                var error = ex.Message;
            }
            return vehiculos;
        }




    }
}
