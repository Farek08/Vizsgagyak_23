using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eszaki_kozephegyseg_kilatoi
{
    class ViewPointModel
    {
        public DateTime built { get; set; }
        public string description { get; set; }
        public double height { get; set; }
        public int id { get; set; }
        public string imageUrl { get; set; }
        public int location { get; set; }
        public string mountain { get; set; }
        public string viewpointName { get; set; }

        public ViewPointModel(string line)
        {
            string[] data = line.Split(";");
            id = int.Parse(data[0]);
            viewpointName = data[1];
            mountain = data[2];
            height = double.Parse(data[3].Replace(".", ","));
            description = data[4];
            built = DateTime.ParseExact(data[5], "yyyy-MM-dd", CultureInfo.InvariantCulture);
            imageUrl = data[6];
            location = int.Parse(data[7]);     
        }

        public static List<ViewPointModel> loadViewpoints(string fileName)
        {
            List<ViewPointModel> viewPointModels = new List<ViewPointModel>();
            StreamReader sr = new StreamReader(fileName);
            sr.ReadLine();
            while (!sr.EndOfStream)
            {
                viewPointModels.Add(new ViewPointModel(sr.ReadLine()));
            }
            sr.Close();
            return viewPointModels;
        }

    }
}
