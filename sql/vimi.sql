-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Ápr 19. 20:32
-- Kiszolgáló verziója: 5.6.30
-- PHP verzió: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vimi`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autok`
--

CREATE TABLE IF NOT EXISTS `autok` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `allapot` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sebvalto` varchar(255) NOT NULL,
  `uzemanyag` varchar(255) NOT NULL,
  `fogyasztas` varchar(255) NOT NULL,
  `klima` varchar(255) NOT NULL,
  `ablak` varchar(255) NOT NULL,
  `radio` varchar(255) NOT NULL,
  `1nap` varchar(255) NOT NULL,
  `2nap` varchar(255) NOT NULL,
  `4nap` varchar(255) NOT NULL,
  `15nap` varchar(255) NOT NULL,
  `tipus` varchar(255) NOT NULL,
  `kep` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `autok`
--

INSERT INTO `autok` (`id`, `nev`, `allapot`, `sebvalto`, `uzemanyag`, `fogyasztas`, `klima`, `ablak`, `radio`, `1nap`, `2nap`, `4nap`, `15nap`, `tipus`, `kep`) VALUES
(1, 'Suzuki Swift 1.0', 'Normál', 'Manuális', 'Benzin', '5.8 l/100 km (vegyes)', 'Nincs', 'Nincs', 'Van', '3.999.-', '3.499.-/nap', '2.999.-/nap', '2.499.-/nap', '', ''),
(2, 'Peugeot 206 1.6 SW', 'Normál', 'Manuális', 'Benzin', '7.8 l/100 km (vegyes)', 'Van', 'Van', 'Van', '4.999.-', '4.499.-/nap', '3.999.-/nap', '3.499.-/nap', '', ''),
(3, 'Peugeot 306 1.4 XN', 'Normál', 'Manuális', 'Benzin', '6.9 l/100 km (vegyes)', 'Van', 'Van', 'Van', '4.499.-', '3.999.-/nap', '3.499.-/nap', '2.999.-/nap', '', ''),
(4, 'Peugeot 306 1.6 XN', 'Normál', 'Manuális', 'Benzin', '7.8 l/100 km (vegyes)', 'Van', 'Van', 'Van', '4.499.-', '3.999.-/nap', '3.499.-/nap', '2.999.-/nap', '', ''),
(5, 'BMW 320 i', 'Normál', 'Manuális', 'Benzin', '8.6 l/100 km (vegyes)', 'Van', 'Van', 'Van', '8.999.-', '7.999.-/nap', '6.999.-/nap', '6.499.-/nap', '', ''),
(6, 'Peugeot 406 1.8', 'Normál', 'Manuális', 'Benzin', '8.9 l/100 km (vegyes)', 'Van', 'Van', 'Van', '6.499.-', '5.999.-/nap', '4.999.-/nap', '3.999.-/nap', '', ''),
(7, 'VOLVO 850 2.0', 'Normál', 'Manuális', 'Benzin', '8.9 l/100 km (vegyes)', 'Van', 'Van', 'Van', '6.499.-', '5.999.-/nap', '4.999.-/nap', '3.999.-/nap', '', ''),
(8, 'VOLVO S70 2.0 T', 'Normál', 'Manuális', 'Benzin', '9.2 l/100 km (vegyes)', 'Van', 'Van', 'Van', '6.499.-', '5.999.-/nap', '4.999.-/nap', '3.999.-/nap', '', ''),
(9, 'Opel Zafira 1.9 CDTI', 'Normál', 'Manuális', 'Diesel', '6.2 l/100 km (vegyes)', 'Van', 'Van', 'Van', '9.999.-', '9.499.-/nap', '8.499.-/nap', '5.999.-/nap', '', ''),
(11, 'Peugeot Partner, dobozos', 'Normál', 'Manuális', 'Diesel', '6.4 l/100 km (vegyes)', 'Nincs', 'Van', 'Van', '6.499.-', '5.499.-/nap', '4.499.-/nap', '3.999.-/nap', '', ''),
(12, 'Citroen Berlingo, dobozos', 'Normál', 'Manuális', 'Diesel', '6.3 l/100 km (vegyes)', 'Nincs', 'Van', 'Van', '6.499.-', '5.499.-/nap', '4.499.-/nap', '3.999.-/nap', '', ''),
(13, 'Peugeot Boxer körablakos (3-6 személyes)', 'Normál', 'Manuális', 'Diesel', '6.2 l/100 km (vegyes)', 'Nincs', 'Nincs', 'Van', '7.499.-', '6.999.-/nap', '5.499.-/nap', '4.499.-/nap', '', ''),
(14, 'Mercedes Sprinter, platós', 'Normál', 'Manuális', 'Diesel', '9.9 l/100 km (vegyes)', 'Nincs', 'Nincs', 'Van', '8.999.-', '7.499.-/nap', '6.499.-/nap', '4.999.-/nap', '', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kolcsonzesek`
--

