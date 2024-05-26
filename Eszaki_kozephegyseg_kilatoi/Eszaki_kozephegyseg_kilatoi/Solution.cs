using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eszaki_kozephegyseg_kilatoi
{
    static class Solution
    {
        public static List<LocationModel> locations { get; set; }
        public static List<ViewPointModel> viewPoints { get; set; }

        public static void FilesRead()
        {
            locations = LocationModel.loadLocation("locations.csv");
            viewPoints = ViewPointModel.loadViewpoints("viewpoints.csv");
        }

        public static ViewPointModel GetHeighest() => viewPoints.Where(x => x.height == viewPoints.Max(y => y.height)).First();

        public static ViewPointModel GetHeighestNoLinq()
        {
            ViewPointModel max = viewPoints[0];
            foreach (var viewpoint in viewPoints)
            {
                if (viewpoint.height > max.height)
                    max = viewpoint;
            }
            return max;
        }
        
        public static string GetLocation(int id)
        {
            foreach (var item in locations)
            {
                if (item.id == id)
                    return item.location;
            }
            return "";
        }

    }
}
