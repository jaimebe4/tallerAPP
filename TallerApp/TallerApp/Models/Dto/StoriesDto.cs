using System;
using System.Collections.Generic;
using System.Text;

namespace TallerApp.Data.Models.Dto
{
    public class StoriesDto
    {
        public long IdStorie { get; set; }
        public DateTime StorieDate { get; set; }
        public string StorieHour { get; set; }
        public long StorieKm { get; set; }
        public string StorieType { get; set; }
        public string StorieLocal { get; set; }
        public long StoriePrice { get; set; }
        public String StorieNotes { get; set; }
        public long VehicleId {get; set; }
        public string DescriVehiculo { get; set; }
        public String PlacaVehiculo { get; set; }

    }

    public class ResultStoriesDto
    {
        public object result { get; set; }
        public List<StoriesDto> value { get; set; }
    }
}
