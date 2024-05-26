using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Eszak_kozephegyseg_kilatoi_GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        Context context = new Context();

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string tulajdonsagNev)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(tulajdonsagNev));
        }

        public ObservableCollection<Location> Locations { get; set; }

        private ObservableCollection<ViewPoint> viewPoints;

        public ObservableCollection<ViewPoint> ViewPoints
        {
            get { return viewPoints; }
            set { viewPoints = value; OnPropertyChanged(nameof(ViewPoints)); }
        }

        private ViewPoint selectedViewPoint;

        public ViewPoint SelectedViewPoint
        {
            get { return selectedViewPoint; }
            set { selectedViewPoint = value; OnPropertyChanged(nameof(SelectedViewPoint)); }
        }


        public MainWindow()
        {
            InitializeComponent();
            context.Locations.Load();
            context.ViewPoints.Load();
            Locations = context.Locations.Local.ToObservableCollection();
            this.DataContext = this;
        }

        private void mountains_LB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Location selectedLocation = (Location)mountains_LB.SelectedItem;
            if(selectedLocation != null)
            {
                ViewPoints = new ObservableCollection<ViewPoint>(context.ViewPoints.Where(x => x.location == selectedLocation.id).ToList());
            }
        }

        private void viewpoints_DG_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SelectedViewPoint = (ViewPoint)viewpoints_DG.SelectedItem;
        }
    }
}