using TallerApp.Data.Models;
using Xamarin.Forms;

namespace TallerApp.Controls
{
    public class VehiclesTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DefaultTemplate { get; set; }
        public DataTemplate UltimoModeloTemplate { get; set; }
        public DataTemplate ModernoTemplate { get; set; }
        public DataTemplate ClasicoTemplate { get; set; }


        protected override DataTemplate OnSelectTemplate(object vehicleObject, BindableObject container)
        {
            if (!(vehicleObject is Vehicle vehicle))
            {
                return DefaultTemplate;
            }

            var vehicleModel = vehicle.VehicleModel;
            
            
            

            if (vehicleModel >= 2020)
            {
                return UltimoModeloTemplate;
            }

            if (vehicleModel >= 2000 && vehicleModel < 2020)
            {
                return ModernoTemplate;
            }

            if (vehicleModel < 2000)
            {
                return ClasicoTemplate;
            }


            return DefaultTemplate;
        }
    }
}
