using TallerApp.Data.Models;
using Refit;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace TallerApp.Data.API
{
    public interface IVehicle
    {
        [Post("/Vehicles/PostCrearVehiculo")]
        Task<HttpResponseMessage> PostCrearVehiculoAsync(Vehicle vehicle);


        [Post("/Vehicles/PostObtenerVehiculos")]
        Task<HttpResponseMessage> PostObtenerVehiculosAsync();
    }
}
