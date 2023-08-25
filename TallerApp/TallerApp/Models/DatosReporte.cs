using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;

namespace TallerApp.Models
{
    public class DatosReporte
    {
        public string Vehiculo { get; set; }
        public float Valor { get; set; }
        public string CodigoColorHex { get; set; }
        public long idVehiculo { get; set; }

        public string TipoServicio { get; set; }
        public long Cantidad { get; set; }
    }
}