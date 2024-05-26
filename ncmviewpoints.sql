-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 22. 13:39
-- Kiszolgáló verziója: 10.4.22-MariaDB-log
-- PHP verzió: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ncmviewpoints`
--
CREATE DATABASE IF NOT EXISTS `ncmviewpoints` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `ncmviewpoints`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `locations`
--

INSERT INTO `locations` (`id`, `location`) VALUES
(1, 'Börzsöny'),
(2, 'Bükk'),
(3, 'Cserhát'),
(4, 'Mátra'),
(5, 'Visegrádi-hegység'),
(6, 'Zempléni-hegység');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `viewpoints`
--

CREATE TABLE `viewpoints` (
  `id` int(11) NOT NULL,
  `viewpointName` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `mountain` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `height` double(5,2) DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `built` date DEFAULT NULL,
  `imageUrl` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `viewpoints`
--

INSERT INTO `viewpoints` (`id`, `viewpointName`, `mountain`, `height`, `description`, `built`, `imageUrl`, `location`) VALUES
(1, 'Csóványosi kilátó', 'Csóványos', 22.70, '85 millió forintos költséggel, európai uniós támogatással épült, melynek során a tornyot minden szinten körülsétálható, vörösfenyővel borított acélszerkezettel vették körül, és a torony belsejében biztonságos, 133 fokos csigalépcsővel látták el. A kilátó tetejéről remek körpanoráma tárul a látogató szeme elé (jó időben a Magas-Tátra és a Schneeberg is látható).', '2014-10-09', 'http://bgs.jedlik.eu/viewpoints/csovanyos.jpg', 1),
(2, 'Julianus-kilátó', 'Hegyes-tető', 15.20, 'A csaknem tizenöt méter magas, középkori bástyát idéző Julianus-kilátó látványában, stílusában mintegy válaszol a visegrádi várnak a Duna túloldaláról. A Julianus-kilátó tetejéről nemcsak a Dunára, a belső Börzsönyre is páratlan kilátás nyílik, a lábánál padok és asztalok várják a kirándulókat.', '1939-05-14', 'http://bgs.jedlik.eu/viewpoints/julianus.jpg', 1),
(3, 'Kós Károly-kilátó', 'Kálvária-domb', 15.00, 'A Kós Károly-kilátó Zebegény egyik legnépszerűbb nevezetessége, amely évente több ezer kirándulót csalogat a környékre. Minden korosztály számára kiváló úti cél, hiszen nem igényel nagyobb erőfeszítést a felkeresése, az élmény mégis utánozhatatlan, amelyet a panoráma nyújt.', '2015-06-15', 'http://bgs.jedlik.eu/viewpoints/kos_karoly.jpg', 1),
(4, 'Várhegyi kilátó', 'Várhegy', 15.60, 'Rálátunk a Magas-Börzsöny ikonikus hegyeire: a Csóványos, a Nagy-Hideg-hegy és a Magas-Tax is beazonosítható. Déli irányban a Börzsönyön túl feltűnnek a Visegrádi-hegység vonulatai, és jól kivehető a Naszály jellegzetes alakja. Tiszta időben megpillanthatjuk a Cserhát lankáit és a Karancsot, sőt, szerencsés esetben még a Mátrát is.', '2020-10-05', 'http://bgs.jedlik.eu/viewpoints/varhegy.jpg', 1),
(5, 'Kalapat-hegyi kilátó', 'Kalapat-tető', 33.30, 'A kilátótoronyból körpanoráma nyílik, látható többek között Szilvásvárad, a Bél-kő, a Szalajka-völgy, az Istállós-kő, a Gerenna-vár, távolabb pedig a Mátra is.', '2000-08-20', 'http://bgs.jedlik.eu/viewpoints/kalapat.jpg', 2),
(6, 'Major-tetői kilátó', 'Major-tető', 30.40, 'Rálátunk az apró településre és az Eger-patak vulkanikus szurdokára éppúgy, mint a Bükk-fennsík köveinek vonulatára, valamint a távolabbi Egerre. A kilátó egyszintes, de felülről fedett.', '2004-08-12', 'http://bgs.jedlik.eu/viewpoints/major-teto.jpg', 2),
(7, 'Petőfi-kilátó', 'Bálvány', 18.50, 'A Bükk-vidék legmagasabban fekvő tornyából valóban lenyűgöző 360 fokos körpanoráma tárul elénk. A Petőfi-kilátó legfelső szintjéről tiszta időben az Észak-magyarországi-középhegység minden tagját és a Felvidék számos magashegységét is láthatjuk.', '2016-06-22', 'http://bgs.jedlik.eu/viewpoints/petofi.jpg', 2),
(8, 'Avasi kilátó', 'Avas', 72.20, 'Tévétoronyként és kilátóként egyaránt használt építmény. A kilátóteraszról madártávlatból bontakozik ki Miskolc városa és a környező táj. A torony tetején kávézó várja a vendégeket.', '1963-05-04', 'http://bgs.jedlik.eu/viewpoints/avas.jpg', 2),
(9, 'Prónay-kilátó', 'Romhányi-hegy, Kecske-kő', 26.00, 'Teljes körpanorámás kilátást kínál: nyugat-északnyugati irányban a Börzsöny, északon a Selmeci-hegység hegyei láthatók a Szitnya-csúccsal, észak-északkelet felé a távolban a Magas-Tátra, kelet felé a Szandavár, a Berceli-hegy illetve a távolban a Karancs és a Mátra hegyvonulatai, délről pedig a Gödöllői-dombság lankái figyelhetők meg. Délnyugati irányban a Naszály, illetve a Visegrádi-hegység, a Pilis és a Budai-hegység egyes csúcsai is láthatók.', '2017-10-10', 'http://bgs.jedlik.eu/viewpoints/pronay.jpg', 3),
(10, 'Galya-kilátó', 'Galya-tető', 17.20, 'Az ország legmagasabban álló, kifejezetten e célból épült kilátója. Tetőterasza 360°-os körpanorámát biztosít, kelet felé a kéklő Bükk látható, nyugatra a Börzsöny és a Cserhát tájai, északra pedig a szlovák hegyvonulatokat figyelhetjük meg. Tiszta időben a Mecsekig, illetve a Magas-Tátráig is ellátni. A kilátóból a Piszkéstetői Obszervatórium tetejét is látni lehet. Ezen kívül tiszta időben Budapest és a Dunamenti Erőmű három hatalmas kéménye is látszik.', '1934-10-10', 'http://bgs.jedlik.eu/viewpoints/galya.jpg', 4),
(11, 'Kékestetői tévétorony', 'Kékes', 180.43, 'Tiszta időben gyönyörű körpanoráma tárul a látogató szeme elé: a Mátra hegyvidékén túl a tőle déli irányban elterülő Alföld, kelet felé a Bükk-vidék, nyugatról a Gödöllői-dombság lankáin túl a Budai-hegység, a Cserháton túl a Pilis és a Börzsöny, észak felé a Karancs-Medves tájain túl akár a Magas-Tátra csúcsai is felismerhetőek.', '1981-07-24', 'http://bgs.jedlik.eu/viewpoints/kekes_tv_torony.jpg', 4),
(12, 'Kozmáry-kilátó', 'Dobogó-kő', 16.10, 'A kilátó valamivel több mint 370 m magasan áll a Dobogó-kő hegyen, mely nevét állítólag onnan kapta, hogy úgy dobog, mintha üreges lenne. Gyönyörű kilátás nyílik innen a Mátraaljára és Gyöngyös városára.', '1900-04-11', 'http://bgs.jedlik.eu/viewpoints/kozmary.jpg', 4),
(13, 'Sástói kilátó', 'Sás-tó', 53.20, 'Tiszta időben még a Tiszáig és a Budai hegyekig is ellátni. Az első emeleti teraszon a madárfelismerést segítő rajzok és megtapintható faragott madarak, a harmadik emeleti teraszon a látnivalók beazonosítását megkönnyítendő feliratos tájképek és távcső találhatók.', '1973-08-06', 'http://bgs.jedlik.eu/viewpoints/sastoi.jpg', 4),
(14, 'Vörös-kő kilátó', 'Vörös-kő', 15.00, 'Gyönyörű körpanoráma tárul elénk a kilátóból. Galyatető vonulatai, Mátraszentlászló, Mátraszentistván, Ágasvár, valamint északi irányban tiszta időben még a Magas-Tátra is látható.', '2005-06-12', 'http://bgs.jedlik.eu/viewpoints/vorosko.jpg', 4),
(15, 'Prédikálószéki kilátó', 'Prédikálószék', 12.55, 'A Duna patkó alakú kanyarjára nyílik panoráma. A nagyszerű látvány szépségét tetemes magasság és jelentős meredekség fokozza. Keleti irányban a Visegrádi-hegység Duna felé lefutó gerincei láthatók, de a visegrádi várat is könnyű észrevenni. Tiszta időben egészen a Mátráig elláthatunk.', '2016-10-22', 'http://bgs.jedlik.eu/viewpoints/predikaloszek.jpg', 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `viewpoints`
--
ALTER TABLE `viewpoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_viewpoints_location` (`location`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `viewpoints`
--
ALTER TABLE `viewpoints`
  ADD CONSTRAINT `FK_viewpoints_location` FOREIGN KEY (`location`) REFERENCES `locations` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
