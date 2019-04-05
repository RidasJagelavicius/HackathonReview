-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 03, 2019 at 07:07 PM
-- Server version: 10.1.23-MariaDB-9+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HackathonReview`
--
CREATE DATABASE IF NOT EXISTS `HackathonReview` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `HackathonReview`;

-- --------------------------------------------------------

--
-- Table structure for table `Hackathons`
--

CREATE TABLE `Hackathons` (
  `HackID` int(11) NOT NULL,
  `Name` varchar(240) NOT NULL,
  `State` varchar(20) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `siteURL` varchar(400) NOT NULL,
  `logoURL` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Hackathons`
--

INSERT INTO `Hackathons` (`HackID`, `Name`, `State`, `City`, `Start`, `End`, `siteURL`, `logoURL`) VALUES
(1, 'Hack the 6ix 2018', 'ON', 'Toronto', '2018-08-24', '2018-08-26', 'http://hackthe6ix.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/909/thumb/Hackthe6ixMLHLogo.jpg?1527782042'),
(2, 'HackMTY', 'MX', 'Monterrey', '2018-08-25', '2018-08-26', 'http://hackmty.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/910/thumb/HackMTYLogo-MLH.png?1527782154'),
(3, 'ByteHacks', 'NY', 'New York', '2018-09-01', '2018-09-02', 'http://bytehacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/911/thumb/ByteHacks_Logo.png?1527782234'),
(4, 'MedHacks', 'MD', 'Baltimore', '2018-09-07', '2018-09-09', 'http://medhacks.org/2018', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/923/thumb/MedHacks_Logo-04.jpg?1530279198'),
(5, 'MXHacks', 'MX', 'Mexico City', '2018-09-07', '2018-09-09', 'https://mxhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/932/thumb/logo.jpeg?1532963080'),
(6, 'PennApps', 'PA', 'Philadelphia', '2018-09-07', '2018-09-09', 'http://2018f.pennapps.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/929/thumb/logo-final-light.png?1531949145'),
(7, 'HackTheU', 'UT', 'Salt Lake City', '2018-09-08', '2018-09-09', 'http://hacktheu.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/924/thumb/Logo_with_Black_Background_-_No_Space-01.png?1530802627'),
(8, 'HackRice 8', 'TX', 'Houston', '2018-09-14', '2018-09-16', 'http://hack.rice.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/926/thumb/logo_square_purple_2x.png?1531248522'),
(9, 'Hack the North', 'ON', 'Waterloo', '2018-09-14', '2018-09-16', 'https://hackthenorth.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/930/thumb/HtNlogo.png?1532400383'),
(10, 'SBU Hacks', 'NY', 'Stony Brook', '2018-09-14', '2018-09-15', 'http://sbuhacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/925/thumb/logo.png?1531247128'),
(11, 'ShellHacks', 'FL', 'Miami', '2018-09-14', '2018-09-16', 'https://shellhacks.net/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/912/thumb/Shelllogo.png?1527782408'),
(12, 'Hophacks', 'MD', 'Baltimore', '2018-09-15', '2018-09-17', 'http://hophacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/913/thumb/hophacksmlh_logo.png?1527782501'),
(13, 'Lumohacks', 'BC', 'Burnaby', '2018-09-15', '2018-09-16', 'http://lumohacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/944/thumb/Lumohacks_square_logo.png?1534370502'),
(14, 'BASEHacks 3.0', 'CA', 'Fremont', '2018-09-22', '2018-09-23', 'http://www.basehacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/937/thumb/basehacks2logo.png?1533835710'),
(15, 'GrizzHacks', 'MI', 'Rochester', '2018-09-22', '2018-09-23', 'http://grizzhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/927/thumb/grizzlogo-plain.png?1531324425'),
(16, 'Ram Hacks', 'VA', 'Richmond', '2018-09-22', '2018-09-23', 'http://ramhacks.vcu.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/914/thumb/ramhacks_logo.jpg?1527782576'),
(17, 'Volhacks', 'TN', 'Knoxville', '2018-09-28', '2018-09-30', 'https://volhacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/915/thumb/volhackssocial_icon1small100x100.png?1527782734'),
(18, 'HackNY', 'NY', 'New York', '2018-09-29', '2018-09-30', 'http://hackny.org/hackathon/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/943/thumb/hackNY_Square_Red_Logo100px.png?1534175324'),
(19, 'Mining hack', 'MX', 'TorreÃ³n', '2018-09-29', '2018-09-30', 'http://mininghack.tech/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/990/thumb/ava_sq.jpg?1535648341'),
(20, 'HackGSU', 'GA', 'Atlanta', '2018-10-05', '2018-10-07', 'http://hackgsu.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/922/thumb/Screen_Shot_2018-06-04_at_2.32.39_PM.jpg?1528463298'),
(21, 'HackNC', 'NC', 'Chapel Hill', '2018-10-05', '2018-10-07', 'http://hacknc.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/999/thumb/logo_%281%29.png?1536598747'),
(22, 'Hack This. Help Kids.', 'PA', 'Pittsburgh', '2018-10-05', '2018-10-06', 'http://hackthishelpkids.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/933/thumb/UPMC_CHP.jpg?1536320403'),
(23, 'HackPSU', 'PA', 'State College', '2018-10-06', '2018-10-07', 'https://hackpsu.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/942/thumb/MLH_logo1.jpg?1534174605'),
(24, 'HackRU', 'NJ', 'New Brunswick', '2018-10-06', '2018-10-07', 'https://www.hackru.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/939/thumb/hackruF18logo.png?1533847456'),
(25, 'HackUIowa', 'IA', 'Iowa City', '2018-10-06', '2018-10-07', 'http://bigdata.uiowa.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/934/thumb/UIOWA_Hackathon_logo_2018.png?1533247483'),
(26, 'HackUTA', 'TX', 'Arlington', '2018-10-06', '2018-10-07', 'http://hackuta.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/000/thumb/dense_horse_copy_2__1_.png?1536700056'),
(27, 'HAkron 3000', 'OH', 'Akron', '2018-10-06', '2018-10-07', 'http://www.hakron.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/992/thumb/event_logo_square.png?1535735877'),
(28, 'HackCooper', 'NY', 'New York', '2018-10-12', '2018-10-13', 'http://hackcooper.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/988/thumb/hackcooper_square.jpg?1535643552'),
(29, 'HackUMass', 'MA', 'Amherst', '2018-10-12', '2018-10-14', 'https://hackumass.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/986/thumb/Square_WhiteBG.jpg?1535482772'),
(30, 'MHacks', 'MI', 'Ann Arbor', '2018-10-12', '2018-10-14', 'https://mhacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/991/thumb/mhackslogo.png?1535734230'),
(31, 'PatriotHacks', 'VA', 'Fairfax', '2018-10-12', '2018-10-14', 'http://patriothacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/940/thumb/final-patriothacks-100.png?1533849966'),
(32, 'SD Hacks', 'CA', 'La Jolla', '2018-10-12', '2018-10-14', 'http://www.sdhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/917/thumb/SD_Hacks_logo.png?1527782931'),
(33, 'TigerHacks', 'MO', 'Columbia', '2018-10-12', '2018-10-14', 'http://tigerhacks.missouri.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/005/thumb/Full.png?1537199304'),
(34, 'EastHacks', 'NJ', 'Cherry Hill', '2018-10-13', '2018-10-14', 'https://www.easthacks.us/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/003/thumb/unnamed_%281%29.jpg?1536885592'),
(35, 'HackDuke', 'NC', 'Durham', '2018-10-13', '2018-10-14', 'http://hackduke.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/013/thumb/40638542_2187854944784027_7496982994192695296_n__1_.jpg?1537543106'),
(36, 'BigRed//Hacks', 'NY', 'Ithaca', '2018-10-19', '2018-10-21', 'http://bigredhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/919/thumb/BRH_logo_2017__1_.png?1527783091'),
(37, 'BoilerMake', 'IN', 'West Lafayette', '2018-10-19', '2018-10-21', 'http://boilermake.org', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/947/thumb/bmlogo.png?1534951259'),
(38, 'HackGT', 'GA', 'Atlanta', '2018-10-19', '2018-10-21', 'https://2018.hack.gt/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/918/thumb/100x100_HackGTEventLogo.png?1527783018'),
(39, 'HackHarvard College', 'MA', 'Cambridge', '2018-10-19', '2018-10-21', 'http://hackharvard.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/984/thumb/mlh_hh_logo.png?1535052967'),
(40, 'HackISU', 'IA', 'Ames', '2018-10-19', '2018-10-21', 'http://hackisu.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/928/thumb/Squirrel-X.png?1531834338'),
(41, 'Hack KState', 'KS', 'Manhattan', '2018-10-19', '2018-10-21', 'https://hackkstate.tech/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/941/thumb/logo_%281%29.png?1533925635'),
(42, 'Kent Hack Enough', 'OH', 'Kent', '2018-10-19', '2018-10-21', 'http://khe.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/983/thumb/KHElogo.png?1535037743'),
(43, 'DemonHacks', 'IL', 'Chicago', '2018-10-20', '2018-10-21', 'http://demonhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/945/thumb/Demonhacks_2018_Final_.png?1534801917'),
(44, 'DubHacks', 'WA', 'Seattle', '2018-10-20', '2018-10-21', 'http://dubhacks.co/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/948/thumb/mlh-dubhacks-profile.png?1534952894'),
(45, 'HackTX', 'TX', 'Austin', '2018-10-20', '2018-10-21', 'http://hacktx.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/949/thumb/Favicon.png?1534953031'),
(46, 'HackUMBC', 'MD', 'Baltimore', '2018-10-20', '2018-10-21', 'http://hackumbc.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/946/thumb/HackUMBC.Facebook.Logo.jpg?1534876208'),
(47, 'HyphenHacks', 'CA', 'San Francisco', '2018-10-20', '2018-10-21', 'https://hyphen-hacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/931/thumb/hyphhack_%281%29.png?1532451294'),
(48, 'Power the Future', 'VA', 'Richmond', '2018-10-20', '2018-10-21', 'http://powerthefuture.energy/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/920/thumb/ptf_2018_100by100.png?1527783175'),
(49, 'Cal Hacks 5.0', 'CA', 'Berkeley', '2018-11-02', '2018-11-04', 'https://2018.calhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/996/thumb/Icon__2_.png?1536344821'),
(50, 'Electric City Hacks', 'ON', 'Peterborough', '2018-11-02', '2018-11-04', 'http://echacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/011/thumb/ECHACKS_Square.png?1537387206'),
(51, 'HackHolyoke', 'MA', 'South Hadley', '2018-11-02', '2018-11-03', 'http://hackholyoke.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/025/thumb/hackHack.png?1539092427'),
(52, 'VandyHacks', 'TN', 'Nashville', '2018-11-02', '2018-11-04', 'https://vandyhacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/993/thumb/vhlogocropped.png?1536077399'),
(53, 'WHACK (Wellesley Hacks)', 'MA', 'Wellesley', '2018-11-02', '2018-11-04', 'http://wellesleyhacks.org', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/006/thumb/avatar_on_white.jpg?1537200352'),
(54, 'CodeRED Discovery', 'TX', 'Houston', '2018-11-03', '2018-11-04', 'https://uhcode.red/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/015/thumb/AVI.png?1537796485'),
(55, 'HackBI II', 'VA', 'Alexandria', '2018-11-03', '2018-11-04', 'http://hackbi.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/995/thumb/Icon100x100_%281%29.png?1536263339'),
(56, 'HackNJIT', 'NJ', 'Newark', '2018-11-03', '2018-11-04', 'http://www.hacknjit.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/023/thumb/hack_njit_vector2.jpg?1538616037'),
(57, 'hackPHS', 'NJ', 'Princeton', '2018-11-03', '2018-11-04', 'http://hackphs.tech/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/018/thumb/phsfront.png?1537799409'),
(58, 'HealthHacks', 'VA', 'Richmond', '2018-11-03', '2018-11-04', 'https://healthhacks.vcu.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/004/thumb/HH18_Sticker-03.png?1537286374'),
(59, 'UB Hacking', 'NY', 'Amherst', '2018-11-03', '2018-11-04', 'http://ubhacking.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/009/thumb/0AFFC3EA-7F54-4A66-8EC9-47B2E66037C9.png?1537202730'),
(60, 'HackPrinceton', 'NJ', 'Princeton', '2018-11-09', '2018-11-11', 'https://hackprinceton.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/998/thumb/pixel_logo__1_.png?1536354525'),
(61, 'sunhacks', 'AZ', 'Phoenix / Tempe', '2018-11-09', '2018-11-11', 'http://sunhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/016/thumb/sunhacks_icon_web.jpg?1537797290'),
(62, 'BostonHacks', 'MA', 'Boston', '2018-11-10', '2018-11-11', 'http://bostonhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/002/thumb/BostonHacks_EventLogo.jpg?1536850439'),
(63, 'Codestellation', 'MA', 'Waltham', '2018-11-10', '2018-11-11', 'http://www.codestellation.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/010/thumb/Codestellation_logo-01.png?1537220242'),
(64, 'HackMCST', 'NJ', 'Denville', '2018-11-10', '2018-11-11', 'http://hackmcst.tech/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/019/thumb/MLHLogo_%281%29.png?1537809407'),
(65, 'HackWITUs', 'MA', 'Boston', '2018-11-10', '2018-11-11', 'https://hackwit.us/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/012/thumb/leopardFaceLogo.jpg?1537387378'),
(66, 'MadHacks', 'WI', 'Madison', '2018-11-10', '2018-11-11', 'https://www.madhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/020/thumb/madhacks-logo.png?1539966546'),
(67, 'Technica', 'MD', 'College Park', '2018-11-10', '2018-11-11', 'https://gotechnica.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/985/thumb/Slice_1.png?1535471649'),
(68, 'HackUSU', 'UT', 'Logan', '2018-11-16', '2018-11-17', 'http://hackusu.org', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/014/thumb/bluhackusulogo.png?1537706605'),
(69, 'Lehman Hack50', 'NY', 'Bronx', '2018-11-16', '2018-11-17', 'https://nslehman.github.io/nshackathon/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/017/thumb/Prototype1alt3.png?1537797856'),
(70, 'BlocHacks', 'QC', 'Montreal', '2018-11-17', '2018-11-18', 'http://www.blochacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/997/thumb/DevBlocSquare.png?1536346255'),
(71, 'SacHacks', 'CA', 'Sacramento', '2018-11-17', '2018-11-18', 'http://sachacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/022/thumb/slack_icon-01.png?1538615596'),
(72, 'Hack Western V', 'ON', 'London', '2018-11-23', '2018-11-25', 'https://hackwestern.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/000/921/thumb/hackwesternmlh_event_logo.png?1527783506'),
(73, 'YHack', 'CT', 'New Haven', '2018-11-30', '2018-12-02', 'https://www.yhack.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/024/thumb/FullSizeRender.jpg?1538674256'),
(74, 'Local Hack Day', 'Worldwide', 'Everywhere', '2018-12-01', '2018-12-01', 'https://localhackday.mlh.io', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/040/thumb/mlh-lhd-icon.jpg?1541200147'),
(75, 'Urban Hacks', 'ON', 'Hamilton', '2018-12-08', '2018-12-09', 'https://hackthehammer.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/021/thumb/38503175_502348346853792_8807339570166235136_n.png?1538060125'),
(76, 'SB Hacks', 'CA', 'Santa Barbara', '2019-01-11', '2019-01-13', 'https://sbhacks.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/052/thumb/favicon.png?1543253818'),
(77, 'StarterHacks 2019', 'ON', 'Waterloo', '2019-01-12', '2019-01-13', 'https://starterhacks.ca/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/067/thumb/square.png?1544464831'),
(78, 'CruzHacks 2019', 'CA', 'Santa Cruz', '2019-01-18', '2019-01-20', 'https://www.cruzhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/044/thumb/logo-dark.png?1541802642'),
(79, 'Hack@WPI', 'MA', 'Worcester', '2019-01-18', '2019-01-20', 'http://hack.wpi.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/062/thumb/MLH2019.png?1543938793'),
(80, 'SpartaHack V', 'MI', 'East Lansing', '2019-01-18', '2019-01-20', 'https://spartahack.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/055/thumb/sparta.png?1543338404'),
(81, 'SwampHacks', 'FL', 'Gainesville', '2019-01-18', '2019-01-20', 'https://2019.swamphacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/048/thumb/mainLogoV2.jpg?1542314873'),
(82, 'UofTHacks', 'ON', 'Toronto', '2019-01-18', '2019-01-20', 'https://uofthacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/060/thumb/MLHPic.png?1543878284'),
(83, 'Hackatown', 'QC', 'Montreal', '2019-01-19', '2019-01-20', 'https://hackatown.io', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/053/thumb/hackatown_logo_final_2_white.png?1543254517'),
(84, 'HackED', 'AB', 'Edmonton', '2019-01-19', '2019-01-20', 'https://hacked.compeclub.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/064/thumb/HackEDSquare.png?1544026166'),
(85, 'HackFRee', 'NJ', 'Manalapan', '2019-01-19', '2019-01-20', 'http://hackfree.info', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/058/thumb/FRHSD_100_x_100.png?1543877445'),
(86, 'Rose Hack', 'CA', 'Riverside', '2019-01-19', '2019-01-20', 'https://rosehack.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/046/thumb/fbicon.png?1542313851'),
(87, 'womxn/hacks', 'CA', 'Santa Barbara', '2019-01-25', '2019-01-27', 'https://www.womxnhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/057/thumb/squareastro.jpg?1543876599'),
(88, 'ConUHacks IV', 'QC', 'Montreal', '2019-01-26', '2019-01-27', 'https://conuhacks.io/#/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/027/thumb/conuhacks-logo-mlh.png?1539193870'),
(89, 'CUhackit', 'SC', 'Clemson', '2019-01-26', '2019-01-27', 'http://cuhack.it/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/054/thumb/CUhackit_RGB_Logo_Color___Wordmark_Square_EXTRA_SMALL_APPLICATIONS.png?1543255632'),
(90, 'DeltaHacks', 'ON', 'Hamilton', '2019-01-26', '2019-01-27', 'https://www.deltahacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/051/thumb/DHLogoMLH.jpg?1542657328'),
(91, 'EarthHacks', 'VA', 'Richmond', '2019-01-26', '2019-01-27', 'https://earthhacks.vcu.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/059/thumb/Logo_%283%29.png?1543878111'),
(92, 'nwHacks', 'BC', 'Vancouver', '2019-01-26', '2019-01-27', 'http://nwhacks.io', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/037/thumb/nwHacks_logo_white_on_green.png?1541014248'),
(93, 'TAMUhack', 'TX', 'College Station', '2019-01-26', '2019-01-27', 'https://tamuhack.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/050/thumb/Artboard_1_4x.png?1542400792'),
(94, 'ElleHacks', 'ON', 'Toronto', '2019-02-01', '2019-02-03', 'https://ellehacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/100/thumb/ElleHacks_DP.jpg?1548184653'),
(95, 'Hoya Hacks', 'DC', 'Washington', '2019-02-01', '2019-02-03', 'http://www.hoyahacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/073/thumb/hoya_hacks_blue_logo_%282%29.jpg?1545059184'),
(96, 'MangoHacks', 'FL', 'Miami', '2019-02-01', '2019-02-03', 'https://mangohacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/081/thumb/Screen_Shot_2018-12-27_at_1.16.21_PM.png?1545934765'),
(97, 'QHacks', 'ON', 'Kingston', '2019-02-01', '2019-02-03', 'https://qhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/049/thumb/Logo_Tricolor_DP_Test2_%281%29.png?1542400288'),
(98, 'SLO Hacks', 'CA', 'San Luis Obispo', '2019-02-01', '2019-02-03', 'https://www.slohacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/047/thumb/slohacks_mlh_logo.png?1542314642'),
(99, 'AuburnHacks', 'AL', 'Auburn', '2019-02-02', '2019-02-03', 'https://auburnhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/035/thumb/AuburnHacks-1.png?1540481150'),
(100, 'MakeHarvard', 'MA', 'Cambridge', '2019-02-02', '2019-02-03', 'http://makeharvard.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/033/thumb/MakeHarvard_Logo_Light_Green_white_bgn.jpg?1540332861'),
(101, 'McHacks 6', 'QC', 'Montreal', '2019-02-02', '2019-02-03', 'https://mchacks.ca', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/042/thumb/logo_%282%29.png?1541431651'),
(102, 'MinneHack', 'MN', 'Minneapolis', '2019-02-02', '2019-02-03', 'https://minnehack.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/072/thumb/minnie2.png?1545058723'),
(103, 'PennApps', 'PA', 'Philadelphia', '2019-02-02', '2019-02-03', 'http://2019w.pennapps.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/093/thumb/48404759_1845373685589587_6434627815689158656_n.png?1546902026'),
(104, 'CalvinHacks', 'MI', 'Grand Rapids', '2019-02-08', '2019-02-09', 'https://calvinhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/071/thumb/calvinhacks_stacked_logo.png?1545058344'),
(105, 'Hack KU', 'KS', 'Lawrence', '2019-02-08', '2019-02-10', 'https://hackku.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/045/thumb/logo400.png?1542038513'),
(106, 'Sheridan Hackville', 'ON', 'Oakville', '2019-02-08', '2019-02-10', 'https://www.hackville.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/097/thumb/Hack_Event_Logo.png?1547745033'),
(107, 'UGAHacks 4', 'GA', 'Athens', '2019-02-08', '2019-02-10', 'https://ugahacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/077/thumb/android-chrome-512x512.png?1545254812'),
(108, 'HackDavis', 'CA', 'Davis', '2019-02-09', '2019-02-10', 'https://www.hackdavis.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/065/thumb/HackDavis_Event_Logo.jpg?1544217170'),
(109, 'HackHer413', 'MA', 'Amherst', '2019-02-09', '2019-02-10', 'http://www.hackher413.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/043/thumb/bee_logo.png?1541437077'),
(110, 'Hacklahoma', 'OK', 'Norman', '2019-02-09', '2019-02-10', 'https://hacklahoma.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/039/thumb/hacklahoma_official_bg.png?1541088393'),
(111, 'HackRiddle', 'FL', 'Daytona Beach', '2019-02-09', '2019-02-10', 'http://hackriddle.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/098/thumb/brand_logo_1.png?1547745240'),
(112, 'uOttaHack', 'ON', 'Ottawa', '2019-02-09', '2019-02-10', 'https://2019.uottahack.ca/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/063/thumb/Classic-Heart_1__%281%29.png?1543955508'),
(113, 'XdHacks', 'BC', 'Vancouver', '2019-02-09', '2019-02-10', 'https://xdhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/088/thumb/xdhacklogo.png?1546796766'),
(114, 'Hack@CEWIT 2019', 'NY', 'Stony Brook', '2019-02-15', '2019-02-17', 'https://www.cewit.org/programs/events/hack.php', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/090/thumb/cewit-logo-circle_2__19.png?1546894209'),
(115, 'HackCWRU 6', 'OH', 'Cleveland', '2019-02-15', '2019-02-17', 'http://hack.cwru.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/096/thumb/Screen_Shot_2019-01-09_at_4.03.42_AM.png?1547667474'),
(116, 'HackNYU', 'NY', 'New York', '2019-02-15', '2019-02-17', 'https://hacknyu.org', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/087/thumb/Logo-Square-Clear-Black.png?1546702321'),
(117, 'HopHacks', 'MD', 'Baltimore', '2019-02-15', '2019-02-17', 'https://hophacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/094/thumb/hh.png?1547155818'),
(118, 'TreeHacks', 'CA', 'Stanford', '2019-02-15', '2019-02-17', 'https://www.treehacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/036/thumb/TreeHacks_Profile_Picture_2_%281%29.png?1540826544'),
(119, 'VT Hacks VI', 'VA', 'Blacksburg', '2019-02-15', '2019-02-17', 'https://vthacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/092/thumb/Logo.png?1546898978'),
(120, 'BrickHack', 'NY', 'Rochester', '2019-02-16', '2019-02-17', 'http://brickhack.io', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/068/thumb/BH5_Logo.png?1544557284'),
(121, 'cuHacking', 'CA', 'Ottawa', '2019-02-16', '2019-02-17', 'https://cuhacking.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/074/thumb/cuhacking-logo-square.png?1545082312'),
(122, 'HackHERS', 'NJ', 'New Brunswick', '2019-02-16', '2019-02-17', 'https://ruhackhers.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/082/thumb/SquareLogo.png?1545940201'),
(123, 'MakeUofT', 'ON', 'Toronto', '2019-02-16', '2019-02-17', 'https://ieee.utoronto.ca/makeuoft/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/083/thumb/MakeUofTLogo.png?1546015357'),
(124, 'Pearl Hacks', 'NC', 'Chapel Hill', '2019-02-16', '2019-02-17', 'http://pearlhacks.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/085/thumb/pearelhackslogo_-01.png?1546530155'),
(125, 'Uncommon Hacks', 'IL', 'Chicago', '2019-02-16', '2019-02-17', 'https://uncommonhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/084/thumb/Uncommon_Hacks_Logo_White.png?1546440588'),
(126, 'Hack the Valley III', 'ON', 'Scarborough', '2019-02-22', '2019-02-24', 'https://hackthevalley.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/076/thumb/purp_square.png?1545233703'),
(127, 'CrimsonCode', 'WA', 'Pullman', '2019-02-23', '2019-02-24', 'http://hackathon.eecs.wsu.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/095/thumb/crimsoncodelogo_1080x1080.png?1547178022'),
(128, 'HackCU', 'CO', 'Boulder', '2019-02-23', '2019-02-24', 'https://hackcu.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/078/thumb/blue_black.png?1545430196'),
(129, 'HackTCNJ', 'NJ', 'Ewing', '2019-02-23', '2019-02-24', 'https://hacktcnj.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/086/thumb/hack-tcnj__1__%281%29.png?1546530519'),
(130, 'HackUTD', 'TX', 'Richardson', '2019-02-23', '2019-02-24', 'https://www.hackutd.co/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/070/thumb/mlh-hackutd-19-splash-profpic.png?1544560949'),
(131, 'Hack DHI', 'MX', 'Dolores Hidalgo C.I.N', '2019-03-01', '2019-03-03', 'https://hackdhi.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/119/thumb/Perfil.png?1549470071'),
(132, 'HackMerced', 'CA', 'Merced', '2019-03-01', '2019-03-03', 'http://hackmerced.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/106/thumb/logo_%282%29.png?1548874506'),
(133, 'HackTech', 'CA', 'Pasadena', '2019-03-01', '2019-03-03', 'http://hacktech.io', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/102/thumb/HT_logo_bg_copy.png?1548272745'),
(134, 'Knight Hacks', 'FL', 'Orlando', '2019-03-01', '2019-03-03', 'https://knighthacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/117/thumb/kh-logo-2.png?1549376753'),
(135, 'PickHacks', 'MO', 'Rolla', '2019-03-01', '2019-03-03', 'https://pickhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/038/thumb/pickhacks_final_logo_rgb-01_cropped.png?1541016908'),
(136, 'Steelhacks', 'PA', 'Pittsburgh', '2019-03-01', '2019-03-02', 'http://steelhacks.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/111/thumb/steelhacks_final.png?1549054876'),
(137, 'HACK AE 2019', 'ME', 'Orono', '2019-03-02', '2019-03-03', 'https://theaeac.org/events/america-east-hackathon-hack-ae/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/112/thumb/aelogo.jpg?1549057329'),
(138, 'HooHacks', 'VA', 'Charlottesville', '2019-03-02', '2019-03-03', 'https://www.hoohacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/104/thumb/logo_mlhsquare.png?1548345158'),
(139, 'RevolutionUC', 'OH', 'Cincinnati', '2019-03-02', '2019-03-03', 'https://revolutionuc.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/099/thumb/revuc_logo.png?1547745721'),
(140, 'SF Hacks 2019', 'CA', 'San Francisco', '2019-03-02', '2019-03-03', 'https://sfhacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/124/thumb/-bz06aJF_400x400.jpg?1549559019'),
(141, 'WiCHacks', 'NY', 'Rochester', '2019-03-02', '2019-03-03', 'https://wichacks.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/069/thumb/WiCHacks_Logo.png?1544557883'),
(142, 'Hacklassonde', 'ON', 'Toronto', '2019-03-09', '2019-03-10', 'http://hacklassonde.ca/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/113/thumb/event-logo.png?1549289580'),
(143, 'HackRU', 'NJ', 'New Brunswick', '2019-03-09', '2019-03-10', 'https://hackru.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/123/thumb/HackRUsmall.png?1549482272'),
(144, 'MenloHacks', 'CA', 'Atherton', '2019-03-09', '2019-03-10', 'http://menlohacks.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/101/thumb/menlohacks_icon_512x512.png?1548455249'),
(145, 'Profhacks', 'NJ', 'Glassboro', '2019-03-09', '2019-03-10', 'https://profhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/109/thumb/logossquare.png?1549052833'),
(146, 'HackPSU', 'PA', 'University Park', '2019-03-16', '2019-03-17', 'https://hackpsu.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/110/thumb/HackPSU_Logo.jpg?1549053102'),
(147, 'HackRPI', 'NY', 'Troy', '2019-03-16', '2019-03-17', 'https://hackrpi.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/126/thumb/logo_%285%29.png?1550003046'),
(148, 'Hackital', 'DC', 'Washington', '2019-03-22', '2019-03-24', 'http://hackital.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/127/thumb/hackital-favicon.png?1550164203'),
(149, 'TechTogether Boston', 'MA', 'Boston', '2019-03-22', '2019-03-24', 'https://boston.techtogether.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/079/thumb/mark_techtogether_color.png?1545862034'),
(150, 'CrimsonHacks', 'AL', 'Tuscaloosa', '2019-03-23', '2019-03-24', 'https://www.crimsonhacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/107/thumb/logo_prof.png?1548951472'),
(151, 'Hackabull', 'FL', 'Tampa', '2019-03-23', '2019-03-24', 'https://hackabull.io/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/120/thumb/mlh-logo-square.png?1549470471'),
(152, 'Los Altos Hacks', 'CA', 'Sunnyvale', '2019-03-23', '2019-03-24', 'https://www.losaltoshacks.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/091/thumb/touch-icon.png?1546898719'),
(153, 'MasseyHacks', 'ON', 'Windsor', '2019-03-23', '2019-03-24', 'https://masseyhacks.ca/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/122/thumb/masseysmall.png?1549478677'),
(154, 'HackGSU', 'GA', 'Atlanta', '2019-03-29', '2019-03-31', 'http://hackgsu.com/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/115/thumb/panther1.png?1549318803'),
(155, 'Hack Puebla', 'MX', 'Puebla', '2019-03-29', '2019-03-30', 'http://ing.pue.itesm.mx/hackathon/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/128/thumb/pubela.png?1550170831'),
(156, 'LA Hacks', 'CA', 'Los Angeles', '2019-03-29', '2019-03-31', 'http://lahacks.com', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/103/thumb/2019logo-04.png?1548274619'),
(157, 'CatHacks', 'KY', 'Lexington', '2019-03-30', '2019-03-31', 'http://cathacks.cs.uky.edu/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/118/thumb/small-cathacks-logo.jpg?1549469679'),
(158, 'HackWCU', 'PA', 'West Chester', '2019-03-30', '2019-03-31', 'https://hackwcu.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/114/thumb/Logo_Colorized_Small.png?1549313609'),
(159, 'LingHacks II', 'CA', 'Fremont', '2019-03-30', '2019-03-31', 'http://linghacks.tech/linghacks-ii', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/125/thumb/LingHacksLogo.png?1549560702'),
(160, 'PackHacks', 'NC', 'Raleigh', '2019-04-13', '2019-04-14', 'http://www.ncsupackhacks.org/', 'https://s3.amazonaws.com/assets.mlh.io/events/logos/000/001/116/thumb/logo.jpg?1549319137');

-- --------------------------------------------------------

--
-- Table structure for table `Reviews`
--

CREATE TABLE `Reviews` (
  `HackID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `Pros` varchar(240) NOT NULL,
  `Cons` varchar(240) NOT NULL,
  `Rank` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Reviews`
--

INSERT INTO `Reviews` (`HackID`, `UID`, `Pros`, `Cons`, `Rank`) VALUES
(1, 1, 'I liked this hackathon a lot.', 'I did not like this hackathon very much.', '0'),
(1, 3, 'I hate the guy above me', 'I hate the guy below me', '0'),
(1, 9, 'Good', 'Testing', '0'),
(3, 1, 'Hello ', 'Testing', '0');

-- --------------------------------------------------------

--
-- Table structure for table `User_Info`
--

CREATE TABLE `User_Info` (
  `UID` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `hash` varchar(500) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gitlink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User_Info`
--

INSERT INTO `User_Info` (`UID`, `email`, `hash`, `username`, `name`, `gitlink`) VALUES
(1, 'matas.lauzadis@gmail.com', '$2y$10$.8FyX8lzMR9/MKC1jKTFX.3Ba12jkU34HprF28.z4DX5pJ9tuCd3O', 'mataslauzadis', 'Matas Lauzadis', 'https://github.com/mataslauzadis'),
(2, 'm@m.com', '$2y$10$InC3Fo/mjl.thctxqfUgMef.Hz7lE3wAsGFf9skGfph9e0q7206Vi', 'mataslauzadisss', 'Matas', 'https://github.com/mataslauzadis'),
(3, 'j@j.com', '$2y$10$U2gECUL/FOyeDhWSnFcFa.9HZMx6QCqHaIqGNM6uekVvYoSR9/ouG', 'Oldlady', 'Old Man', 'https://www.github.com/oldlady'),
(4, 'test@gmail.com', '$2y$10$U68Rr5nQBaO7HPuFxsmcoeKQuJUftgrVepw51TIit0XndY0t4wYzu', 'Hell', '', ''),
(5, 'L@l.com', '$2y$10$nAFSBT0qzEOKbxUx3C.V3Om2wPeewq2btYvTD.rmb8m2P8stoCftC', 'lauzadis', '', ''),
(6, 'n@n.com', '$2y$10$z7KSKKwVtOEchZ9m4jxEXePR6f0mYWNAUfu76LdiPK2aDnyqoijFy', 'hello', '', ''),
(7, 'p@p.com', '$2y$10$8wuu8HoQtG.n3TJjasCRZuSPQ9Xa1FJJdpYm/P2tNnmx8IYIEkayO', '1', '', ''),
(8, 'b@b.com', '$2y$10$052P.a2FCD2OYGd5IME2.evR3W8Tyv7tggwcRhiVDiSBeJ7mEYvqe', 'old', '', ''),
(9, 'demon@demon.com', '$2y$10$ymcHYK1kQntSkNES6LfHxOt2H1tfuaxZTrdX1ZE/KQEgichK65Cx6', 'demon', '', ''),
(10, 'a@a.com', '$2y$10$Li8/mMbsVDT89GkZ8k1H7Osgo45spEN8HVQiLSfEJ6WdngeMD1c5O', 'gary', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Hackathons`
--
ALTER TABLE `Hackathons`
  ADD PRIMARY KEY (`HackID`);

--
-- Indexes for table `User_Info`
--
ALTER TABLE `User_Info`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Hackathons`
--
ALTER TABLE `Hackathons`
  MODIFY `HackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `User_Info`
--
ALTER TABLE `User_Info`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
