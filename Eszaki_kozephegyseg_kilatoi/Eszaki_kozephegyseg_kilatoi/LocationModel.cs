using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eszaki_kozephegyseg_kilatoi
{
    class LocationModel
    {
        public int id { get; set; }
        public string location { get; set; }

        public LocationModel(string line)
        {
            string[] data = line.Split(";");
            id = int.Parse(data[0]);
            location = data[1];
        }

        public static List<LocationModel> loadLocation(string fileName)
        {
            List<LocationModel> locationModels = new List<LocationModel>();
            StreamReader sr = new StreamReader(fileName);
            sr.ReadLine();
            while (!sr.EndOfStream)
            {
                locationModels.Add(new LocationModel(sr.ReadLine()));
            }
            sr.Close();
            return locationModels;
        }

    }
}
