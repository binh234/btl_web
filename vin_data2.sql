-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 02:59 AM
-- Server version: 8.0.19
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinfast`
--
DROP DATABASE IF EXISTS `vin_data`;
CREATE DATABASE `vin_data`;
USE `vin_data`;

-- --------------------------------------------------------

--
-- Table structure for table `getnews`
--

CREATE TABLE `getnews` (
  `id` int NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `getnews`
--

INSERT INTO `getnews` (`id`, `email`) VALUES
(1, 'marissamartin@yahoo.com'),
(2, 'leonardjohn@yahoo.com'),
(3, 'hwatson@joseph.com'),
(4, 'kyoung@yahoo.com'),
(5, 'ryanjohnson@yahoo.com'),
(6, 'ashleycastillo@yahoo.com'),
(7, 'adamswilliam@gmail.com'),
(8, 'roberthill@hensley.biz'),
(9, 'barnesjeremy@moore.com'),
(10, 'utran@hotmail.com'),
(11, 'zimmermanvictoria@pratt.info'),
(12, 'dperry@yahoo.com'),
(13, 'heather40@ferguson.com'),
(14, 'brent71@yahoo.com'),
(15, 'betty81@gmail.com'),
(16, 'duane18@sanders.com'),
(17, 'debbiedunn@chavez.info'),
(18, 'nicholasortiz@white.com'),
(19, 'rtodd@gmail.com'),
(20, 'usanchez@yahoo.com'),
(21, 'hartjustin@gmail.com'),
(22, 'reeddeborah@gmail.com'),
(23, 'alexanderjoel@hotmail.com'),
(24, 'fwade@palmer.biz'),
(25, 'xtaylor@rodriguez-bennett.com'),
(26, 'jacksonjordan@chaney-clayton.info'),
(27, 'brendafigueroa@stewart-peters.com'),
(28, 'katiecampbell@gmail.com'),
(29, 'umyers@lawrence.com'),
(30, 'jennifer38@yahoo.com'),
(31, 'dgutierrez@gmail.com'),
(32, 'kylebrown@gmail.com'),
(33, 'ramirezjon@wang.com'),
(34, 'megan60@allen-roberts.com'),
(35, 'gregoryestrada@gmail.com'),
(36, 'randy51@hotmail.com'),
(37, 'kimberlyroberson@williams.com'),
(38, 'shafferkelly@yahoo.com'),
(39, 'david71@stephens-howe.com'),
(40, 'moralesjennifer@buckley.com'),
(41, 'brittany20@smith.com'),
(42, 'sara42@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `maintenanceschedule`
--

CREATE TABLE `maintenanceschedule` (
  `id` int NOT NULL,
  `licensePlate` longtext NOT NULL,
  `distance` int NOT NULL,
  `service` varchar(50) NOT NULL,
  `note` longtext NOT NULL,
  `time` datetime(6) NOT NULL,
  `infoId` int NOT NULL,
  `productId` int DEFAULT NULL,
  `showroomId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maintenanceschedule`
--

INSERT INTO `maintenanceschedule` (`id`, `licensePlate`, `distance`, `service`, `note`, `time`, `infoId`, `productId`, `showroomId`) VALUES
(1, '9037819915731', 4283, '', 'Believe dog even wall same director.', '2021-01-13 09:23:00.000000', 34, 4, 3),
(2, '7947952326635', 4963, '', 'Key alone himself certainly. Really reduce capital heavy stage. Heart section appear pass action provide kind.', '2021-02-06 11:27:57.000000', 91, 3, 6),
(3, '5800144152808', 2600, '', 'Get our reality bring window site. Family foot medical serious back as former film.', '2021-03-08 20:55:48.000000', 71, 3, 2),
(4, '0306765324925', 1932, '', 'Grow down already.', '2021-02-28 14:02:22.000000', 75, 2, 2),
(5, '2003863905433', 3639, '', 'Back from up or.', '2021-04-09 07:12:02.000000', 15, 1, 2),
(6, '5031922088836', 1918, '', 'Already question hair reveal example according power.\nForeign term as. Campaign economy different job per civil explain.', '2021-02-11 04:51:33.000000', 67, 4, 4),
(7, '6727516520656', 4586, '', 'World.', '2021-02-28 02:20:05.000000', 3, 3, 5),
(8, '2563177922560', 655, '', 'Color determine rise natural because. Everybody say mean yet perhaps consumer authority.', '2021-04-23 16:01:52.000000', 28, 3, 6),
(9, '4480840534234', 4814, '', 'Sister range name. Energy something success follow development show those. Recognize whatever figure amount describe.', '2021-01-18 04:37:54.000000', 55, 3, 4),
(10, '0955912473239', 2848, '', 'Main woman between project.', '2021-02-22 09:54:41.000000', 63, 1, 2),
(11, '9864276804546', 577, '', 'Population help peace.', '2021-02-10 21:17:39.000000', 32, 4, 5),
(12, '8353766094512', 1051, '', 'Drug work not soon model. Health computer them candidate. Allow cover if though despite.\nNear turn entire identify. Grow win manage audience.', '2021-02-27 22:17:40.000000', 12, 4, 6),
(13, '8477468552773', 3474, '', 'Him life recognize box.', '2021-02-03 23:32:29.000000', 43, 3, 1),
(14, '0492957308251', 684, '', 'Technology show civil little wish director.', '2021-01-26 15:44:34.000000', 52, 4, 6),
(15, '3325033997026', 4213, '', 'Partner town their population century.', '2021-03-20 22:07:42.000000', 8, 4, 3),
(16, '2097221535818', 4499, '', 'Site sense push.', '2021-03-16 08:39:53.000000', 46, 4, 1),
(17, '5063694240388', 3294, '', 'Quite statement crime agree. Name suddenly later prevent key. Officer measure play fact.', '2021-04-28 05:28:12.000000', 8, 4, 2),
(18, '4631188080122', 1646, '', 'Deep political occur attorney at. Every price blood fear let card cause.\nSpring former establish other.', '2021-02-07 21:16:27.000000', 65, 1, 5),
(19, '1663348290033', 4679, '', 'Throw likely team money wide sit.', '2021-05-14 16:22:35.000000', 99, 1, 4),
(20, '5044923772905', 3883, '', 'So identify spring place create. Per economy piece animal couple. Movie ok east debate and.', '2021-03-22 09:26:38.000000', 71, 4, 1),
(21, '6579334335541', 3825, '', 'Read cultural we.', '2021-01-23 12:27:27.000000', 4, 3, 5),
(22, '4831430009243', 4881, '', 'Technology.', '2021-01-08 19:44:18.000000', 15, 2, 3),
(23, '1537642945489', 4163, '', 'Growth drive visit alone movie school perform. Agency win smile kitchen activity scene.', '2021-04-03 05:28:09.000000', 72, 3, 2),
(24, '8622324438225', 1966, '', 'Local late your meet first. Argue catch south present score help.\nWhether former draw unit rule month. Herself worry others author between.', '2021-01-08 08:06:14.000000', 40, 1, 5),
(25, '4984336692358', 3170, '', 'Popular media could key deal reflect of.', '2021-06-02 05:11:54.000000', 53, 1, 1),
(26, '7934739821681', 2763, '', 'Summer few order peace war study. Agent system answer remember between. Cultural trade particular call performance low movie.', '2021-02-14 10:20:05.000000', 53, 3, 5),
(27, '8034256280942', 2701, '', 'Just everything Democrat water. Voice happen firm pull measure. Benefit economy perform kitchen central resource.', '2021-05-01 15:31:00.000000', 40, 1, 5),
(28, '1945225916317', 357, '', 'School develop white not evening return exactly.\nAbove water charge. Protect if yourself enough significant page likely.', '2021-02-04 04:58:26.000000', 91, 2, 6),
(29, '0941935382718', 2735, '', 'Reflect him late apply size.', '2021-06-04 01:37:08.000000', 53, 4, 3),
(30, '6691256560314', 4491, '', 'Technology sense prove wife structure. Bag free hard bar.', '2021-04-04 19:38:04.000000', 95, 3, 4),
(31, '3949870859989', 905, '', 'Pattern including hope reflect research source position. Popular theory recently part if.', '2021-03-19 19:17:31.000000', 90, 4, 4),
(32, '9429192955369', 2006, '', 'Recent everything will subject window.', '2021-02-06 09:22:38.000000', 78, 2, 2),
(33, '8483416650506', 4499, '', 'Son respond sound walk.', '2021-04-20 19:24:31.000000', 57, 3, 4),
(34, '2508927753017', 334, '', 'Before bit quality cost inside much. Environmental order and director.\nFive behind other something politics. Foreign campaign seek husband. Trial think movie west.', '2021-01-14 06:14:26.000000', 20, 3, 4),
(35, '8359713950215', 4673, '', 'Watch travel every.', '2021-06-03 22:59:37.000000', 22, 3, 1),
(36, '2808393663733', 1955, '', 'Church policy would lay type through movie.', '2021-01-01 03:45:53.000000', 24, 4, 6),
(37, '6437977029055', 3695, '', 'Artist plan item physical door him. Soon according eight.', '2021-01-28 10:24:23.000000', 26, 2, 2),
(38, '2358276173011', 3693, '', 'Particular attack message plan up set. Quickly democratic professor president thing.', '2021-02-23 08:06:36.000000', 15, 1, 4),
(39, '1155945008238', 2836, '', 'Final station fact growth weight technology. Subject toward develop recently.', '2021-04-07 16:45:43.000000', 57, 2, 2),
(40, '3354088634613', 84, '', 'Up offer cover take today.', '2021-02-11 09:27:19.000000', 35, 1, 4),
(41, '2162691889684', 2514, '', 'Part coach will either religious party behind. Away yourself suggest.', '2021-05-11 14:37:38.000000', 14, 1, 2),
(42, '8018821198431', 2457, '', 'Information letter head staff.', '2021-04-06 10:59:01.000000', 96, 1, 1),
(43, '9773725292775', 2763, '', 'Federal body yeah officer sound.', '2021-05-21 17:52:46.000000', 7, 4, 4),
(44, '4269868060452', 3815, '', 'Citizen cell soon base. Material bit however better leave.', '2021-02-14 17:01:54.000000', 20, 1, 2),
(45, '1935873815543', 149, '', 'Eat memory citizen.', '2021-04-28 12:34:58.000000', 40, 3, 3),
(46, '1298820838755', 1852, '', 'Drug run mind try especially account value. Woman his outside police dream political election miss. Throw within card often loss natural describe board.\nOften fly machine energy.', '2021-03-13 09:46:39.000000', 71, 1, 1),
(47, '4831464682257', 4927, '', 'Worker only expert. Same cover tough where.', '2021-03-27 06:01:46.000000', 77, 1, 4),
(48, '1669246281469', 3254, '', 'Late despite have.', '2021-03-28 15:19:54.000000', 61, 4, 4),
(49, '2000689391396', 1572, '', 'Join effort Mrs fight one. Perhaps plan unit serious message and.', '2021-01-30 21:03:15.000000', 46, 3, 3),
(50, '6941122053099', 1604, '', 'Morning sound like. Young receive blue research.\nAuthority president smile religious. Treatment travel take. Amount yet strong leg program generation.', '2021-05-14 00:48:40.000000', 50, 2, 6),
(51, '6074138965207', 3655, '', 'Court indeed American expert later. Let ask forget.', '2021-04-09 06:47:10.000000', 16, 2, 3),
(52, '1565527295881', 2740, '', 'Production there in high least once wide. Seven prove light we production voice.', '2021-03-01 13:52:03.000000', 89, 1, 2),
(53, '3464104449500', 3132, '', 'Less strong establish ahead. Friend professional present news travel. After describe about throw first agree respond.', '2021-02-28 22:17:25.000000', 72, 4, 4),
(54, '0481474428400', 4682, '', 'Light head explain sport.\nCapital color structure add. View poor than. Kid pattern travel effort watch space crime.', '2021-04-26 02:51:38.000000', 96, 4, 1),
(55, '0992275184591', 4427, '', 'Cause possible possible return. There figure leader off.', '2021-01-05 21:23:43.000000', 79, 1, 2),
(56, '1900958933621', 619, '', 'Each relate spring.', '2021-02-14 10:11:02.000000', 22, 3, 5),
(57, '4621452670176', 115, '', 'Skill instead ahead guy develop. Carry green call.', '2021-02-05 06:26:31.000000', 33, 1, 5),
(58, '9926321330170', 1134, '', 'Work thank change itself. Manage yeah leader five bag.', '2021-02-24 22:08:25.000000', 71, 2, 1),
(59, '1246939285304', 1129, '', 'Occur treatment.', '2021-01-10 22:25:07.000000', 6, 2, 2),
(60, '3825647419187', 1352, '', 'Move peace identify election couple executive impact pressure. Machine leave key.', '2021-04-08 18:23:19.000000', 2, 1, 3),
(61, '3288743541559', 848, '', 'Nice stage mouth blue health. Be play year report there those can. Lot leg at later study.', '2021-02-08 14:34:54.000000', 55, 1, 3),
(62, '6643506743637', 3607, '', 'Rise anything social focus blue tend matter. Home conference toward western lay cost. Along poor quickly second. Owner that base health.\nImprove trade around better follow.', '2021-04-25 17:42:41.000000', 16, 3, 5),
(63, '0917076300142', 4494, '', 'Wind since here. Actually environmental her picture own president look.', '2021-03-27 21:28:20.000000', 84, 1, 5),
(64, '5178607680171', 161, '', 'List American near hope style. Available happy college sense. Explain year almost throw tax.', '2021-04-18 09:29:00.000000', 18, 4, 5),
(65, '1099070077865', 209, '', 'Mission partner sit word our ask. Various kitchen himself young piece police. Process raise just wonder.', '2021-05-25 21:48:46.000000', 74, 3, 6),
(66, '3721481548679', 4449, '', 'War or new choose. Pull executive result concern eat move house.', '2021-05-07 09:19:23.000000', 18, 1, 5),
(67, '2902354864092', 3571, '', 'More wall great even run season town. Red sell business.', '2021-04-03 04:58:22.000000', 62, 3, 2),
(68, '1083849344719', 3729, '', 'Yard safe order feeling which look of building. Morning cell boy himself physical rich.', '2021-05-29 18:44:37.000000', 73, 1, 4),
(69, '5889122314124', 1596, '', 'Big article city. Type discuss person nearly we skill ready.', '2021-02-13 09:05:57.000000', 95, 1, 1),
(70, '2285687610213', 440, '', 'Anyone first huge dog. Upon girl thought at model for. While management while whole measure edge.\nStandard all share source they. Plant yourself adult identify leader. Rate business various.', '2021-04-03 20:15:17.000000', 93, 4, 2),
(71, '2470034863167', 1285, '', 'Both than support rest receive decade six. Idea task since like seven week election including.', '2021-02-01 19:22:37.000000', 83, 3, 2),
(72, '1489945373943', 4389, '', 'Policy stop national. Southern officer increase certainly site.', '2021-05-18 02:22:18.000000', 59, 1, 2),
(73, '9483392981277', 3843, '', 'Point security economy say. Outside instead plan great response. Voice discussion last.', '2021-05-01 14:53:45.000000', 11, 1, 2),
(74, '8929066453705', 1670, '', 'Simple buy cover mission kid attorney.', '2021-03-28 07:51:19.000000', 90, 1, 2),
(75, '8366950411717', 1594, '', 'Skin federal who through occur air.', '2021-06-03 23:20:46.000000', 37, 4, 4),
(76, '1303450008778', 4777, '', 'Old piece wear you dog throw maintain. Every deal deep actually hour behavior. Standard easy film former bring kind account.', '2021-04-25 14:23:45.000000', 89, 4, 5),
(77, '8566743781252', 2257, '', 'Day community keep agency suffer move rate ability. Reveal election because process painting Mr bag. It interview wall my summer.', '2021-03-04 23:30:07.000000', 55, 4, 4),
(78, '4375206331098', 2123, '', 'Eat remain effect. Mr air industry on common.', '2021-05-21 00:21:40.000000', 85, 1, 5),
(79, '1922253617009', 3440, '', 'Including social yeah risk. Hot budget sometimes ball however leader play.', '2021-01-17 22:43:41.000000', 72, 3, 1),
(80, '8728168550774', 374, '', 'System morning agency organization design build.', '2021-03-11 22:27:56.000000', 17, 4, 4),
(81, '2922464732354', 4315, '', 'Sound true and stop five trouble involve act.', '2021-05-19 22:08:23.000000', 56, 2, 2),
(82, '0475990772988', 316, '', 'Local machine green reveal hospital participant can. Stock eight necessary benefit.', '2021-03-01 01:47:46.000000', 69, 4, 4),
(83, '1181475116085', 1342, '', 'Discover up.', '2021-03-10 22:29:28.000000', 29, 4, 4),
(84, '3360249817334', 1937, '', 'Bring beautiful strong. Necessary bit with.', '2021-02-12 11:52:44.000000', 59, 2, 6),
(85, '7843654788665', 1096, '', 'Language prevent store. Send from small item. Quickly force hit teacher.\nQuite detail into painting general. Decade throw table debate.', '2021-03-28 10:00:37.000000', 80, 2, 6),
(86, '0378806899349', 2449, '', 'Tax.', '2021-03-30 11:10:22.000000', 49, 3, 2),
(87, '2463341203068', 2979, '', 'Away sit difficult effect. Do stop and scene.\nTotal really care message political car. Pressure figure she minute.', '2021-02-19 02:55:35.000000', 95, 1, 4),
(88, '9806683320004', 1330, '', 'Bag plan night executive onto you pass. Risk treat finish none size suggest. Young but experience forget product quite.', '2021-04-01 13:59:08.000000', 86, 1, 1),
(89, '6074750922148', 2660, '', 'Road growth season because shoulder study. Section whatever former pretty.', '2021-02-07 06:36:16.000000', 11, 4, 4),
(90, '1537103493006', 4411, '', 'Pick firm for still sing stop modern five.', '2021-03-02 08:48:27.000000', 1, 1, 4),
(91, '5951570945430', 1747, '', 'Head decision parent trade term. Foreign young career major step general probably.', '2021-03-26 07:01:06.000000', 26, 4, 3),
(92, '9310865824473', 2315, '', 'Bag friend food rather air do.', '2021-03-05 10:00:47.000000', 32, 2, 1),
(93, '9735764477941', 3624, '', 'Treat water exactly improve statement lot catch. Month huge lawyer.', '2021-02-03 01:45:38.000000', 87, 4, 4),
(94, '5288814894229', 4008, '', 'Political plant some.', '2021-06-01 20:52:23.000000', 98, 4, 3),
(95, '8250065701467', 3459, '', 'Laugh size impact brother machine through. It tend create suffer environmental position human. Whom at partner account light hot every.', '2021-05-10 14:32:33.000000', 96, 1, 1),
(96, '9496222379730', 4407, '', 'Power stop begin growth maybe.', '2021-02-18 19:13:30.000000', 82, 1, 3),
(97, '1588889287389', 3334, '', 'Fund certain short service situation page accept he.', '2021-04-13 18:31:24.000000', 39, 3, 1),
(98, '6571551501334', 1791, '', 'Little protect their thank past song.', '2021-05-27 23:48:05.000000', 95, 4, 2),
(99, '7503525304042', 818, '', 'Start operation.', '2021-05-19 06:57:22.000000', 47, 4, 6),
(100, '5209347215215', 2740, '', 'Worry develop power chance consumer store yes food.', '2021-02-20 02:03:03.000000', 5, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
  `type` varchar(10) NOT NULL,
  `startDate` datetime(6) NOT NULL,
  `expireDate` datetime(6) NOT NULL,
  `infoId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `type`, `startDate`, `expireDate`, `infoId`) VALUES
