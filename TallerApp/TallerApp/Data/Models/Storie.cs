using System;
using System.Collections.Generic;

namespace TallerApp.Data.Models
{
    public class Storie
    {
        public long IdStorie { get; set; }
        public DateTime StorieDate { get; set; }
        public string StorieHour { get; set; }
        public long StorieKm { get; set; }
        public string StorieType { get; set; }
        public string StorieLocal { get; set; }
        public long StoriePrice { get; set; }
        public string StorieNotes { get; set; }
        public long VehicleId { get; set; }
        public virtual Vehicle Id { get; set; }

    }

    public class ResultStories
    {
        public object result { get; set; }
        public List<Storie> value { get; set; }
    }
}