CREATE TABLE IF NOT EXISTS `kolcsonzesek` (
  `id` int(255) NOT NULL,
  `user` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `startdate` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `days` int(255) NOT NULL,
  `car` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kolcsonzesek`
--

INSERT INTO `kolcsonzesek` (`id`, `user`, `startdate`, `days`, `car`) VALUES
(1, 'Ákos', '2017.03.27', 5, 'Suzuki');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `TABLE 3`
--

CREATE TABLE IF NOT EXISTS `TABLE 3` (
  `id` int(11) NOT NULL,
  `COL 1` varchar(20) DEFAULT NULL,
  `COL 3` int(4) DEFAULT NULL,
  `COL 4` int(5) DEFAULT NULL,
  `COL 5` int(5) DEFAULT NULL,
  `COL 6` int(5) DEFAULT NULL,
  `COL 7` int(5) DEFAULT NULL,
  `COL 8` int(5) DEFAULT NULL,
  `COL 9` int(5) DEFAULT NULL,
  `COL 10` int(5) DEFAULT NULL,
  `COL 11` int(5) DEFAULT NULL,
  `COL 12` int(5) DEFAULT NULL,
  `COL 13` int(5) DEFAULT NULL,
  `COL 14` int(6) DEFAULT NULL,
  `COL 15` int(6) DEFAULT NULL,
  `COL 16` int(6) DEFAULT NULL,
  `COL 17` int(6) DEFAULT NULL,
  `COL 18` int(6) DEFAULT NULL,
  `COL 19` int(6) DEFAULT NULL,
  `COL 20` int(6) DEFAULT NULL,
  `COL 21` int(6) DEFAULT NULL,
  `COL 22` int(6) DEFAULT NULL,
  `COL 23` int(6) DEFAULT NULL,
  `COL 24` int(6) DEFAULT NULL,
  `COL 25` int(6) DEFAULT NULL,
  `COL 26` int(6) DEFAULT NULL,
  `COL 27` int(6) DEFAULT NULL,
  `COL 28` int(6) DEFAULT NULL,
  `COL 29` varchar(6) DEFAULT NULL,
  `COL 30` varchar(6) DEFAULT NULL,
  `COL 31` varchar(6) DEFAULT NULL,
  `COL 32` varchar(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `TABLE 3`
--

INSERT INTO `TABLE 3` (`id`, `COL 1`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`) VALUES
(1, 'Suzuki Swift 3 ajt', 3999, 6998, 10497, 11996, 14995, 17994, 20993, 23992, 26991, 29990, 32989, 35988, 38987, 41986, 42486, 42986, 43486, 44982, 47481, 49980, 52479, 54978, 57477, 59976, 62475, 64974, '67473', '69972', '72471', '74970'),
(2, 'Suzuki Swift 5 ajt', 3999, 6998, 10497, 11996, 14995, 17994, 20993, 23992, 26991, 29990, 32989, 35988, 38987, 41986, 42486, 42986, 43486, 44982, 47481, 49980, 52479, 54978, 57477, 59976, 62475, 64974, '67473', '69972', '72471', '74970'),
(3, 'Peugeot 206 1.6', 4999, 8998, 13497, 15996, 19995, 23994, 27993, 31992, 35991, 39990, 43989, 47988, 51987, 55986, 56486, 56986, 59483, 62982, 66481, 69980, 73479, 76978, 80477, 83976, 87475, 90974, '94473', '97972', '101471', '104970'),
(4, 'Peugeot 306 1.4', 4499, 7998, 11997, 13996, 17495, 20994, 24493, 27992, 31491, 34990, 38489, 41988, 45487, 48986, 49486, 49986, 50983, 53982, 56981, 59980, 62979, 65978, 68977, 71976, 74975, 77974, '80973', '83972', '86971', '89970'),
(5, 'Peugeot 306 1.6', 4499, 7998, 11997, 13996, 17495, 20994, 24493, 27992, 31491, 34990, 38489, 41988, 45487, 48986, 49486, 49986, 50983, 53982, 56981, 59980, 62979, 65978, 68977, 71976, 74975, 77974, '80973', '83972', '86971', '89970'),
(6, 'Peugeot 406 1.8', 6499, 11998, 17997, 19996, 24995, 29994, 34993, 39992, 44991, 49990, 54989, 59988, 64987, 69986, 70986, 71986, 72986, 73986, 75981, 79980, 83979, 87978, 91977, 95976, 99975, 103974, '107973', '111972', '115971', '119970'),
(7, 'BMW 320 i', 8999, 15998, 23997, 27996, 34995, 41994, 48993, 55992, 62991, 69990, 76989, 83988, 90987, 97986, 100986, 103984, 110483, 116982, 123481, 129980, 136479, 142978, 149477, 155976, 162475, 168974, '175473', '181972', '188471', '194970'),
(8, 'VOLVO 850 2.0', 6499, 11998, 17997, 19996, 24995, 29994, 34993, 39992, 44991, 49990, 54989, 59988, 64987, 69986, 70986, 71986, 72986, 73986, 75981, 79980, 83979, 87978, 91977, 95976, 99975, 103974, '107973', '111972', '115971', '119970'),
(9, 'VOLVO S70 2.0 T', 6499, 11998, 17997, 19996, 24995, 29994, 34993, 39992, 44991, 49990, 54989, 59988, 64987, 69986, 70986, 71986, 72986, 73986, 75981, 79980, 83979, 87978, 91977, 95976, 99975, 103974, '107973', '111972', '115971', '119970'),
(10, 'Renault M?gane', 5499, 9998, 14997, 17996, 22495, 26994, 31493, 35992, 40491, 44990, 49489, 53988, 58487, 62986, 63486, 63984, 67983, 71982, 75981, 79980, 83979, 87978, 91977, 95976, 99975, 103974, '107973', '111972', '115971', '119970'),
(11, 'Opel Zafira 1.9 CDTi', 9999, 18998, 28497, 33996, 42495, 50994, 59493, 67992, 76491, 84990, 93489, 101988, 110487, 118986, 120986, 122986, 124986, 125982, 132981, 139980, 146979, 153978, 160977, 167976, 174975, 181974, '188973', '195972', '202971', '209970'),
(12, 'BMW 530 d', 8999, 15998, 23997, 27996, 34995, 41994, 48993, 55992, 62991, 69990, 76989, 83988, 90987, 97986, 100986, 103984, 110483, 116982, 123481, 129980, 136479, 142978, 149477, 155976, 162475, 168974, '175473', '181972', '188471', '194970'),
(13, 'Peugeot Partner HDI', 6499, 10998, 16497, 17996, 22495, 26994, 31493, 35992, 40491, 44990, 49489, 53988, 58487, 62986, 63486, 63984, 67983, 71982, 75981, 79980, 83979, 87978, 91977, 95976, 99975, 103974, '107973', '111972', '115971', '119970'),
(14, 'Peugeot Partner d', 6499, 10998, 16497, 17996, 22495, 26994, 31493, 35992, 40491, 44990, 49489, 53988, 58487, 62986, 63486, 63984, 67983, 71982, 75981, 79980, 83979, 87978, 91977, 95976, 99975, 103974, '107973', '111972', '115971', '119970'),
(15, 'Peugeot Boxer', 7499, 13998, 20997, 21996, 27495, 32994, 38493, 43992, 49491, 54990, 60489, 65988, 71487, 76986, 77986, 78986, 79986, 80982, 85481, 89980, 94479, 98978, 103477, 107976, 112475, 116974, '121473', '125972', '130471', '134970'),
(16, 'Mercedes Sprinter', 8999, 15998, 23997, 27996, 34995, 41994, 48993, 55992, 62991, 69990, 76989, 83988, 90987, 97986, 98986, 99986, 101983, 107982, 113981, 119980, 125979, 131978, 137977, 143976, 149975, 155974, '', '', '', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autok`
--
ALTER TABLE `autok`
  ADD UNIQUE KEY `id` (`id`);

--
-- A tábla indexei `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `TABLE 3`
--
ALTER TABLE `TABLE 3`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `autok`
--
ALTER TABLE `autok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT a táblához `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT a táblához `TABLE 3`
--
ALTER TABLE `TABLE 3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
