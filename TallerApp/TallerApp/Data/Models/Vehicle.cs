using System.Collections.Generic;

namespace TallerApp.Data.Models
{
    public class Vehicle
    {
        public long Id { get; set; }
        public string VehicleType { get; set; }
        public string VehicleName { get; set; }
        public string VehicleBrand { get; set; }
        public int VehicleModel { get; set; }
        public string VehiclePlaque { get; set; }

    }

    public class ResultVehicles
    {
        public object result { get; set; }
        public List<Vehicle> value { get; set; }
    }
}