(1, 'VIP365', '2021-06-06 14:44:31.577839', '2021-06-07 23:39:08.000000', 1),
(2, 'VIP365', '2021-06-06 14:44:31.622907', '2021-06-15 08:14:01.000000', 3),
(3, 'Member', '2021-06-06 14:44:31.643132', '2021-07-31 09:46:35.000000', 6),
(4, 'VIP', '2021-06-06 14:44:31.664898', '2021-07-09 02:51:24.000000', 11),
(5, 'VIP365', '2021-06-06 14:44:31.681907', '2021-06-07 18:34:47.000000', 13),
(6, 'Member', '2021-06-06 14:44:31.701064', '2021-07-06 20:02:27.000000', 17),
(7, 'VIP', '2021-06-06 14:44:31.717913', '2021-06-21 09:54:26.000000', 25),
(8, 'VIP', '2021-06-06 14:44:31.735907', '2021-06-18 23:43:03.000000', 27),
(9, 'VIP', '2021-06-06 14:44:31.750900', '2021-07-28 07:40:47.000000', 28),
(10, 'Member', '2021-06-06 14:44:31.768903', '2021-06-30 15:02:26.000000', 30),
(11, 'Member', '2021-06-06 14:44:31.787347', '2021-06-21 21:30:55.000000', 31),
(12, 'VIP', '2021-06-06 14:44:31.806907', '2021-06-12 08:26:16.000000', 40),
(13, 'VIP365', '2021-06-06 14:44:31.824924', '2021-07-29 08:10:32.000000', 43),
(14, 'VIP365', '2021-06-06 14:44:31.842927', '2021-06-12 08:47:55.000000', 44),
(15, 'VIP', '2021-06-06 14:44:31.860924', '2021-07-09 14:06:36.000000', 49),
(16, 'Member', '2021-06-06 14:44:31.878903', '2021-07-29 14:15:05.000000', 50),
(17, 'Member', '2021-06-06 14:44:31.895912', '2021-06-17 23:08:11.000000', 51),
(18, 'VIP365', '2021-06-06 14:44:31.914905', '2021-07-29 19:27:59.000000', 52),
(19, 'Member', '2021-06-06 14:44:31.932901', '2021-08-03 00:49:35.000000', 53),
(20, 'VIP365', '2021-06-06 14:44:31.950902', '2021-06-22 12:08:25.000000', 54),
(21, 'VIP365', '2021-06-06 14:44:31.969904', '2021-06-17 21:53:47.000000', 65),
(22, 'VIP', '2021-06-06 14:44:31.986906', '2021-07-22 13:47:17.000000', 70),
(23, 'VIP', '2021-06-06 14:44:32.004906', '2021-07-05 18:09:05.000000', 72),
(24, 'VIP365', '2021-06-06 14:44:32.024908', '2021-07-20 04:03:04.000000', 75),
(25, 'VIP', '2021-06-06 14:44:32.041996', '2021-07-23 18:06:27.000000', 76),
(26, 'VIP365', '2021-06-06 14:44:32.059908', '2021-06-17 11:32:35.000000', 77),
(27, 'VIP', '2021-06-06 14:44:32.075913', '2021-07-10 10:11:48.000000', 80),
(28, 'VIP', '2021-06-06 14:44:32.093913', '2021-07-13 16:54:46.000000', 85),
(29, 'Member', '2021-06-06 14:44:32.112903', '2021-06-17 13:10:34.000000', 90);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `engine` varchar(20) NOT NULL,
  `gear` varchar(20) NOT NULL,
  `wattage` int NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `length` int NOT NULL,
  `price` bigint NOT NULL,
  `maxVelocity` int NOT NULL,
  `consume` int NOT NULL,
  `type` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `model` varchar(20) NOT NULL,
  `title` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `color`, `engine`, `gear`, `wattage`, `width`, `height`, `length`, `price`, `maxVelocity`, `consume`, `type`, `image`, `model`, `title`) VALUES
(1, 'VF e34', 'Đen', 'V8 6.2L', 'Tự động, 8 cấp', 420, 1987, 5146, 1740, 4600000000, 120, 85, 'car', '', 'SUV', 'Cùng bạn bứt phá mọi giới hạn'),
(2, 'LUX A2.0', 'Đen', '2.0L', 'Tự động, 8 cấp', 174, 1900, 1464, 4973, 1206240000, 112, 70, 'car', '', 'Sedan', 'Tận hưởng từng khoảnh khắc'),
(3, 'IMPES', 'Xanh', 'Bosch, một chiều', 'Pin Lithium', 1200, 710, 1070, 1800, 14900000, 49, 22, 'motor', '', 'Electronic', 'Dáng sành điệu, kiểu chất chơi'),
(4, 'Ludo', 'Đỏ', 'Bosch, một chiều', 'Pin Lithium', 500, 715, 1070, 1700, 12900000, 35, 22, 'motor', '', 'Electronic', 'Tỏa chất riêng - bật cá tính');

-- --------------------------------------------------------

--
-- Table structure for table `productdescription`
--

CREATE TABLE `productdescription` (
  `id` int NOT NULL,
  `text` varchar(100) NOT NULL,
  `productId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productdescription`
--

INSERT INTO `productdescription` (`id`, `text`, `productId`) VALUES
(1, 'Ô tô điện thông minh khởi tạo tương lai di chuyển xanh', 1),
(2, 'Hệ thống pin tiên tiến, chính sách thuê pin độc đáo', 1),
(3, 'Chi phi vận hành, bảo dưỡng rẻ hơn xe xăng', 1),
(4, 'Thiết kế sang trọng, tinh tế', 2),
(5, 'Động cơ tăng áp mạnh mẽ', 2),
(6, 'Hệ dẫn động cầu sau và treo khí nén cho cảm giác lái thể thao', 2);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `startDate` datetime(6) NOT NULL,
  `expireDate` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `title`, `content`, `startDate`, `expireDate`, `image`) VALUES
