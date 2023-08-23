using TallerApp.Data.Models;
using TallerApp.Models;
using TallerApp.Resx;
using TallerApp.Services;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using TallerApp.ViewModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;
using System.Collections.Generic;
using TallerApp.Data.Models.Dto;
using Microcharts;
using SkiaSharp;
using System.Linq;
using TallerApp.Extensions;

namespace TallerApp.ViewModels
{
    public class ReportsViewModel : BaseViewModel
    {
        private readonly IStorieService _storieService;

        private Chart _barChart;
        public Chart BarChart
        {
            get { return _barChart; }
            set { SetProperty(ref _barChart, value); }
        }

        private Chart _pieChart;
        public Chart PieChart
        {
            get { return _barChart; }
            set { SetProperty(ref _barChart, value); }
        }

        private Chart _lineChart;
        public Chart LineChart
        {
            get { return _lineChart; }
            set { SetProperty(ref _lineChart, value); }
        }

        public ReportsViewModel(IStorieService storieService)
        {
            AppearingCommand = new AsyncCommand(async () => await OnAppearingAsync());
            Title = "Historias";
            _storieService = storieService;
        }

        //public Command GenerarReporteCommand { get; set; }
        public ObservableRangeCollection<StoriesDto> ListadoHistorias { get; set; } = new ObservableRangeCollection<StoriesDto>();
        public ICommand AppearingCommand { get; set; }
        private async Task OnAppearingAsync()
        {
            await LoadData();
            //GenerarReporteCommand = new Command(GenerarReporte);
        }

        private async Task LoadData()
        {
            try
            {
                IsBusy = true;
                var listadohistorias = await _storieService.PostObtenerHistoriasAsync();
                if (listadohistorias != null)
                {
                    ListadoHistorias.ReplaceRange(listadohistorias);
                }

                var listadohistoriasgrafica = await _storieService.PostObtenerHistoriasAsync();
                List<DatosReporte> ListadoDatosReporte = new List<DatosReporte>();
                if (listadohistoriasgrafica != null)
                {
                    ListadoDatosReporte = listadohistoriasgrafica
                                        .GroupBy(p => p.PlacaVehiculo)
                                        .Select(DR => new DatosReporte
                                        {
                                            Vehiculo = DR.First().DescriVehiculo,
                                            idVehiculo = DR.First().VehicleId,
                                            Valor = (float)DR.Sum(c => c.StoriePrice),
                                        }).ToList();
                }

                string colorhex = string.Empty;
                List<ChartEntry> entries = new List<ChartEntry>();
                foreach (DatosReporte item in ListadoDatosReporte)
                {
                    colorhex = string.Empty;
                    switch (item.idVehiculo)
                    {
                        case 1:
                            colorhex = ExtensionMethods.GetHexString(Xamarin.Forms.Color.Green);
                            break;
                        case 2:
                            colorhex = ExtensionMethods.GetHexString(Xamarin.Forms.Color.Blue);
                            break;
                        case 3:
                            colorhex = ExtensionMethods.GetHexString(Xamarin.Forms.Color.Magenta);
                            break;
                        case 4:
                            colorhex = ExtensionMethods.GetHexString(Xamarin.Forms.Color.Aqua);
                            break;
                        default:
                            colorhex = ExtensionMethods.GetHexString(Xamarin.Forms.Color.Red);
                            break;

                    }
                    entries.Add(new ChartEntry(item.Valor)
                    {
                        Label = item.Vehiculo,
                        ValueLabel = item.Valor.ToString(),
                        Color = SKColor.Parse(colorhex)
                    });
                }

                BarChart = new BarChart
                {
                    Entries = entries,
                    LabelTextSize = 30,
                    ValueLabelOrientation = Orientation.Horizontal,
                    AnimationProgress = 10,
                    LabelOrientation = Orientation.Horizontal
                };
                OnPropertyChanged(nameof(BarChart));

                PieChart = new PieChart
                {
                    Entries = entries,
                    LabelTextSize = 30,
                    HoleRadius = 0.3f,
                    AnimationProgress = 10,
                };
                OnPropertyChanged(nameof(PieChart));

                LineChart = new LineChart
                {
                    Entries = entries,
                    LabelTextSize = 30,
                    AnimationProgress = 10,
                    ValueLabelOrientation = Orientation.Horizontal,
                    LabelOrientation = Orientation.Horizontal,
                    LineMode = LineMode.Straight,
                    LineSize = 8,
                    PointMode = PointMode.Square,
                    PointSize = 18,
                };
                OnPropertyChanged(nameof(PieChart));

            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }
            finally
            {
                IsBusy = false;
            }
        }

    }

}
