using TallerApp.Data.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace TallerApp.Services
{
    public interface IVehicleService
    {
        //Task<List<Vehicle>> PostObtenerVehiculosAsync();
        Task<Int64> PostCrearVehiculoAsync(Vehicle vehicle);
    }
}