(1, 'Theory ability himself.', 'Part research by picture. Care back other final true which newspaper.\nProfessor occur public activity allow bill. Manager shoulder far turn task all.', '2021-04-14 03:24:03.000000', '2021-04-19 23:07:53.000000', ''),
(2, 'Into prove drive month.', 'Trip series bank state. For through read organization. Town upon serve prevent test woman lot.\nInformation citizen consider network. Stay necessary true individual goal.', '2021-01-29 06:13:29.000000', '2021-05-14 16:44:45.000000', ''),
(3, 'Interview money century.', 'System four author development say those. Listen job begin respond skin message bar. Case man pick medical carry own.', '2021-05-16 12:52:49.000000', '2021-05-26 03:42:54.000000', ''),
(4, 'Her unit yeah new activity.', 'Thousand day dog meeting threat win identify. Health meeting represent increase study development. Score local shake guy common old.', '2021-03-02 17:54:11.000000', '2021-05-25 06:20:05.000000', ''),
(5, 'Every which human.', 'Right fund movie campaign. Deal night despite knowledge now be data.\nThis serve mention local fine low plan. Most later score know understand color win. Right heart parent little.', '2021-02-09 19:29:56.000000', '2021-02-12 11:49:25.000000', ''),
(6, 'Candidate chance rest move.', 'Something wall under may. Environmental single floor build trouble. Material reach office message role far political.\nOften help hard especially. Which kitchen memory thousand today soldier.', '2021-01-10 00:20:24.000000', '2021-02-04 04:22:44.000000', ''),
(7, 'Else place plan leader.', 'Anything follow yes. Stuff would himself case might. Measure blood magazine series soldier against. Goal treat state fine plant.', '2021-05-16 21:42:15.000000', '2021-06-03 01:42:06.000000', ''),
(8, 'Word trouble when despite.', 'Community cost government experience range end social move. Long yet treat physical these may. Local three war find.', '2021-04-24 02:14:05.000000', '2021-05-20 18:29:54.000000', ''),
(9, 'That accept decide.', 'As pattern establish time trade character minute. Many successful resource central choice. Five dinner say force produce their.\nSuch sign view company.', '2021-03-08 08:27:37.000000', '2021-04-06 04:31:30.000000', ''),
(10, 'No least hear now.', 'Sell allow glass three least view draw. Bad responsibility lot agency trip exactly most.\nRequire too special direction. Current water former office provide room part.', '2021-05-24 22:52:05.000000', '2021-06-03 03:24:23.000000', ''),
(11, 'But trial great talk.', 'So never pass you receive. Quickly campaign fall much. Ok nice edge. End can national.\nMouth building support concern range. Defense property professional stage though. More its region.', '2021-05-13 18:50:28.000000', '2021-06-06 16:37:28.000000', ''),
(12, 'Hot night good school goal.', 'Team sport enter author available. Ahead should agreement trial morning require each.\nNice compare how add present police. Live tend test western.', '2021-05-22 17:28:23.000000', '2021-06-06 00:24:32.000000', ''),
(13, 'Leg all many change.', 'Program method spring shoulder reach protect. Attention old phone discuss.\nCan head federal experience same.\nWho early wish later your song. For prove small car treat.', '2021-01-30 02:58:20.000000', '2021-05-19 20:20:56.000000', ''),
(14, 'Decision Democrat red single.', 'Exist past work hot. Four say trouble heart go job. Agent decision Mrs.\nWind reason lead. Keep happen apply decide everyone fact head. Prepare happen alone loss decision apply never alone.', '2021-04-16 08:39:06.000000', '2021-04-30 08:27:40.000000', ''),
(15, 'Late over black garden.', 'Actually what image. Interest environmental staff feeling because. Dinner onto Mr.\nCivil ask direction moment responsibility mission capital. Believe eye gas effect force consider throw.', '2021-03-28 02:53:36.000000', '2021-05-14 15:10:03.000000', ''),
(16, 'Guess catch rise.', 'Hope movement language available animal. Successful recognize goal grow.\nBeat reflect far sound. Five idea move reflect discover north political.\nMother administration do example.', '2021-06-02 23:51:43.000000', '2021-06-28 09:43:06.000000', ''),
(17, 'Current catch carry.', 'Total music candidate recently letter. But nation say door. Always radio operation customer think answer.', '2021-06-01 22:18:19.000000', '2021-06-08 19:50:29.000000', ''),
(18, 'Push consider leg walk.', 'Clear interview administration to use. Participant town because. After how result seat imagine month well.\nWhite different return admit play mean. Bad politics today economic. Film then which black.', '2021-06-03 16:59:59.000000', '2021-06-07 23:40:06.000000', ''),
(19, 'Main rise find.', 'Take on human again author. Those sound on.\nWest man learn coach usually month. Most participant pick thing early blood. Buy Mrs serious begin effect citizen.', '2021-06-06 15:42:34.000000', '2021-06-29 14:05:44.000000', ''),
(20, 'Task sound never.', 'Kind hit education see. Discussion key sister growth court agency candidate cold. Test whom carry sit score.', '2021-06-02 13:01:11.000000', '2021-06-21 04:48:17.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `promotiontarget`
--

CREATE TABLE `promotiontarget` (
  `id` int NOT NULL,
  `productId` int NOT NULL,
  `promotionId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `promotiontarget`
--

INSERT INTO `promotiontarget` (`id`, `productId`, `promotionId`) VALUES
(5, 1, 1),
(9, 1, 3),
(12, 1, 4),
(14, 1, 5),
(20, 1, 8),
(23, 1, 9),
(32, 1, 14),
(35, 1, 15),
(39, 1, 17),
(42, 1, 18),
(13, 2, 4),
(15, 2, 5),
(17, 2, 6),
(21, 2, 8),
(24, 2, 9),
(33, 2, 14),
(36, 2, 15),
(37, 2, 16),
(47, 2, 20),
(6, 3, 1),
(8, 3, 2),
(10, 3, 3),
(18, 3, 6),
(22, 3, 8),
(25, 3, 9),
(27, 3, 11),
(30, 3, 13),
(34, 3, 14),
(38, 3, 16),
(40, 3, 17),
(43, 3, 18),
(45, 3, 19),
(48, 3, 20),
(7, 4, 1),
(11, 4, 3),
(16, 4, 5),
(19, 4, 7),
(26, 4, 10),
(28, 4, 11),
(29, 4, 12),
(31, 4, 13),
(41, 4, 17),
(44, 4, 18),
(46, 4, 19),
(49, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `salehistory`
--

CREATE TABLE `salehistory` (
  `id` int NOT NULL,
  `price` bigint NOT NULL,
  `method` varchar(20) NOT NULL,
  `time` datetime(6) NOT NULL,
  `infoId` int NOT NULL,
  `productId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salehistory`
--

INSERT INTO `salehistory` (`id`, `price`, `method`, `time`, `infoId`, `productId`) VALUES
(1, 4600000000, 'Trả thẳng', '2021-01-18 21:54:44.000000', 42, 1),
(2, 14900000, 'Trả thẳng', '2021-04-07 15:40:27.000000', 99, 3),
(3, 12900000, 'Trả thẳng', '2021-01-10 04:35:58.000000', 100, 4),
(4, 12900000, 'Trả thẳng', '2021-04-23 17:53:18.000000', 93, 4),
(5, 12900000, 'Trả thẳng', '2021-04-18 00:05:21.000000', 34, 4),
(6, 12900000, 'Trả góp', '2021-01-31 10:56:18.000000', 79, 4),
(7, 4600000000, 'Trả góp', '2021-05-29 14:42:41.000000', 45, 1),
(8, 12900000, 'Trả góp', '2021-01-08 14:18:11.000000', 45, 4),
(9, 4600000000, 'Trả thẳng', '2021-04-13 18:04:52.000000', 32, 1),
(10, 1206240000, 'Trả thẳng', '2021-02-11 17:36:59.000000', 83, 2),
(11, 4600000000, 'Trả góp', '2021-05-08 23:28:59.000000', 73, 1),
(12, 12900000, 'Trả góp', '2021-04-17 17:30:21.000000', 75, 4),
(13, 1206240000, 'Trả thẳng', '2021-04-19 03:56:38.000000', 85, 2),
(14, 12900000, 'Trả góp', '2021-05-12 12:57:50.000000', 40, 4),
(15, 1206240000, 'Trả thẳng', '2021-04-22 11:13:35.000000', 54, 2),
(16, 14900000, 'Trả thẳng', '2021-05-14 01:18:52.000000', 43, 3),
(17, 12900000, 'Trả góp', '2021-05-25 18:56:06.000000', 23, 4),
(18, 12900000, 'Trả thẳng', '2021-05-02 03:39:21.000000', 76, 4),
(19, 14900000, 'Trả thẳng', '2021-02-02 16:21:09.000000', 2, 3),
(20, 14900000, 'Trả thẳng', '2021-01-01 06:38:54.000000', 31, 3),
(21, 1206240000, 'Trả thẳng', '2021-05-12 08:07:12.000000', 75, 2),
(22, 4600000000, 'Trả thẳng', '2021-02-25 03:46:43.000000', 31, 1),
(23, 14900000, 'Trả thẳng', '2021-04-06 14:17:51.000000', 30, 3),
(24, 4600000000, 'Trả góp', '2021-06-06 20:25:26.000000', 25, 1),
(25, 14900000, 'Trả thẳng', '2021-05-26 03:58:03.000000', 35, 3),
(26, 12900000, 'Trả thẳng', '2021-03-09 04:20:26.000000', 35, 4),
(27, 14900000, 'Trả góp', '2021-04-17 08:29:50.000000', 76, 3),
(28, 1206240000, 'Trả góp', '2021-03-16 16:16:43.000000', 85, 2),
(29, 14900000, 'Trả góp', '2021-02-20 18:11:17.000000', 38, 3),
(30, 1206240000, 'Trả góp', '2021-04-05 12:35:47.000000', 49, 2),
(31, 4600000000, 'Trả góp', '2021-03-11 23:17:22.000000', 76, 1),
(32, 4600000000, 'Trả thẳng', '2021-04-05 17:33:57.000000', 69, 1),
(33, 14900000, 'Trả thẳng', '2021-02-09 06:32:28.000000', 90, 3),
(34, 4600000000, 'Trả góp', '2021-02-04 11:59:19.000000', 81, 1),
(35, 1206240000, 'Trả góp', '2021-01-08 20:07:37.000000', 32, 2),
(36, 14900000, 'Trả góp', '2021-03-09 22:26:51.000000', 1, 3),
(37, 4600000000, 'Trả thẳng', '2021-01-26 12:01:51.000000', 68, 1),
(38, 4600000000, 'Trả thẳng', '2021-05-16 19:09:44.000000', 81, 1),
(39, 4600000000, 'Trả thẳng', '2021-01-20 13:42:02.000000', 10, 1),
(40, 12900000, 'Trả góp', '2021-02-22 19:39:45.000000', 46, 4),
(41, 14900000, 'Trả thẳng', '2021-02-21 15:48:30.000000', 86, 3),
(42, 14900000, 'Trả thẳng', '2021-05-17 03:23:21.000000', 88, 3),
(43, 4600000000, 'Trả góp', '2021-01-24 19:30:42.000000', 45, 1),
(44, 4600000000, 'Trả góp', '2021-01-29 16:15:01.000000', 10, 1),
(45, 1206240000, 'Trả thẳng', '2021-04-10 06:18:49.000000', 57, 2),
(46, 4600000000, 'Trả thẳng', '2021-05-04 14:33:47.000000', 94, 1),
(47, 12900000, 'Trả thẳng', '2021-06-01 05:19:54.000000', 22, 4),
(48, 12900000, 'Trả góp', '2021-06-02 06:37:41.000000', 14, 4),
(49, 1206240000, 'Trả góp', '2021-01-04 09:52:11.000000', 35, 2),
(50, 12900000, 'Trả góp', '2021-03-07 23:50:22.000000', 28, 4),
(51, 14900000, 'Trả góp', '2021-01-03 11:04:30.000000', 85, 3),
(52, 12900000, 'Trả thẳng', '2021-01-23 06:25:24.000000', 88, 4),
(53, 14900000, 'Trả thẳng', '2021-04-05 17:51:50.000000', 21, 3),
(54, 12900000, 'Trả góp', '2021-05-13 21:19:08.000000', 11, 4),
(55, 14900000, 'Trả thẳng', '2021-04-14 15:34:10.000000', 20, 3),
(56, 4600000000, 'Trả thẳng', '2021-04-21 08:55:01.000000', 5, 1),
(57, 14900000, 'Trả thẳng', '2021-01-23 13:29:32.000000', 53, 3),
(58, 14900000, 'Trả thẳng', '2021-05-07 15:59:11.000000', 79, 3),
(59, 12900000, 'Trả thẳng', '2021-03-27 09:29:44.000000', 16, 4),
(60, 1206240000, 'Trả thẳng', '2021-02-12 04:22:18.000000', 90, 2),
(61, 4600000000, 'Trả góp', '2021-02-25 10:08:03.000000', 25, 1),
(62, 12900000, 'Trả góp', '2021-03-12 03:12:15.000000', 72, 4),
(63, 12900000, 'Trả góp', '2021-05-22 05:03:08.000000', 18, 4),
(64, 12900000, 'Trả thẳng', '2021-04-20 22:04:21.000000', 89, 4),
(65, 12900000, 'Trả thẳng', '2021-03-26 18:06:03.000000', 26, 4),
(66, 14900000, 'Trả góp', '2021-04-10 07:28:53.000000', 71, 3),
(67, 1206240000, 'Trả góp', '2021-03-01 21:47:39.000000', 88, 2),
(68, 14900000, 'Trả góp', '2021-02-06 07:54:05.000000', 63, 3),
(69, 12900000, 'Trả thẳng', '2021-03-20 05:27:30.000000', 5, 4),
(70, 14900000, 'Trả góp', '2021-06-04 18:54:20.000000', 40, 3),
(71, 12900000, 'Trả góp', '2021-03-18 13:49:44.000000', 39, 4),
(72, 12900000, 'Trả góp', '2021-03-26 22:47:38.000000', 10, 4),
(73, 14900000, 'Trả thẳng', '2021-01-14 17:24:24.000000', 78, 3),
(74, 4600000000, 'Trả thẳng', '2021-02-08 11:19:00.000000', 41, 1),
(75, 4600000000, 'Trả góp', '2021-01-10 04:23:22.000000', 54, 1),
(76, 14900000, 'Trả góp', '2021-05-06 13:52:06.000000', 60, 3),
(77, 12900000, 'Trả thẳng', '2021-01-17 06:34:29.000000', 5, 4),
(78, 1206240000, 'Trả góp', '2021-06-02 13:46:50.000000', 56, 2),
(79, 1206240000, 'Trả góp', '2021-03-14 20:05:38.000000', 20, 2),
(80, 12900000, 'Trả góp', '2021-03-31 22:24:39.000000', 32, 4),
(81, 4600000000, 'Trả góp', '2021-01-10 16:23:46.000000', 49, 1),
(82, 4600000000, 'Trả góp', '2021-03-28 13:04:40.000000', 44, 1),
(83, 14900000, 'Trả góp', '2021-05-04 09:57:15.000000', 11, 3),
(84, 12900000, 'Trả thẳng', '2021-01-31 04:26:48.000000', 100, 4),
(85, 4600000000, 'Trả thẳng', '2021-04-08 23:08:26.000000', 50, 1),
(86, 4600000000, 'Trả thẳng', '2021-04-18 04:30:45.000000', 18, 1),
(87, 12900000, 'Trả góp', '2021-05-20 02:09:39.000000', 82, 4),
(88, 12900000, 'Trả góp', '2021-03-09 05:00:21.000000', 4, 4),
(89, 1206240000, 'Trả thẳng', '2021-01-03 08:50:23.000000', 26, 2),
(90, 14900000, 'Trả góp', '2021-04-12 15:46:16.000000', 41, 3),
(91, 1206240000, 'Trả góp', '2021-04-28 09:42:35.000000', 43, 2),
(92, 4600000000, 'Trả góp', '2021-02-04 13:59:51.000000', 2, 1),
(93, 4600000000, 'Trả thẳng', '2021-05-08 10:33:38.000000', 54, 1),
(94, 12900000, 'Trả góp', '2021-05-20 02:49:30.000000', 39, 4),
(95, 14900000, 'Trả thẳng', '2021-05-01 02:45:21.000000', 18, 3),
(96, 14900000, 'Trả góp', '2021-02-05 16:06:06.000000', 57, 3),
(97, 14900000, 'Trả góp', '2021-01-02 21:42:31.000000', 89, 3),
(98, 14900000, 'Trả thẳng', '2021-04-28 21:43:07.000000', 72, 3),
(99, 4600000000, 'Trả góp', '2021-01-22 08:34:15.000000', 62, 1),
(100, 14900000, 'Trả thẳng', '2021-01-18 22:29:02.000000', 32, 3),
(101, 1206240000, 'Trả thẳng', '2021-03-19 07:11:27.000000', 26, 2),
(102, 4600000000, 'Trả thẳng', '2021-03-30 06:24:18.000000', 37, 1),
(103, 1206240000, 'Trả thẳng', '2021-05-20 11:37:02.000000', 74, 2),
(104, 4600000000, 'Trả góp', '2021-02-06 09:21:33.000000', 42, 1),
(105, 14900000, 'Trả thẳng', '2021-04-03 09:16:26.000000', 100, 3),
(106, 12900000, 'Trả thẳng', '2021-03-31 05:00:39.000000', 13, 4),
(107, 1206240000, 'Trả góp', '2021-05-16 06:28:01.000000', 100, 2),
(108, 14900000, 'Trả góp', '2021-02-26 15:30:00.000000', 60, 3),
(109, 1206240000, 'Trả thẳng', '2021-01-06 17:42:27.000000', 8, 2),
(110, 4600000000, 'Trả thẳng', '2021-03-28 13:55:01.000000', 22, 1),
(111, 4600000000, 'Trả thẳng', '2021-03-23 19:45:31.000000', 33, 1),
(112, 14900000, 'Trả góp', '2021-05-20 01:30:44.000000', 17, 3),
(113, 4600000000, 'Trả thẳng', '2021-01-24 01:35:42.000000', 13, 1),
(114, 12900000, 'Trả thẳng', '2021-04-10 01:28:00.000000', 3, 4),
(115, 4600000000, 'Trả góp', '2021-03-07 20:30:13.000000', 55, 1),
(116, 1206240000, 'Trả thẳng', '2021-01-06 04:47:38.000000', 32, 2),
(117, 1206240000, 'Trả thẳng', '2021-01-13 06:38:08.000000', 78, 2),
(118, 14900000, 'Trả góp', '2021-02-04 11:52:51.000000', 53, 3),
(119, 12900000, 'Trả góp', '2021-03-22 13:55:25.000000', 40, 4),
(120, 1206240000, 'Trả thẳng', '2021-01-18 19:23:22.000000', 17, 2),
(121, 4600000000, 'Trả góp', '2021-01-10 10:04:45.000000', 1, 1),
(122, 4600000000, 'Trả góp', '2021-03-23 00:24:04.000000', 60, 1),
(123, 4600000000, 'Trả thẳng', '2021-03-16 09:18:03.000000', 37, 1),
(124, 4600000000, 'Trả góp', '2021-01-08 23:28:08.000000', 91, 1),
(125, 12900000, 'Trả góp', '2021-02-07 21:19:57.000000', 10, 4),
(126, 4600000000, 'Trả góp', '2021-02-18 15:29:20.000000', 61, 1),
(127, 12900000, 'Trả góp', '2021-04-23 12:31:49.000000', 68, 4),
(128, 4600000000, 'Trả thẳng', '2021-01-13 16:10:54.000000', 53, 1),
(129, 1206240000, 'Trả góp', '2021-02-03 11:29:33.000000', 78, 2),
(130, 4600000000, 'Trả thẳng', '2021-01-16 02:57:45.000000', 94, 1),
(131, 1206240000, 'Trả góp', '2021-02-22 01:44:44.000000', 6, 2),
(132, 14900000, 'Trả thẳng', '2021-03-09 22:56:58.000000', 95, 3),
(133, 12900000, 'Trả góp', '2021-03-01 20:26:35.000000', 1, 4),
(134, 4600000000, 'Trả thẳng', '2021-04-27 23:36:29.000000', 79, 1),
(135, 12900000, 'Trả góp', '2021-06-02 17:20:23.000000', 89, 4),
(136, 1206240000, 'Trả góp', '2021-05-14 21:30:34.000000', 41, 2),
(137, 14900000, 'Trả góp', '2021-05-19 02:33:04.000000', 48, 3),
(138, 12900000, 'Trả góp', '2021-04-29 06:13:32.000000', 4, 4),
(139, 4600000000, 'Trả góp', '2021-03-27 17:22:01.000000', 78, 1),
(140, 1206240000, 'Trả thẳng', '2021-06-06 04:30:20.000000', 66, 2),
(141, 4600000000, 'Trả góp', '2021-05-27 05:46:59.000000', 98, 1),
(142, 12900000, 'Trả góp', '2021-04-23 19:09:08.000000', 29, 4),
(143, 12900000, 'Trả thẳng', '2021-04-18 00:29:17.000000', 76, 4),
(144, 4600000000, 'Trả góp', '2021-04-20 14:09:16.000000', 16, 1),
(145, 4600000000, 'Trả góp', '2021-05-26 19:45:28.000000', 78, 1),
(146, 4600000000, 'Trả góp', '2021-05-20 22:16:27.000000', 61, 1),
(147, 1206240000, 'Trả thẳng', '2021-01-19 10:22:06.000000', 7, 2),
(148, 12900000, 'Trả góp', '2021-01-04 19:21:41.000000', 83, 4),
(149, 14900000, 'Trả thẳng', '2021-03-01 10:20:53.000000', 26, 3),
(150, 1206240000, 'Trả góp', '2021-01-16 22:14:40.000000', 90, 2),
(151, 1206240000, 'Trả góp', '2021-01-18 03:09:33.000000', 29, 2),
(152, 4600000000, 'Trả thẳng', '2021-02-05 06:56:26.000000', 16, 1),
(153, 4600000000, 'Trả thẳng', '2021-05-31 03:44:11.000000', 2, 1),
(154, 1206240000, 'Trả thẳng', '2021-04-14 14:37:14.000000', 53, 2),
(155, 12900000, 'Trả thẳng', '2021-03-01 09:10:20.000000', 60, 4),
(156, 12900000, 'Trả góp', '2021-05-28 10:11:53.000000', 35, 4),
(157, 1206240000, 'Trả góp', '2021-05-18 20:23:52.000000', 90, 2),
(158, 1206240000, 'Trả thẳng', '2021-02-02 04:45:22.000000', 55, 2),
(159, 4600000000, 'Trả thẳng', '2021-01-03 12:26:16.000000', 90, 1),
(160, 4600000000, 'Trả thẳng', '2021-01-31 07:52:49.000000', 62, 1),
(161, 14900000, 'Trả thẳng', '2021-03-11 06:52:15.000000', 92, 3),
(162, 14900000, 'Trả góp', '2021-05-01 21:57:38.000000', 49, 3),
(163, 12900000, 'Trả thẳng', '2021-01-29 06:24:04.000000', 89, 4),
(164, 4600000000, 'Trả góp', '2021-01-29 04:16:53.000000', 60, 1),
(165, 12900000, 'Trả thẳng', '2021-05-26 23:52:03.000000', 45, 4),
(166, 12900000, 'Trả thẳng', '2021-05-24 23:30:38.000000', 28, 4),
(167, 14900000, 'Trả góp', '2021-01-14 23:08:20.000000', 30, 3),
(168, 1206240000, 'Trả góp', '2021-04-25 22:52:10.000000', 88, 2),
(169, 12900000, 'Trả thẳng', '2021-05-04 13:16:03.000000', 71, 4),
(170, 4600000000, 'Trả thẳng', '2021-02-01 21:55:29.000000', 18, 1),
(171, 12900000, 'Trả thẳng', '2021-05-27 22:52:55.000000', 18, 4),
(172, 12900000, 'Trả thẳng', '2021-03-19 00:12:50.000000', 54, 4),
(173, 12900000, 'Trả góp', '2021-04-11 20:49:15.000000', 47, 4),
(174, 4600000000, 'Trả góp', '2021-05-28 12:34:49.000000', 18, 1),
(175, 12900000, 'Trả góp', '2021-03-04 02:55:01.000000', 96, 4),
(176, 4600000000, 'Trả góp', '2021-05-23 11:28:28.000000', 47, 1),
(177, 14900000, 'Trả thẳng', '2021-02-20 02:33:46.000000', 2, 3),
(178, 12900000, 'Trả thẳng', '2021-02-27 18:13:56.000000', 85, 4),
(179, 12900000, 'Trả góp', '2021-05-19 14:52:44.000000', 35, 4),
(180, 12900000, 'Trả thẳng', '2021-05-03 11:37:33.000000', 37, 4),
(181, 14900000, 'Trả thẳng', '2021-06-04 00:32:45.000000', 29, 3),
(182, 12900000, 'Trả góp', '2021-04-04 17:48:24.000000', 38, 4),
(183, 12900000, 'Trả góp', '2021-06-02 08:27:53.000000', 35, 4),
(184, 1206240000, 'Trả góp', '2021-04-09 09:50:13.000000', 24, 2),
(185, 4600000000, 'Trả góp', '2021-05-08 13:52:24.000000', 78, 1),
(186, 4600000000, 'Trả thẳng', '2021-02-25 13:22:40.000000', 13, 1),
(187, 4600000000, 'Trả thẳng', '2021-02-18 12:22:58.000000', 83, 1),
(188, 1206240000, 'Trả thẳng', '2021-06-01 12:36:05.000000', 72, 2),
(189, 12900000, 'Trả góp', '2021-02-11 20:28:04.000000', 48, 4),
(190, 4600000000, 'Trả thẳng', '2021-02-24 01:08:30.000000', 47, 1),
(191, 12900000, 'Trả thẳng', '2021-01-02 15:33:51.000000', 101, 4),
(192, 1206240000, 'Trả góp', '2021-02-13 02:52:39.000000', 47, 2),
(193, 14900000, 'Trả góp', '2021-01-11 15:36:10.000000', 96, 3),
(194, 1206240000, 'Trả góp', '2021-04-09 00:41:52.000000', 91, 2),
(195, 14900000, 'Trả góp', '2021-01-25 17:16:58.000000', 81, 3),
(196, 12900000, 'Trả góp', '2021-04-26 16:52:28.000000', 96, 4),
(197, 4600000000, 'Trả góp', '2021-02-17 17:12:34.000000', 66, 1),
(198, 14900000, 'Trả góp', '2021-01-14 02:57:06.000000', 78, 3),
(199, 1206240000, 'Trả thẳng', '2021-04-23 01:14:21.000000', 26, 2),
(200, 14900000, 'Trả góp', '2021-04-11 19:55:43.000000', 100, 3),
(201, 1206240000, 'Trả thẳng', '2021-03-28 22:48:25.000000', 54, 2),
(202, 4600000000, 'Trả góp', '2021-02-27 21:40:38.000000', 79, 1),
(203, 12900000, 'Trả thẳng', '2021-05-08 09:56:05.000000', 27, 4),
(204, 12900000, 'Trả thẳng', '2021-05-19 17:38:57.000000', 91, 4),
(205, 12900000, 'Trả góp', '2021-01-06 19:21:34.000000', 63, 4),
(206, 14900000, 'Trả thẳng', '2021-05-30 19:13:54.000000', 2, 3),
(207, 12900000, 'Trả thẳng', '2021-03-07 07:13:41.000000', 3, 4),
(208, 1206240000, 'Trả thẳng', '2021-04-23 21:43:38.000000', 31, 2),
(209, 12900000, 'Trả góp', '2021-05-08 01:23:57.000000', 31, 4),
(210, 12900000, 'Trả thẳng', '2021-04-30 16:07:05.000000', 85, 4),
(211, 4600000000, 'Trả góp', '2021-04-02 08:54:52.000000', 99, 1),
(212, 1206240000, 'Trả thẳng', '2021-05-28 12:36:45.000000', 98, 2),
(213, 1206240000, 'Trả thẳng', '2021-03-22 23:12:09.000000', 95, 2),
(214, 1206240000, 'Trả góp', '2021-01-06 22:37:50.000000', 88, 2),
(215, 14900000, 'Trả thẳng', '2021-01-31 16:08:53.000000', 72, 3),
(216, 14900000, 'Trả thẳng', '2021-01-16 10:48:47.000000', 52, 3),
(217, 12900000, 'Trả góp', '2021-06-06 06:33:29.000000', 36, 4),
(218, 4600000000, 'Trả thẳng', '2021-05-28 19:18:33.000000', 21, 1),
(219, 4600000000, 'Trả góp', '2021-05-24 05:31:52.000000', 75, 1),
(220, 14900000, 'Trả thẳng', '2021-05-21 18:16:43.000000', 93, 3),
(221, 12900000, 'Trả góp', '2021-01-24 05:07:31.000000', 52, 4),
(222, 1206240000, 'Trả góp', '2021-05-19 14:47:34.000000', 34, 2),
(223, 14900000, 'Trả góp', '2021-04-04 18:18:51.000000', 83, 3),
(224, 4600000000, 'Trả góp', '2021-03-06 07:52:26.000000', 60, 1),
(225, 1206240000, 'Trả góp', '2021-04-18 05:00:29.000000', 26, 2),
(226, 12900000, 'Trả góp', '2021-03-03 18:06:50.000000', 77, 4),
(227, 4600000000, 'Trả thẳng', '2021-01-30 20:04:01.000000', 1, 1),
(228, 12900000, 'Trả góp', '2021-02-14 19:22:49.000000', 70, 4),
(229, 12900000, 'Trả thẳng', '2021-05-28 13:05:09.000000', 9, 4),
(230, 4600000000, 'Trả góp', '2021-04-24 15:35:57.000000', 67, 1),
(231, 1206240000, 'Trả góp', '2021-02-09 01:09:41.000000', 81, 2),
(232, 1206240000, 'Trả thẳng', '2021-05-10 15:26:06.000000', 42, 2),
(233, 14900000, 'Trả góp', '2021-04-05 13:11:54.000000', 46, 3),
(234, 4600000000, 'Trả góp', '2021-04-14 02:05:17.000000', 95, 1),
(235, 1206240000, 'Trả góp', '2021-02-24 20:48:24.000000', 44, 2),
(236, 4600000000, 'Trả góp', '2021-01-22 02:19:47.000000', 21, 1),
(237, 12900000, 'Trả thẳng', '2021-04-08 00:20:09.000000', 94, 4),
(238, 1206240000, 'Trả góp', '2021-01-22 06:24:19.000000', 41, 2),
(239, 1206240000, 'Trả góp', '2021-06-06 18:39:58.000000', 80, 2),
(240, 1206240000, 'Trả thẳng', '2021-03-16 13:52:27.000000', 61, 2),
(241, 4600000000, 'Trả thẳng', '2021-05-18 22:06:47.000000', 92, 1),
(242, 4600000000, 'Trả góp', '2021-03-25 20:06:19.000000', 19, 1),
(243, 1206240000, 'Trả góp', '2021-04-16 13:20:00.000000', 15, 2),
(244, 14900000, 'Trả thẳng', '2021-03-27 04:42:34.000000', 49, 3),
(245, 12900000, 'Trả góp', '2021-05-25 03:46:27.000000', 81, 4),
(246, 12900000, 'Trả góp', '2021-03-18 03:49:24.000000', 34, 4),
(247, 12900000, 'Trả góp', '2021-03-09 13:17:53.000000', 34, 4),
(248, 4600000000, 'Trả góp', '2021-05-12 06:13:08.000000', 66, 1),
(249, 4600000000, 'Trả góp', '2021-02-23 00:38:54.000000', 72, 1),
(250, 12900000, 'Trả góp', '2021-01-07 12:21:55.000000', 60, 4),
(251, 4600000000, 'Trả thẳng', '2021-04-22 12:42:12.000000', 70, 1),
(252, 12900000, 'Trả thẳng', '2021-05-29 09:44:37.000000', 42, 4),
(253, 4600000000, 'Trả thẳng', '2021-03-19 14:41:47.000000', 99, 1),
(254, 12900000, 'Trả thẳng', '2021-03-15 17:29:13.000000', 26, 4),
(255, 4600000000, 'Trả góp', '2021-01-29 23:06:43.000000', 76, 1),
(256, 4600000000, 'Trả thẳng', '2021-04-05 20:47:25.000000', 34, 1),
(257, 12900000, 'Trả thẳng', '2021-03-28 03:42:59.000000', 45, 4),
(258, 1206240000, 'Trả thẳng', '2021-03-03 08:05:04.000000', 24, 2),
(259, 14900000, 'Trả thẳng', '2021-02-28 21:38:39.000000', 40, 3),
(260, 14900000, 'Trả thẳng', '2021-04-24 03:02:22.000000', 76, 3),
(261, 1206240000, 'Trả góp', '2021-01-21 12:55:23.000000', 38, 2),
(262, 12900000, 'Trả góp', '2021-01-28 03:13:06.000000', 20, 4),
(263, 1206240000, 'Trả góp', '2021-05-07 15:30:30.000000', 23, 2),
(264, 4600000000, 'Trả góp', '2021-02-17 19:42:09.000000', 50, 1),
(265, 14900000, 'Trả góp', '2021-03-28 08:26:29.000000', 76, 3),
(266, 14900000, 'Trả góp', '2021-01-19 09:40:03.000000', 91, 3),
(267, 12900000, 'Trả thẳng', '2021-03-01 09:00:10.000000', 30, 4),
(268, 1206240000, 'Trả thẳng', '2021-01-06 19:38:38.000000', 81, 2),
(269, 14900000, 'Trả góp', '2021-03-07 12:09:31.000000', 41, 3),
(270, 4600000000, 'Trả góp', '2021-04-29 10:38:14.000000', 76, 1),
(271, 1206240000, 'Trả góp', '2021-03-10 15:48:34.000000', 39, 2),
(272, 14900000, 'Trả thẳng', '2021-05-13 06:28:14.000000', 62, 3),
(273, 14900000, 'Trả thẳng', '2021-01-07 15:38:29.000000', 26, 3),
(274, 14900000, 'Trả thẳng', '2021-04-26 22:22:11.000000', 57, 3),
(275, 1206240000, 'Trả thẳng', '2021-05-25 19:24:21.000000', 44, 2),
(276, 12900000, 'Trả thẳng', '2021-06-03 19:58:58.000000', 82, 4),
(277, 12900000, 'Trả góp', '2021-05-11 00:48:47.000000', 19, 4),
(278, 1206240000, 'Trả góp', '2021-04-05 21:08:44.000000', 83, 2),
(279, 1206240000, 'Trả thẳng', '2021-01-26 07:05:11.000000', 10, 2),
(280, 1206240000, 'Trả thẳng', '2021-02-02 21:03:21.000000', 67, 2),
(281, 1206240000, 'Trả góp', '2021-04-20 04:21:36.000000', 32, 2),
(282, 12900000, 'Trả góp', '2021-04-01 04:04:11.000000', 84, 4),
(283, 1206240000, 'Trả góp', '2021-03-14 00:58:52.000000', 31, 2),
(284, 12900000, 'Trả thẳng', '2021-05-22 03:13:13.000000', 23, 4),
(285, 4600000000, 'Trả góp', '2021-03-03 07:18:06.000000', 16, 1),
(286, 4600000000, 'Trả thẳng', '2021-05-30 04:44:14.000000', 14, 1),
(287, 1206240000, 'Trả góp', '2021-03-10 03:40:06.000000', 44, 2),
(288, 1206240000, 'Trả góp', '2021-04-30 20:53:03.000000', 48, 2),
(289, 14900000, 'Trả góp', '2021-04-15 13:50:04.000000', 97, 3),
(290, 4600000000, 'Trả góp', '2021-04-12 23:59:19.000000', 82, 1),
(291, 4600000000, 'Trả góp', '2021-06-05 12:03:13.000000', 3, 1),
(292, 4600000000, 'Trả góp', '2021-02-14 08:32:59.000000', 86, 1),
(293, 1206240000, 'Trả góp', '2021-03-07 00:39:01.000000', 70, 2),
(294, 4600000000, 'Trả góp', '2021-01-09 17:42:53.000000', 52, 1),
(295, 12900000, 'Trả góp', '2021-02-03 10:09:43.000000', 38, 4),
(296, 4600000000, 'Trả góp', '2021-03-04 08:32:31.000000', 23, 1),
(297, 1206240000, 'Trả góp', '2021-04-06 16:29:49.000000', 71, 2),
(298, 4600000000, 'Trả góp', '2021-03-10 20:11:06.000000', 85, 1),
(299, 4600000000, 'Trả thẳng', '2021-03-12 19:34:01.000000', 54, 1),
(300, 1206240000, 'Trả góp', '2021-01-06 02:29:28.000000', 27, 2),
(301, 4600000000, 'Trả góp', '2021-04-10 03:05:56.000000', 23, 1),
(302, 14900000, 'Trả thẳng', '2021-02-20 00:10:44.000000', 71, 3),
(303, 1206240000, 'Trả góp', '2021-02-04 18:55:52.000000', 87, 2),
(304, 4600000000, 'Trả góp', '2021-04-10 22:23:13.000000', 58, 1),
(305, 12900000, 'Trả thẳng', '2021-05-19 01:59:35.000000', 83, 4),
(306, 12900000, 'Trả góp', '2021-03-09 10:05:19.000000', 37, 4),
(307, 14900000, 'Trả góp', '2021-01-24 05:17:23.000000', 60, 3),
(308, 1206240000, 'Trả thẳng', '2021-01-31 18:27:38.000000', 59, 2),
(309, 4600000000, 'Trả thẳng', '2021-01-13 21:35:51.000000', 90, 1),
(310, 12900000, 'Trả thẳng', '2021-04-21 02:54:33.000000', 4, 4),
(311, 4600000000, 'Trả thẳng', '2021-04-07 23:38:34.000000', 94, 1),
(312, 4600000000, 'Trả thẳng', '2021-05-06 21:03:15.000000', 32, 1),
(313, 12900000, 'Trả thẳng', '2021-02-18 07:33:08.000000', 4, 4),
(314, 14900000, 'Trả thẳng', '2021-02-03 09:42:37.000000', 90, 3),
(315, 14900000, 'Trả góp', '2021-03-11 03:13:59.000000', 43, 3),
(316, 12900000, 'Trả góp', '2021-04-13 13:55:51.000000', 96, 4),
(317, 14900000, 'Trả góp', '2021-02-19 02:23:49.000000', 77, 3),
(318, 1206240000, 'Trả góp', '2021-02-26 11:08:02.000000', 27, 2),
(319, 12900000, 'Trả góp', '2021-01-02 12:26:06.000000', 86, 4),
(320, 14900000, 'Trả thẳng', '2021-02-17 03:41:01.000000', 31, 3),
(321, 14900000, 'Trả góp', '2021-03-06 13:15:52.000000', 6, 3),
(322, 1206240000, 'Trả thẳng', '2021-03-24 22:54:31.000000', 66, 2),
(323, 1206240000, 'Trả thẳng', '2021-01-14 16:47:53.000000', 98, 2),
(324, 1206240000, 'Trả góp', '2021-05-31 17:25:10.000000', 64, 2),
(325, 12900000, 'Trả thẳng', '2021-05-13 23:39:28.000000', 47, 4),
(326, 4600000000, 'Trả thẳng', '2021-03-18 01:58:21.000000', 54, 1),
(327, 14900000, 'Trả thẳng', '2021-06-01 19:21:48.000000', 93, 3),
(328, 12900000, 'Trả góp', '2021-02-24 19:13:39.000000', 65, 4),
(329, 14900000, 'Trả góp', '2021-03-04 10:57:11.000000', 2, 3),
(330, 1206240000, 'Trả thẳng', '2021-01-12 13:20:41.000000', 75, 2),
(331, 1206240000, 'Trả thẳng', '2021-01-28 00:21:59.000000', 62, 2),
(332, 4600000000, 'Trả thẳng', '2021-03-11 18:25:48.000000', 15, 1),
(333, 14900000, 'Trả góp', '2021-04-07 08:38:24.000000', 70, 3),
(334, 1206240000, 'Trả thẳng', '2021-02-03 03:14:21.000000', 67, 2),
(335, 1206240000, 'Trả góp', '2021-04-25 07:34:17.000000', 92, 2),
(336, 14900000, 'Trả thẳng', '2021-01-11 10:02:01.000000', 46, 3),
(337, 12900000, 'Trả góp', '2021-02-12 01:58:08.000000', 65, 4),
(338, 1206240000, 'Trả thẳng', '2021-03-14 05:57:12.000000', 56, 2),
(339, 4600000000, 'Trả thẳng', '2021-02-22 10:17:31.000000', 1, 1),
(340, 12900000, 'Trả góp', '2021-02-06 04:46:57.000000', 97, 4),
(341, 12900000, 'Trả góp', '2021-05-19 13:41:21.000000', 62, 4),
(342, 1206240000, 'Trả góp', '2021-03-06 08:15:50.000000', 83, 2),
(343, 4600000000, 'Trả thẳng', '2021-05-13 23:51:46.000000', 53, 1),
(344, 1206240000, 'Trả góp', '2021-03-02 03:49:53.000000', 13, 2),
(345, 1206240000, 'Trả góp', '2021-02-25 13:02:51.000000', 84, 2),
(346, 4600000000, 'Trả thẳng', '2021-05-01 22:31:39.000000', 83, 1),
(347, 12900000, 'Trả thẳng', '2021-06-06 16:00:08.000000', 55, 4),
(348, 4600000000, 'Trả góp', '2021-03-23 03:13:19.000000', 30, 1),
(349, 14900000, 'Trả thẳng', '2021-02-07 21:45:16.000000', 69, 3),
(350, 4600000000, 'Trả thẳng', '2021-01-31 23:11:01.000000', 79, 1),
(351, 12900000, 'Trả góp', '2021-04-14 22:01:10.000000', 42, 4),
(352, 12900000, 'Trả thẳng', '2021-04-09 08:06:40.000000', 15, 4),
(353, 12900000, 'Trả thẳng', '2021-05-26 12:31:15.000000', 64, 4),
(354, 14900000, 'Trả góp', '2021-05-01 13:17:26.000000', 56, 3),
(355, 4600000000, 'Trả góp', '2021-03-23 07:36:13.000000', 58, 1),
(356, 14900000, 'Trả góp', '2021-01-27 07:14:44.000000', 94, 3),
(357, 4600000000, 'Trả góp', '2021-05-25 04:22:14.000000', 76, 1),
(358, 4600000000, 'Trả thẳng', '2021-05-17 23:54:31.000000', 84, 1),
(359, 12900000, 'Trả thẳng', '2021-02-09 23:49:45.000000', 83, 4),
(360, 12900000, 'Trả thẳng', '2021-04-19 01:49:08.000000', 33, 4),
(361, 12900000, 'Trả góp', '2021-03-11 01:57:19.000000', 58, 4),
(362, 12900000, 'Trả thẳng', '2021-04-30 15:08:29.000000', 3, 4),
(363, 4600000000, 'Trả thẳng', '2021-01-30 08:18:45.000000', 15, 1),
(364, 1206240000, 'Trả góp', '2021-03-21 21:45:41.000000', 12, 2),
(365, 12900000, 'Trả thẳng', '2021-05-29 01:44:00.000000', 36, 4),
(366, 4600000000, 'Trả góp', '2021-03-14 23:40:39.000000', 45, 1),
(367, 1206240000, 'Trả góp', '2021-04-14 03:34:55.000000', 5, 2),
(368, 14900000, 'Trả góp', '2021-01-02 01:03:45.000000', 87, 3),
(369, 12900000, 'Trả thẳng', '2021-03-06 23:02:31.000000', 8, 4),
(370, 4600000000, 'Trả thẳng', '2021-02-01 08:39:30.000000', 30, 1),
(371, 4600000000, 'Trả góp', '2021-02-04 18:40:10.000000', 96, 1),
(372, 14900000, 'Trả góp', '2021-02-14 08:01:26.000000', 52, 3),
(373, 4600000000, 'Trả góp', '2021-05-22 10:55:43.000000', 42, 1),
(374, 14900000, 'Trả góp', '2021-04-19 22:16:39.000000', 71, 3),
(375, 4600000000, 'Trả góp', '2021-04-27 16:51:39.000000', 16, 1),
(376, 1206240000, 'Trả góp', '2021-04-25 13:16:24.000000', 58, 2),
(377, 4600000000, 'Trả thẳng', '2021-04-07 13:02:33.000000', 100, 1),
(378, 1206240000, 'Trả góp', '2021-05-01 10:33:24.000000', 95, 2),
(379, 14900000, 'Trả góp', '2021-04-07 05:06:29.000000', 42, 3),
(380, 14900000, 'Trả thẳng', '2021-05-15 22:02:05.000000', 77, 3),
(381, 4600000000, 'Trả thẳng', '2021-02-02 04:48:13.000000', 101, 1),
(382, 14900000, 'Trả thẳng', '2021-05-17 07:19:16.000000', 58, 3),
(383, 14900000, 'Trả góp', '2021-02-07 21:04:15.000000', 48, 3),
(384, 12900000, 'Trả thẳng', '2021-04-07 05:11:02.000000', 12, 4),
(385, 12900000, 'Trả góp', '2021-04-24 20:46:35.000000', 39, 4),
(386, 12900000, 'Trả góp', '2021-02-16 11:40:11.000000', 13, 4),
(387, 4600000000, 'Trả góp', '2021-06-02 08:31:54.000000', 75, 1),
(388, 4600000000, 'Trả thẳng', '2021-05-03 11:22:00.000000', 80, 1),
(389, 4600000000, 'Trả góp', '2021-02-19 18:03:52.000000', 51, 1),
(390, 14900000, 'Trả thẳng', '2021-02-17 15:29:55.000000', 85, 3),
(391, 4600000000, 'Trả góp', '2021-05-13 04:37:46.000000', 67, 1),
(392, 14900000, 'Trả thẳng', '2021-04-13 00:15:07.000000', 59, 3),
(393, 4600000000, 'Trả góp', '2021-06-02 14:38:58.000000', 41, 1),
(394, 1206240000, 'Trả thẳng', '2021-04-11 05:00:16.000000', 86, 2),
(395, 12900000, 'Trả góp', '2021-04-09 16:49:18.000000', 97, 4),
(396, 12900000, 'Trả thẳng', '2021-05-02 14:26:19.000000', 69, 4),
(397, 4600000000, 'Trả thẳng', '2021-05-14 19:24:13.000000', 47, 1),
(398, 4600000000, 'Trả góp', '2021-01-01 14:02:43.000000', 87, 1),
(399, 14900000, 'Trả góp', '2021-02-20 17:40:43.000000', 45, 3),
(400, 1206240000, 'Trả góp', '2021-06-04 14:08:39.000000', 11, 2),
(401, 1206240000, 'Trả góp', '2021-04-19 00:56:57.000000', 96, 2),
(402, 4600000000, 'Trả góp', '2021-03-21 10:00:09.000000', 70, 1),
(403, 14900000, 'Trả góp', '2021-03-23 04:15:49.000000', 23, 3),
(404, 1206240000, 'Trả thẳng', '2021-02-18 08:08:31.000000', 57, 2),
(405, 14900000, 'Trả góp', '2021-01-08 07:08:08.000000', 35, 3),
(406, 14900000, 'Trả thẳng', '2021-02-25 23:47:45.000000', 10, 3),
(407, 12900000, 'Trả thẳng', '2021-04-06 23:07:41.000000', 16, 4),
(408, 1206240000, 'Trả góp', '2021-05-06 09:31:50.000000', 3, 2),
(409, 12900000, 'Trả thẳng', '2021-01-20 13:39:41.000000', 73, 4),
(410, 12900000, 'Trả góp', '2021-01-10 11:58:45.000000', 86, 4),
(411, 12900000, 'Trả thẳng', '2021-01-12 08:44:37.000000', 12, 4),
(412, 4600000000, 'Trả thẳng', '2021-02-14 05:12:15.000000', 60, 1),
(413, 4600000000, 'Trả góp', '2021-05-05 00:19:43.000000', 67, 1),
(414, 12900000, 'Trả góp', '2021-01-14 15:33:34.000000', 75, 4),
(415, 4600000000, 'Trả góp', '2021-05-23 09:22:16.000000', 56, 1),
(416, 14900000, 'Trả thẳng', '2021-05-16 21:05:09.000000', 37, 3),
(417, 4600000000, 'Trả góp', '2021-02-28 14:43:37.000000', 14, 1),
(418, 12900000, 'Trả góp', '2021-06-06 21:25:28.000000', 26, 4),
(419, 4600000000, 'Trả thẳng', '2021-06-03 18:26:42.000000', 62, 1),
(420, 12900000, 'Trả thẳng', '2021-04-12 17:08:35.000000', 33, 4),
(421, 4600000000, 'Trả thẳng', '2021-05-14 17:15:43.000000', 80, 1),
(422, 12900000, 'Trả thẳng', '2021-03-07 00:27:47.000000', 40, 4),
(423, 14900000, 'Trả góp', '2021-03-03 04:03:22.000000', 64, 3),
(424, 1206240000, 'Trả thẳng', '2021-05-28 11:48:15.000000', 18, 2),
(425, 14900000, 'Trả góp', '2021-05-09 21:50:50.000000', 17, 3),
(426, 1206240000, 'Trả góp', '2021-06-06 14:54:10.000000', 13, 2),
(427, 12900000, 'Trả góp', '2021-02-24 15:41:33.000000', 43, 4),
(428, 4600000000, 'Trả góp', '2021-02-02 14:02:09.000000', 51, 1),
(429, 12900000, 'Trả thẳng', '2021-04-22 09:47:23.000000', 93, 4),
(430, 12900000, 'Trả thẳng', '2021-01-02 14:32:25.000000', 38, 4),
(431, 12900000, 'Trả thẳng', '2021-03-07 09:55:00.000000', 43, 4),
(432, 12900000, 'Trả góp', '2021-02-06 20:56:32.000000', 22, 4),
(433, 4600000000, 'Trả góp', '2021-02-10 03:02:48.000000', 16, 1),
(434, 1206240000, 'Trả góp', '2021-04-16 17:44:54.000000', 99, 2),
(435, 12900000, 'Trả thẳng', '2021-01-25 09:58:03.000000', 39, 4),
(436, 1206240000, 'Trả góp', '2021-03-28 08:30:21.000000', 98, 2),
(437, 1206240000, 'Trả thẳng', '2021-01-08 14:54:48.000000', 10, 2),
(438, 1206240000, 'Trả thẳng', '2021-01-10 06:36:49.000000', 67, 2),
(439, 12900000, 'Trả thẳng', '2021-02-20 19:05:33.000000', 82, 4),
(440, 14900000, 'Trả góp', '2021-02-09 21:13:59.000000', 46, 3),
(441, 12900000, 'Trả thẳng', '2021-05-27 05:30:44.000000', 54, 4),
(442, 14900000, 'Trả góp', '2021-04-21 01:00:16.000000', 49, 3),
(443, 12900000, 'Trả góp', '2021-03-16 21:40:19.000000', 96, 4),
(444, 4600000000, 'Trả thẳng', '2021-04-13 10:07:16.000000', 96, 1),
(445, 14900000, 'Trả thẳng', '2021-06-02 14:20:23.000000', 63, 3),
(446, 1206240000, 'Trả thẳng', '2021-01-06 16:48:53.000000', 66, 2),
(447, 1206240000, 'Trả góp', '2021-03-12 11:44:45.000000', 46, 2),
(448, 12900000, 'Trả góp', '2021-03-09 00:31:36.000000', 60, 4),
(449, 4600000000, 'Trả thẳng', '2021-03-12 03:55:40.000000', 1, 1),
(450, 4600000000, 'Trả thẳng', '2021-03-08 15:47:44.000000', 17, 1),
(451, 1206240000, 'Trả góp', '2021-06-03 20:39:06.000000', 101, 2),
(452, 12900000, 'Trả góp', '2021-03-22 18:43:39.000000', 89, 4),
(453, 4600000000, 'Trả góp', '2021-03-09 13:15:47.000000', 20, 1),
(454, 1206240000, 'Trả thẳng', '2021-02-22 08:17:09.000000', 59, 2),
(455, 4600000000, 'Trả thẳng', '2021-05-16 15:28:22.000000', 79, 1),
(456, 1206240000, 'Trả thẳng', '2021-05-14 10:48:34.000000', 57, 2),
(457, 4600000000, 'Trả góp', '2021-05-03 21:39:12.000000', 25, 1),
(458, 12900000, 'Trả thẳng', '2021-02-11 08:16:38.000000', 48, 4),
(459, 4600000000, 'Trả thẳng', '2021-01-08 07:42:41.000000', 55, 1),
(460, 14900000, 'Trả góp', '2021-03-21 20:02:31.000000', 76, 3),
(461, 4600000000, 'Trả thẳng', '2021-04-23 16:50:29.000000', 94, 1),
(462, 1206240000, 'Trả góp', '2021-04-30 19:58:23.000000', 40, 2),
(463, 4600000000, 'Trả góp', '2021-01-12 22:00:11.000000', 80, 1),
(464, 12900000, 'Trả góp', '2021-05-23 21:48:54.000000', 32, 4),
(465, 12900000, 'Trả thẳng', '2021-04-06 16:21:33.000000', 26, 4),
(466, 12900000, 'Trả thẳng', '2021-01-26 18:23:15.000000', 18, 4),
(467, 4600000000, 'Trả góp', '2021-02-04 00:28:25.000000', 28, 1),
(468, 4600000000, 'Trả góp', '2021-01-27 13:31:06.000000', 23, 1),
(469, 1206240000, 'Trả góp', '2021-04-08 04:38:05.000000', 35, 2),
(470, 12900000, 'Trả góp', '2021-04-16 05:22:06.000000', 27, 4),
(471, 14900000, 'Trả góp', '2021-05-28 06:53:50.000000', 101, 3),
(472, 4600000000, 'Trả góp', '2021-01-03 09:22:05.000000', 54, 1),
(473, 1206240000, 'Trả góp', '2021-05-10 05:37:44.000000', 72, 2),
(474, 12900000, 'Trả thẳng', '2021-04-13 11:35:02.000000', 86, 4),
(475, 12900000, 'Trả thẳng', '2021-05-07 10:46:25.000000', 29, 4),
(476, 12900000, 'Trả góp', '2021-01-18 20:35:02.000000', 35, 4),
(477, 1206240000, 'Trả góp', '2021-02-20 17:07:36.000000', 75, 2),
(478, 14900000, 'Trả góp', '2021-01-14 11:29:10.000000', 36, 3),
(479, 1206240000, 'Trả thẳng', '2021-01-15 16:35:50.000000', 19, 2),
(480, 4600000000, 'Trả góp', '2021-05-02 02:28:29.000000', 42, 1),
(481, 12900000, 'Trả góp', '2021-04-05 13:34:44.000000', 91, 4),
(482, 1206240000, 'Trả góp', '2021-03-02 01:15:20.000000', 7, 2),
(483, 14900000, 'Trả góp', '2021-02-09 10:57:53.000000', 82, 3),
(484, 4600000000, 'Trả thẳng', '2021-04-25 21:07:30.000000', 35, 1),
(485, 12900000, 'Trả thẳng', '2021-03-07 00:56:39.000000', 27, 4),
(486, 12900000, 'Trả góp', '2021-04-23 17:36:07.000000', 100, 4),
(487, 1206240000, 'Trả góp', '2021-04-29 14:21:55.000000', 55, 2),
(488, 12900000, 'Trả thẳng', '2021-01-18 21:45:48.000000', 8, 4),
(489, 1206240000, 'Trả góp', '2021-05-23 16:52:33.000000', 28, 2),
(490, 1206240000, 'Trả thẳng', '2021-03-12 09:19:52.000000', 72, 2),
(491, 4600000000, 'Trả góp', '2021-02-19 18:26:18.000000', 16, 1),
(492, 14900000, 'Trả góp', '2021-05-27 08:49:49.000000', 37, 3),
(493, 4600000000, 'Trả góp', '2021-01-06 10:03:18.000000', 10, 1),
(494, 14900000, 'Trả thẳng', '2021-05-07 15:33:59.000000', 20, 3),
(495, 14900000, 'Trả thẳng', '2021-04-21 03:03:31.000000', 91, 3),
(496, 14900000, 'Trả góp', '2021-03-01 04:48:58.000000', 35, 3),
(497, 14900000, 'Trả thẳng', '2021-05-31 14:52:52.000000', 73, 3),
(498, 1206240000, 'Trả góp', '2021-03-02 03:18:58.000000', 86, 2),
(499, 1206240000, 'Trả thẳng', '2021-06-06 04:24:40.000000', 81, 2),
(500, 4600000000, 'Trả góp', '2021-02-13 01:13:02.000000', 86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `id` int NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`id`, `address`) VALUES
(1, 'Showroom VinFast Ocean Park Tầng 1, TTTM Vincom Ocean Park, Kiêu Kỵ, Gia Lâm, Hà Nội'),
(2, 'Showroom VinFast Phạm Văn Đồng 166 Phạm Văn Đồng, P. Xuân Đỉnh, Q. Bắc Từ Liêm, TP.Hà Nội'),
(3, 'Showroom VinFast - Chevrolet Đại Việt Số 1 đường Nguyễn Văn Linh, P.Gia Thụy, Q.Long Biên, TP.Hà Nội'),
(4, 'Showroom VinFast Thảo Điền Tầng L1, TTTM Vincom Mega Mall Thảo Điền, 159 Xa lộ Hà Nội, P.Thảo Điền, Q.2, Hồ Chí Minh'),
(5, 'Showroom VinFast Lê Văn Việt Tầng 1, TTTM Vincom Plaza Lê Văn Việt, 50 Lê Văn Việt, P. Hiệp Phú, Q.9, Hồ Chí Minh'),
(6, 'Showroom VinFast Cà Mau Tầng 1, TTTM Vincom Cà Mau, Đường Lê Duẩn, P.1, TP.Cà Mau, Cà Mau');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `level`) VALUES
(102, 'christina63@ryan.biz', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(103, 'qlee@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(104, 'marissamartin@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(105, 'katherine01@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(106, 'amygarrett@mitchell.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(107, 'leonardjohn@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(108, 'edward11@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(109, 'hwatson@joseph.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(110, 'kyoung@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(111, 'juanjohnson@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(112, 'ryanjohnson@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(113, 'gwendolyn92@bruce.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(114, 'ashleycastillo@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(115, 'phillipskristi@andersen.net', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(116, 'nicole09@garcia.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(117, 'adamswilliam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(118, 'roberthill@hensley.biz', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(119, 'barnesjeremy@moore.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(120, 'jmorton@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(121, 'utran@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(122, 'zimmermanvictoria@pratt.info', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(123, 'hollowayrhonda@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(124, 'dperry@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(125, 'joneslisa@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(126, 'logan82@johnson.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(127, 'shebert@morgan.net', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(128, 'heather40@ferguson.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(129, 'regina83@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(130, 'larryfreeman@cantu.biz', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(131, 'brent71@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(132, 'paulmartinez@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(133, 'rburnett@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(134, 'palmermelissa@owens.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(135, 'betty81@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(136, 'thomasandrew@fox.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(137, 'nryan@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(138, 'mpeters@nixon.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(139, 'skinnerdiane@marquez.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(140, 'ogates@potts.biz', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(141, 'jeremyhahn@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(142, 'duane18@sanders.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(143, 'meyerbradley@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(144, 'debbiedunn@chavez.info', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(145, 'james17@armstrong-woods.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(146, 'iblevins@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(147, 'ronaldmccarty@gonzalez.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(148, 'bthompson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(149, 'nicholasortiz@white.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(150, 'josephchase@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(151, 'brenda89@henry.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(152, 'tdavis@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(153, 'janicesmith@nguyen-church.info', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(154, 'rtodd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(155, 'nicole11@frazier.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(156, 'usanchez@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(157, 'hartjustin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(158, 'reeddeborah@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(159, 'alexanderjoel@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(160, 'gpitts@carroll.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(161, 'fwade@palmer.biz', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(162, 'danielowens@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(163, 'xtaylor@rodriguez-bennett.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(164, 'lewisdonna@matthews.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(165, 'jacksonjordan@chaney-clayton.info', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(166, 'edwarddavidson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(167, 'brendafigueroa@stewart-peters.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(168, 'babbott@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(169, 'jeffery05@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(170, 'jennifer96@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(171, 'andrea40@conner-andrade.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(172, 'fischerjoshua@rich.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(173, 'katiecampbell@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(174, 'umyers@lawrence.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(175, 'heathervalenzuela@walter.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(176, 'jennifer38@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(177, 'dgutierrez@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(178, 'kylebrown@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(179, 'huynhlaura@sullivan.org', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(180, 'davidsmith@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(181, 'ramirezjon@wang.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(182, 'megan60@allen-roberts.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(183, 'wilsonchristine@meyer.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(184, 'melinda03@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(185, 'gregoryestrada@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(186, 'kennedymargaret@adkins.org', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(187, 'randy51@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(188, 'thompsonrichard@davidson.net', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(189, 'kimberlyroberson@williams.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(190, 'marshalldaniel@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(191, 'shafferkelly@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(192, 'jnorman@jacobs.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(193, 'jacksonknight@green.biz', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(194, 'david71@stephens-howe.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(195, 'moralesjennifer@buckley.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(196, 'yward@bradley.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(197, 'brittany20@smith.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(198, 'ashley91@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(199, 'trodriguez@church-stewart.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(200, 'johnmedina@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(201, 'fosterjustin@peterson-chavez.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(202, 'sara42@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(203, 'dinhsu081@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager'),
(204, 'suphan081@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'member'),
(205, 'nhi123hin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(206, 'badaohcm123@gmail.com', '202cb962ac59075b964b07152d234b70', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `name`, `email`, `phone`, `address`, `avatar`, `userId`) VALUES
(1, 'Kylie Roberts', 'christina63@ryan.biz', '4129973453114', 'USNV Hoffman\nFPO AA 61145', '', 102),
(2, 'Emily Browning', 'qlee@hotmail.com', '6458695162563', '2972 Cummings Isle\nNorth Christopherland, OR 48544', '', 103),
(3, 'John Bates', 'marissamartin@yahoo.com', '9043558976334', 'USNV Bowen\nFPO AE 88100', '', 104),
(4, 'Leslie Lam', 'katherine01@hotmail.com', '4167981043515', '751 Lawson Groves Apt. 681\nWardview, SC 26438', '', 105),
(5, 'Christine Ward', 'amygarrett@mitchell.com', '8656633617076', '10722 Carlos Squares Suite 165\nEllisbury, NV 93516', '', 106),
(6, 'Deborah Wang', 'leonardjohn@yahoo.com', '0228883034958', '23295 Laura Knoll\nNorth Shannonport, KY 77759', '', 107),
(7, 'Chad Davis', 'edward11@gmail.com', '3789811004805', '8310 Thomas Drive\nRamoschester, UT 01738', '', 108),
(8, 'Christy Cruz', 'hwatson@joseph.com', '9109691741778', '0625 Vasquez Prairie\nJosephmouth, ME 77940', '', 109),
(9, 'Brittney Newman', 'kyoung@yahoo.com', '7822174629530', '2018 Anthony Islands\nReginabury, OH 40194', '', 110),
(10, 'Christy Mccoy', 'juanjohnson@yahoo.com', '0222538859001', '741 Don Trail\nGreenfort, TN 98538', '', 111),
(11, 'Brett Gillespie', 'ryanjohnson@yahoo.com', '1408376674870', '4714 Joel Walk\nPort Marcton, VT 76198', '', 112),
(12, 'Andrew Hammond', 'gwendolyn92@bruce.com', '0344838271767', '27359 Cole Cliffs\nWest Shawn, NJ 06571', '', 113),
(13, 'Pamela Kane', 'ashleycastillo@yahoo.com', '1219596233569', '609 Gonzalez Coves Apt. 541\nMarkport, MI 97541', '', 114),
(14, 'Kyle Butler', 'phillipskristi@andersen.net', '1211122545462', '635 Jennifer Isle\nWest Kathleenton, TX 62131', '', 115),
(15, 'Raven Wilson', 'nicole09@garcia.com', '7465443465735', '368 Fisher Valley Apt. 088\nChristineberg, WA 69055', '', 116),
(16, 'Charles Rose', 'adamswilliam@gmail.com', '5538996770785', '6584 Barrera Plaza\nNorth Lindamouth, NE 32816', '', 117),
(17, 'Christina Hansen', 'roberthill@hensley.biz', '5181696269646', '335 Bryan Trafficway Apt. 208\nRobertmouth, TX 06795', '', 118),
(18, 'Jeremy Young', 'barnesjeremy@moore.com', '6461249417796', '9690 Richard Street\nLaurachester, HI 78366', '', 119),
(19, 'Lydia Mclaughlin', 'jmorton@gmail.com', '1386999106814', '958 Erica Brooks Suite 696\nNorth Kristenview, PA 24296', '', 120),
(20, 'Jennifer Matthews', 'utran@hotmail.com', '0487795138495', '5379 Gamble Vista\nBradymouth, MS 93045', '', 121),
(21, 'Christina Greene', 'zimmermanvictoria@pratt.info', '5875440836806', '10347 Christopher Fields\nNew Jeffhaven, PA 83170', '', 122),
(22, 'Donald Rodriguez', 'hollowayrhonda@hotmail.com', '7540119812124', '66747 Keith Place\nBarryview, MD 85134', '', 123),
(23, 'Andrew Rivera', 'dperry@yahoo.com', '0244779669605', '2135 Amy Circles\nScottton, TX 39436', '', 124),
(24, 'Stephen Hanson', 'joneslisa@hotmail.com', '3876817560314', '0050 Nathan Branch\nAmyburgh, NM 57322', '', 125),
(25, 'Joshua Huynh', 'logan82@johnson.com', '8027366975745', '59701 Cole Green\nMiguelside, CT 50393', '', 126),
(26, 'Larry Day', 'shebert@morgan.net', '3743356996569', 'USNV Terrell\nFPO AE 74926', '', 127),
(27, 'Gabriel Vargas', 'heather40@ferguson.com', '9868576756232', '645 Powell Square\nStewartfurt, OK 60603', '', 128),
(28, 'Amber Evans', 'regina83@hotmail.com', '9253267747363', '8029 Todd Station\nTinafort, AZ 84143', '', 129),
(29, 'Peter Alvarez', 'larryfreeman@cantu.biz', '0302009797951', '268 Smith Mission\nJosephborough, MD 44159', '', 130),
(30, 'Harold Johnston', 'brent71@yahoo.com', '8328764414351', 'USNS Gordon\nFPO AP 74466', '', 131),
(31, 'Timothy Green', 'paulmartinez@hotmail.com', '3934716246467', '7502 Foster Junctions Suite 840\nNew Christinaberg, NC 16536', '', 132),
(32, 'Tyler Harris', 'rburnett@yahoo.com', '0774415116683', '9438 Bryan Divide\nMelindaville, WI 34023', '', 133),
(33, 'Corey Howard', 'palmermelissa@owens.com', '7285129749489', 'PSC 8731, Box 5511\nAPO AP 01342', '', 134),
(34, 'Ross Nichols', 'betty81@gmail.com', '7253517614810', '598 Moses Rapids Suite 301\nWest Jonathantown, WI 47671', '', 135),
(35, 'Nathan Carter', 'thomasandrew@fox.com', '3628447981168', '1816 Vasquez Plains Apt. 005\nBrianville, VA 54501', '', 136),
(36, 'Ricardo Bell', 'nryan@hotmail.com', '1394060926624', 'PSC 3211, Box 1703\nAPO AA 14408', '', 137),
(37, 'Traci Lane', 'mpeters@nixon.com', '5909844077344', '056 Elliott Field Suite 197\nLefort, MN 36318', '', 138),
(38, 'Cynthia Lee', 'skinnerdiane@marquez.com', '8420049770673', '0514 Tina Rest Apt. 034\nLake Seanside, FL 92462', '', 139),
(39, 'Mr. Peter Sanchez', 'ogates@potts.biz', '9648271672174', '250 Morales Common Suite 888\nWest James, WA 27043', '', 140),
(40, 'David Ross', 'jeremyhahn@hotmail.com', '9158622039144', '5393 Erika Mission Apt. 886\nEast Leslie, MS 78099', '', 141),
(41, 'Melissa Roy', 'duane18@sanders.com', '1935312869464', '8051 Jacob Ranch\nEast Michael, OH 79005', '', 142),
(42, 'Larry Mitchell', 'meyerbradley@yahoo.com', '6953732438876', '6399 Anna Parks\nSouth Lindsayshire, VA 20647', '', 143),
(43, 'Samuel Carter', 'debbiedunn@chavez.info', '0350715064298', '278 Henson Mill\nPort Marthachester, VT 95649', '', 144),
(44, 'Justin Alvarado', 'james17@armstrong-woods.com', '6440539028348', '8453 John Haven Apt. 276\nNancyfurt, SD 49632', '', 145),
(45, 'Barbara Peck', 'iblevins@hotmail.com', '2183968116034', '2289 Vicki Forge\nSouth Erinbury, NC 75592', '', 146),
(46, 'Mason Kim', 'ronaldmccarty@gonzalez.com', '4288495990528', '43439 Ritter Trace\nWest Ralph, AZ 52763', '', 147),
(47, 'Stephen Mann', 'bthompson@gmail.com', '8979563172109', 'PSC 8873, Box 8234\nAPO AP 08745', '', 148),
(48, 'Sheila Garcia', 'nicholasortiz@white.com', '5729291744091', '56073 Larsen Curve\nNorth Katelynstad, NY 41572', '', 149),
(49, 'Jose Faulkner', 'josephchase@gmail.com', '9548914044467', '6580 Hopkins Well Apt. 495\nLake Justin, HI 56268', '', 150),
(50, 'Tiffany Jennings', 'brenda89@henry.com', '5805751371813', '40472 Lauren Estates Apt. 113\nWhiteside, ND 93370', '', 151),
(51, 'Steven Williams', 'tdavis@yahoo.com', '2100237078639', '195 Tiffany Tunnel Apt. 931\nEast Robert, NJ 34754', '', 152),
(52, 'Kevin Larson', 'janicesmith@nguyen-church.info', '4106395277903', '3264 Shannon Tunnel Apt. 773\nHawkinstown, TN 33595', '', 153),
(53, 'Isaac Mcdonald', 'rtodd@gmail.com', '9843412313578', '68399 Sparks Lodge Apt. 552\nJenniferfort, NE 02574', '', 154),
(54, 'Jamie Mueller', 'nicole11@frazier.com', '6819024015580', '32524 Nicole Mission Suite 570\nNorth Kenneth, NV 94047', '', 155),
(55, 'Laura Taylor', 'usanchez@yahoo.com', '7127923751808', '271 Kimberly Courts\nJodyberg, TX 13106', '', 156),
(56, 'Kaitlin Valencia', 'hartjustin@gmail.com', '3192747395775', '8539 Brown Stream Suite 652\nNorth Sarah, CT 57389', '', 157),
(57, 'Daniel Campos', 'reeddeborah@gmail.com', '7655883968713', '68660 Jeremy Parkways Suite 966\nSusanmouth, OH 74109', '', 158),
(58, 'Laura Short', 'alexanderjoel@hotmail.com', '6716881019087', '68933 Ronnie Stream\nMeganborough, SC 28498', '', 159),
(59, 'Amanda Armstrong', 'gpitts@carroll.com', '2842610203235', '50118 Ruth Street Apt. 967\nCarrieside, MN 06375', '', 160),
(60, 'Patrick Rodriguez', 'fwade@palmer.biz', '5988148583042', '08639 Spencer Shores Apt. 394\nEast Angelashire, WV 47385', '', 161),
(61, 'Eric Ramirez', 'danielowens@gmail.com', '1093906402119', '292 Anna Parks\nRubiomouth, MO 13163', '', 162),
(62, 'Zachary Dennis', 'xtaylor@rodriguez-bennett.com', '6277124287984', '1536 Lee Trace Suite 949\nWest Laurenport, WA 14233', '', 163),
(63, 'Barbara Myers', 'lewisdonna@matthews.com', '5056797532175', '5361 Jones Springs Suite 475\nTerriville, WV 31942', '', 164),
(64, 'Geoffrey Anderson', 'jacksonjordan@chaney-clayton.info', '1666759453783', 'PSC 1281, Box 5935\nAPO AP 30464', '', 165),
(65, 'Aaron Rodriguez', 'edwarddavidson@gmail.com', '5788932712097', '355 Alexandra Land Suite 219\nLake Melissa, OR 53507', '', 166),
(66, 'Amber Turner', 'brendafigueroa@stewart-peters.com', '4927893056279', '30125 Williams Unions Apt. 451\nLake Vanessashire, OK 75727', '', 167),
(67, 'Tina Estes', 'babbott@yahoo.com', '6353868367038', '8424 Lisa Village Apt. 615\nMartinezfurt, IL 95078', '', 168),
(68, 'Ruth Patrick', 'jeffery05@gmail.com', '2020559795472', 'USNV Ball\nFPO AE 99782', '', 169),
(69, 'Jesus Donovan', 'jennifer96@hotmail.com', '9971971760287', '83126 Lewis Way\nWarrenchester, DE 09777', '', 170),
(70, 'Kevin Gilmore', 'andrea40@conner-andrade.com', '1098543349469', '39076 Reed Springs Suite 726\nHeatherport, AK 31873', '', 171),
(71, 'Amanda Page', 'fischerjoshua@rich.com', '3185634831831', '7318 Lara Keys Suite 275\nEast Christianport, MI 38278', '', 172),
(72, 'Michael Neal', 'katiecampbell@gmail.com', '7732561437527', '833 Ferguson Pine Suite 844\nNew Jonathan, WY 09632', '', 173),
(73, 'Amy Jones', 'umyers@lawrence.com', '2056495025131', '91550 Cisneros Drives Suite 373\nSheilahaven, MD 74527', '', 174),
(74, 'Andrew Hunter', 'heathervalenzuela@walter.com', '3794637442192', '711 Kristina Inlet Suite 525\nHubbardmouth, AZ 92441', '', 175),
(75, 'Kelly Johnson', 'jennifer38@yahoo.com', '4115535538886', '6064 Sara Lights Apt. 562\nLake Austintown, DE 92320', '', 176),
(76, 'Danielle Santos', 'dgutierrez@gmail.com', '3201286464929', '352 Andrew Plains\nWest Danielfort, SD 04678', '', 177),
(77, 'John Moody', 'kylebrown@gmail.com', '7398149631007', '672 Sydney Radial Suite 879\nWest Alyssafurt, OR 98280', '', 178),
(78, 'Sherry Schwartz', 'huynhlaura@sullivan.org', '2938716444978', 'PSC 9924, Box 2249\nAPO AP 61092', '', 179),
(79, 'Crystal Bell', 'davidsmith@yahoo.com', '8257924964831', '83957 Rebecca Points Suite 520\nNicholehaven, WY 45309', '', 180),
(80, 'Travis Figueroa', 'ramirezjon@wang.com', '8241579765947', '09850 Howell Harbors Apt. 079\nJessicaport, UT 63475', '', 181),
(81, 'Mrs. Misty Murphy', 'megan60@allen-roberts.com', '0725481590572', '49312 Dan Prairie Apt. 959\nNew Lauraview, VT 81271', '', 182),
(82, 'Jack Murphy', 'wilsonchristine@meyer.com', '4073286300310', 'Unit 0805 Box 6425\nDPO AE 74384', '', 183),
(83, 'Chase Floyd', 'melinda03@gmail.com', '5887991908242', '97553 Young Stream Suite 660\nThomasfort, HI 73670', '', 184),
(84, 'Yvonne Carroll', 'gregoryestrada@gmail.com', '6989417727863', '887 Sandoval Brooks Suite 486\nHardyland, NY 05809', '', 185),
(85, 'Nicole Ponce', 'kennedymargaret@adkins.org', '5210742999414', '0888 Steve Plain\nNew Loriland, VT 87271', '', 186),
(86, 'Dale Murray', 'randy51@hotmail.com', '0427453303127', '911 Potts Squares\nDannyburgh, PA 63473', '', 187),
(87, 'Kenneth Berry', 'thompsonrichard@davidson.net', '7631256959907', '30465 Loretta Junction Suite 115\nMcdonaldburgh, MD 10746', '', 188),
(88, 'Samantha Webster', 'kimberlyroberson@williams.com', '8583031353716', '1444 Daniel Village Apt. 530\nSabrinatown, KS 10755', '', 189),
(89, 'Felicia Bailey', 'marshalldaniel@gmail.com', '0704706928176', '6376 Hall Corner\nLoriberg, AK 34117', '', 190),
(90, 'Lucas Ewing', 'shafferkelly@yahoo.com', '3728299643167', '949 Cody Centers\nMorrisport, ID 41330', '', 191),
(91, 'Daniel Frank', 'jnorman@jacobs.com', '9099864256146', '17854 Brian Parkways\nNew Ashley, MT 06502', '', 192),
(92, 'Donna Davis', 'jacksonknight@green.biz', '4119742637556', 'USS Dean\nFPO AA 82340', '', 193),
(93, 'Matthew Perkins', 'david71@stephens-howe.com', '4781705210420', '115 Espinoza Gateway Apt. 216\nPort Melissamouth, ME 38130', '', 194),
(94, 'Jose Clark', 'moralesjennifer@buckley.com', '7570516487757', '9100 Nancy Common Suite 526\nSandramouth, ME 78774', '', 195),
(95, 'Nicholas Reynolds', 'yward@bradley.com', '7435616555767', '38040 Deborah Summit Suite 168\nLake Michaelport, NH 28708', '', 196),
(96, 'Rachel Rodriguez', 'brittany20@smith.com', '1967350574228', '27680 Chelsey Ford\nNew Georgeberg, WA 52491', '', 197),
(97, 'Charles Ortiz', 'ashley91@hotmail.com', '1384874295249', '4885 Pollard Station Apt. 967\nWest Amanda, GA 50595', '', 198),
(98, 'Mark Graves', 'trodriguez@church-stewart.com', '8243718884495', '490 Brian Corners\nRodriguezfurt, KS 52744', '', 199),
(99, 'Natalie Jackson', 'johnmedina@hotmail.com', '7441666624107', 'USCGC Cruz\nFPO AP 41496', '', 200),
(100, 'Ryan Rodriguez', 'fosterjustin@peterson-chavez.com', '6736189660368', '5876 Harmon Drive Apt. 991\nChristophershire, KS 73761', '', 201),
(101, 'Gabrielle Mora', 'sara42@yahoo.com', '4413473511226', '810 Garcia Ramp\nTerryland, OH 18185', '', 202),
(102, 'Phan Đình Sự', 'dinhsu081@gmail.com', '', '', '', 203),
(103, 'Đình Sự', 'suphan081@gmail.com', '123456', 'TP.HCM', '', 204),
(104, 'Nguyễn Văn A', 'nhi123hin@gmail.com', '123456', 'HCM', '', 205),
(105, 'suphan081', 'badaohcm123@gmail.com', '', '', '', 206);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `getnews`
--
ALTER TABLE `getnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenanceschedule`
--
ALTER TABLE `maintenanceschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenanceSchedule_infoId_c6b1ad17_fk_userInfo_id` (`infoId`),
  ADD KEY `maintenanceSchedule_productId_5720bae4_fk_product_id` (`productId`),
  ADD KEY `maintenanceSchedule_showroomId_02a871ee_fk_showroom_id` (`showroomId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_infoId_3f358704_fk_userInfo_id` (`infoId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productdescription`
--
ALTER TABLE `productdescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productDescription_productId_903825f0_fk_product_id` (`productId`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotiontarget`
--
ALTER TABLE `promotiontarget`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotionTarget_productId_promotionId_9d87f2c9_uniq` (`productId`,`promotionId`),
  ADD KEY `promotionTarget_promotionId_8e1f1b94_fk_promotion_id` (`promotionId`);

--
-- Indexes for table `salehistory`
--
ALTER TABLE `salehistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleHistory_infoId_415b70e0_fk_userInfo_id` (`infoId`),
  ADD KEY `saleHistory_productId_f9dd3b95_fk_product_id` (`productId`);

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `getnews`
--
ALTER TABLE `getnews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `maintenanceschedule`
--
ALTER TABLE `maintenanceschedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productdescription`
--
ALTER TABLE `productdescription`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `promotiontarget`
--
ALTER TABLE `promotiontarget`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `salehistory`
--
ALTER TABLE `salehistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `showroom`
--
ALTER TABLE `showroom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenanceschedule`
--
ALTER TABLE `maintenanceschedule`
  ADD CONSTRAINT `maintenanceSchedule_infoId_c6b1ad17_fk_userInfo_id` FOREIGN KEY (`infoId`) REFERENCES `userinfo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `maintenanceSchedule_productId_5720bae4_fk_product_id` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `maintenanceSchedule_showroomId_02a871ee_fk_showroom_id` FOREIGN KEY (`showroomId`) REFERENCES `showroom` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_infoId_3f358704_fk_userInfo_id` FOREIGN KEY (`infoId`) REFERENCES `userinfo` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productdescription`
--
ALTER TABLE `productdescription`
  ADD CONSTRAINT `productDescription_productId_903825f0_fk_product_id` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotiontarget`
--
ALTER TABLE `promotiontarget`
  ADD CONSTRAINT `promotionTarget_productId_e6ac4e06_fk_product_id` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotionTarget_promotionId_8e1f1b94_fk_promotion_id` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salehistory`
--
ALTER TABLE `salehistory`
  ADD CONSTRAINT `saleHistory_infoId_415b70e0_fk_userInfo_id` FOREIGN KEY (`infoId`) REFERENCES `userinfo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saleHistory_productId_f9dd3b95_fk_product_id` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD CONSTRAINT `userInfo_userId_d6ee32cb_fk_user_id` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
