// See https://aka.ms/new-console-template for more information

using Eszaki_kozephegyseg_kilatoi;

Solution.FilesRead();
ViewPointModel max = Solution.GetHeighest();
Console.WriteLine("6.feladat");
Console.WriteLine($"\tMegnevezés: {max.viewpointName}");
Console.WriteLine($"\tHegy neve: {max.mountain}");
Console.WriteLine($"\tMagasság: {max.height}; Épült: {max.built:yyyy. MM. dd}");
Console.WriteLine($"\tHegység neve: {Solution.locations.Where(x => x.id == max.location).First().location}");
Console.WriteLine($"\tHegység neve: {Solution.GetLocation(max.location)}");

