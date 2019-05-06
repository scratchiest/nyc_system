-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 10:45 PM
-- Server version: 5.7.15-log
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nycdb2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `after_admin_adduser`
--

CREATE TABLE `after_admin_adduser` (
  `id` int(11) NOT NULL,
  `added_user` varchar(191) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `after_admin_deleteuser`
--

CREATE TABLE `after_admin_deleteuser` (
  `id` int(11) NOT NULL,
  `deleted_user` varchar(191) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `after_admin_resetpassword`
--

CREATE TABLE `after_admin_resetpassword` (
  `id` int(11) NOT NULL,
  `updated_user` varchar(191) DEFAULT NULL,
  `old_password` varchar(191) DEFAULT NULL,
  `reset_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `after_users_changepassword`
--

CREATE TABLE `after_users_changepassword` (
  `id` int(11) NOT NULL,
  `user` varchar(191) DEFAULT NULL,
  `old_password` varchar(191) DEFAULT NULL,
  `new_password` varchar(191) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campers`
--

CREATE TABLE `campers` (
  `camper_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `contactno` varchar(191) DEFAULT NULL,
  `churchname` varchar(191) NOT NULL,
  `churchaddress` varchar(191) NOT NULL,
  `churchdistrict` varchar(191) NOT NULL,
  `churchposition` varchar(191) NOT NULL,
  `pastorname` varchar(191) DEFAULT NULL,
  `pastorcontactno` varchar(191) DEFAULT NULL,
  `campsattended` int(11) NOT NULL,
  `allergies` varchar(191) NOT NULL,
  `groupnumber` int(11) NOT NULL,
  `paid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campers`
--

INSERT INTO `campers` (`camper_id`, `name`, `age`, `gender`, `email`, `contactno`, `churchname`, `churchaddress`, `churchdistrict`, `churchposition`, `pastorname`, `pastorcontactno`, `campsattended`, `allergies`, `groupnumber`, `paid`) VALUES
(145, 'Marben B. Diez', 18, 'Male', 'marbendiez28@gmail.com', '09506396989', 'Digos City Community Church', 'Purok 10, Aplaya, Digos City', 'Davao Del Sur', 'Member', '', '', 0, 'None', 3, 'Paid'),
(146, 'Jorey L. Gayo', 17, 'Male', 'jorey_01@yahoo.com', '09382019555', 'IBC - Balagonon', 'Balagonon, Managa, Bansalan Davao del Sur', 'Davao Del Sur', 'Member', 'Norma A. Gayo', '09266500255', 0, 'None', 4, 'Paid'),
(147, 'Arby Pabanua  ', 16, 'Male', '', '09201298120', 'Abella Community Church', 'Abella Subdivision Digos City', 'Davao Del Sur', 'Member', 'Pastor Samson Mag-aso', '09201298120', 0, 'None', 5, 'Paid'),
(148, 'David Y. Cuestas', 13, 'Male', '', '09368078998', 'Digos City Community Church', 'Purok 10, Aplaya, Digos City', 'Davao Del Sur', 'Member', '', '', 0, 'None', 1, 'Paid'),
(149, 'rafael villacorte escober', 18, 'Male', 'rafajauhari15@gmail.com', '09368078998', 'digos city community church', 'purok 10 cristian village aplaya', 'Davao Del Sur', 'Member', '', '', 0, 'None', 6, 'Paid'),
(150, 'Dezroniel Nelo Y. Cuestas', 16, 'Male', 'nelocuestas@gmail.com', '09368078998', 'Digos City Community Church', 'Christian Village Purok 10 ', 'Davao Del Sur', 'Member', 'Noel Estrella', '', 0, 'Shrimp ', 7, 'Paid'),
(151, 'Zeus Immanuel A. Nuevo', 15, 'Male', 'zeusimmanuelnn@gmail.com', '09093783078', 'Digos City Community Church', 'Christian Village, Brgy. Aplaya, Digos City', 'Davao Del Sur', 'Member', '', '', 0, 'None', 8, 'Paid'),
(152, 'Tessa Mae T. Estrella', 14, 'Female', '', '09484431160', 'Digos City Community Church', 'purok 10, Christian Vill., Brgy. Apalaya, Digos City, Davao del Sur', 'Davao Del Sur', 'Member', '', '', 0, 'Shrimp ', 9, 'Paid'),
(153, 'Janelle Kay V. Dalumpines', 17, 'Female', 'kayeenelleey@gmail.com', '09105722437', 'Digos City Community Church', 'Purok 10, Christian Village, Brgy. Aplaya, Digos City', 'Davao Del Sur', 'Member', '', '', 0, 'None', 10, 'Paid'),
(154, 'Jessa Mae T. Algabre', 18, 'Female', 'jessamaetaypinalgabre25@gmail.com', '09128581633', 'Independent Baptist Church in the Philippines', 'Purok 10, Christian Village, Brgy. Aplaya Digos City DVO', 'Davao Del Sur', 'Member', '', '', 0, 'None', 11, 'Paid'),
(155, 'Rhea Reponte', 16, 'Female', '', '09657485101', 'Digos City Community Church', 'purok10,Christian Village, Brgy Aplaya, Digos Cuty, Davao del Sur', 'Davao Del Sur', 'Member', '', '', 0, 'None', 12, 'Paid'),
(156, 'Anachesa Anoya', 18, 'Female', 'anachesaa@gmail.com', '', 'Independent Baptist Churches in the Philippines', 'Tionko, Davao City', 'Davao City', 'Non-Member', 'Pastor Dan Penano', '', 2, 'None', 13, 'Not Paid'),
(157, 'Gina Hermosa Abalos', 17, 'Female', '', '09103591488', 'Independent Baptist Churches Matutungan', 'Matutungan Sta Cruz. Davao Del Sur', 'Davao Del Sur', 'Member', 'Lea T. Mahilum', '9308602212', 2, 'None', 14, 'Paid'),
(158, 'Joy Ann M. Justalero', 18, 'Female', 'joiisxaiey21@yahoo.com', '09105490099', 'Independent Baptist Church of the Philippines', 'Tionko Avenue, Davao City', 'Davao City', 'Member', '', '', 2, 'Shrimp ', 15, 'Not Paid'),
(159, 'Shekinah Grace S. Durano', 13, 'Female', '', '09563650452', 'ibcp bato', 'prk. pag asa b bato sta.cruz davao del sur', 'Davao Del Sur', 'Member', 'Danilo Mag-aso', '', 0, 'None', 2, 'Not Paid'),
(160, 'Joanna Paula C. Lantay', 20, 'Female', 'jpaula_casinto03@yahoo.com', '09187338999', 'Independent Baptist Churches in the Phil.', 'IBCP SAMAL ', 'Samal (IGACOS) District', 'Member', '', '', 2, 'None', 16, 'Paid'),
(161, 'Lynnel Jade Dahan', 16, 'Female', '', '09068143478', 'INDEPENDENT BAPTIST CHURCH CENTER CHURCH', 'Tionko Avenue Davao City', 'Davao City', 'Member', 'PASTOR DAN', '', 4, 'None', 17, 'Not Paid'),
(163, 'joanna paula o. Morales', 13, 'Female', '', '09497708697', 'tabigue outreach ministry ', 'badiang sinawilan digos city ', 'Davao Del Sur', 'Member', 'Danilo Mag-aso ', '', 0, 'None', 1, 'Not Paid'),
(164, 'Jolita Rubi Hermosa', 17, 'Female', '', '09382987464', 'IBCP Matutungan', 'Matutungan Sta. Cruz Davao del Sur', 'Davao Del Sur', 'Member', 'Leah T. Mahilum', '', 0, 'None', 18, 'Paid'),
(165, 'scheenley rose gumban', 15, 'Female', 'scheenleyrosegumban@yahho.com', '09505337539', 'ibcp catitipan', 'purok 8 upper catitipan', 'Davao City', 'Member', 'pastor sarunay', '09283411662', 0, 'None', 19, 'Not Paid'),
(166, 'Ma.Karen P.Barte', 16, 'Female', 'shanixe-supergirl@yahoo.com', '09101806150', 'Ibcp Catitipan', 'Catitipan,Davao City', 'Davao City', 'Member', 'Armelito Sarunay ', '09283411662', 1, 'None', 20, 'Not Paid'),
(167, 'cherrymae algabre', 16, 'Female', '09488028165@yahoo.com', '', 'Independent Baptist Church in the Philippines', 'Purok 10, Christian Village, Brgy. Aplaya Digos City DVO', 'Davao Del Sur', 'Member', '', '', 0, 'None', 3, 'Paid'),
(168, 'merry joy m. selvio', 14, 'Female', '', '', 'abella church', 'digos city abella', 'Davao Del Sur', 'Member', 'leticia m. abne', '09150594355', 0, 'None', 4, 'Paid'),
(169, 'hannah marie mellorin', 15, 'Female', 'alohannahmarie@gmail.com', '09202374484', 'independent baptist church of catitipan', 'catitipan', 'Davao City', 'Member', 'armelito sarunay', '09283411662', 1, 'None', 5, 'Not Paid'),
(170, 'Ma. Kyla P.Barte', 15, 'Female', 'vbarte@yahoo.com', '09096550535', 'ibcp catitipan', 'purok8 upper catitipan ', 'Davao City', 'Member', 'pastor sarunay', '09283411663', 0, 'None', 6, 'Not Paid'),
(171, 'Algelyn R. Cuevas', 19, 'Female', 'gelcuevas1599@gmail.com', '09486527132', 'Independent Baptist Churches in the Phil.', 'Compostela Valley', 'COMVAL District', 'Member', 'Pastor Julius M. Conejos', '', 3, 'Shrimp ', 7, 'Paid'),
(172, 'Gladys D. Gabato', 21, 'Female', 'gladysgabato9@yahoo.com', '09383568311', 'Independent Baptist Church Of the Phil. Comval', 'Purok 4, Poblacion New Bataan', 'COMVAL District', 'Member', 'Pastor Edgar g. Dapadap', '09214893373', 3, 'None', 8, 'Paid'),
(173, 'Merjo Janiene U. Ordaneza', 18, 'Female', '', '09100852609', 'Independent Baptist Churches of the Philippines', 'Poruk 4, poblacion New bataan', 'COMVAL District', 'Member', 'Rev.Edgardo G. Dapadap', '09214893373', 3, 'None', 9, 'Paid'),
(174, 'althea divine o. mag-aso', 12, 'Female', '09103311378@yahoo.com', '09203048751', 'ibcp bato', 'bato sta cruz davao del sur', 'Davao Del Sur', 'Member', 'danilo mag-aso', '', 0, 'None', 2, 'Paid'),
(175, 'Regine L. Gayo', 13, 'Female', '', '', 'IBCP - Balagonon', 'Balagonon,Managa, Bansalan Davao del Sur', 'Davao Del Sur', 'Member', 'Norma A. Gayo', '09266500255', 0, 'None', 1, 'Paid'),
(176, 'ARNEL B. MULIT ', 20, 'Male', '', '09396061480', 'Independent Baptist Churches in the Philippines', 'Purok 4 cabinuangan, New Bataan, Comval', 'COMVAL District', 'Member', 'Edgardo G. Dapadap', '09214893373', 3, 'None', 10, 'Paid'),
(177, 'Kate Diann Tomales', 15, 'Female', '', '099719828640', 'Independent Baptist Church of The Ohil. Comval', 'Purok 4, pob. New Bataan', 'COMVAL District', 'Member', 'Pastor. Edgardo Dapadap', '09214893373', 1, 'None', 11, 'Paid'),
(178, 'Rexur Lloyd A. Udtohan', 16, 'Male', 'Agustinlloyd549@gmail.com', '09094419744', 'Independent Baptist Churches in the Phil.', 'Purok 4, Poblacion New Bataan', 'COMVAL District', 'Member', 'Pastor Edgardo G. Dapadap', '09214893373', 3, 'None', 12, 'Paid'),
(179, 'Cleiane Grace Villanueva', 17, 'Female', 'villanuevacleianegrace@gmail.com', '09102088753', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Ptr. Dan Penano', '', 4, 'None', 13, 'Not Paid'),
(180, 'SUSIE BUCAG', 18, 'Female', 'SUSIEBUCAG14@yahoo.com', '09106175182', 'IBCP', 'Tionko st.', 'Davao City', 'Member', 'pastor Dan', '', 3, 'None', 14, 'Not Paid'),
(181, 'Charisa', 17, 'Female', 'bucagcha@gmail.com', '09382170332', 'Independent Baptists Churches in the Philippines', 'Tionko St.', 'Davao Del Sur', 'Member', 'Dan Penano', '', 2, 'None', 15, 'Not Paid'),
(182, 'Dianna Grace B. Leon', 19, 'Female', '', '09484085419', 'Independent Baptist Church Of The Phil. Comval', 'Purok 4, Pob. New Bataan Comval', 'COMVAL District', 'Member', 'Pastor. edgardo G. Dapadap', '09214893373', 4, 'None', 16, 'Paid'),
(183, 'Bianca Aravelle Udtohan', 13, 'Female', '', '09565511123', 'Independent Baptist Churches in the Phil.', 'Purok 4, Poblacion New Bataan', 'COMVAL District', 'Member', 'Pastor Edgardo G. Dapadap', '', 0, 'None', 2, 'Paid'),
(184, 'Angelica Rico', 17, 'Female', 'angelicarico@yahoo.com', '09128083025', 'IBCP', 'Tionko st.', 'Davao City', 'Member', 'pastor Dan', '', 1, 'None', 17, 'Not Paid'),
(185, 'Aloysius See B. Nalam', 16, 'Male', 'aloysiusnalam@yahoo.com', '9064756429', 'Independent Baptist Churches in the Philippines', 'Purok 2,Langwan,San Roque,New Bataan,ComVal', 'COMVAL District', 'Member', 'Edgardo G. Dapadap', '', 0, 'None', 18, 'Paid'),
(186, 'Princess Posadas', 17, 'Female', 'Princess_0423@yahoo.com', '09506638382', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pastor Dan Penano', '', 2, 'None', 19, 'Not Paid'),
(187, 'Jackie Cabato', 18, 'Female', 'calculus98jackie@gmail.com', '09755793425', 'Independent Baptist Church', 'Tionko Ave., Davao City', 'Davao City', 'Member', '', '', 4, 'None', 20, 'Not Paid'),
(188, 'Michaella Nicole Esperitu', 17, 'Female', '', '', 'Independent Baptist Churches in the Phil.', 'Purok 4, Poblacion New Bataan', 'COMVAL District', 'Member', 'Pastor Edgardo G. Dapadap', '', 3, 'None', 3, 'Paid'),
(189, 'Ferlin May Panes', 19, 'Female', '', '', 'Independent Baptist of the Phil.', 'Purok 4, Pob. New Bataan', 'COMVAL District', 'Member', 'Rev. Edgardo G. Dapadap', '09214893373', 3, 'None', 4, 'Paid'),
(190, 'Neizha C. Gonzales', 18, 'Female', 'gneizha@gmail.com', '', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Dan Penano', '', 1, 'None', 5, 'Not Paid'),
(191, 'Edriane Barabat', 14, 'Female', '', '09071803028', 'Independent Baptist Church in the Philippines', 'Purok 4, Pob. New Bataan Comval', 'COMVAL District', 'Member', 'Rev. Edgardo G. Dapadap', '', 0, 'None', 6, 'Paid'),
(192, 'Lorelyn A Germe', 19, 'Female', '', '09123142130', 'IBCP center', 'Tionko St.', 'Davao City', 'Member', 'Pastor Dan', '', 1, 'None', 7, 'Not Paid'),
(193, 'katherine mae fernandez', 18, 'Female', 'erinefernandez12@gmail.com', '09556958473', 'independent baptist chuches in the philippines', 'tionko avenue', 'Davao City', 'Member', 'Pastor Dan Penano', '', 3, 'None', 8, 'Not Paid'),
(194, 'Mary Chandy Farase', 17, 'Female', 'marychandyfarase15@gmail.com', '09291788464', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Non-Member', 'Pastor Dan Penano', '', 0, 'None', 9, 'Not Paid'),
(195, 'Shena Mae Palas', 19, 'Female', 'shenapalas@gmai.com', '09486913878', 'IBCP', 'Tionko Ave. Davao city', 'Davao City', 'Member', 'Pastor Dan Penano', '', 0, 'Shrimp ', 10, 'Not Paid'),
(196, 'Princess Mae V. Padilla', 18, 'Female', 'princessmaepadilla831@gmail.com', '09073552235', 'IBCP Center Church', 'Tionko St., Davao City', 'Davao City', 'Member', 'Dan Penano', '', 4, 'None', 11, 'Not Paid'),
(197, 'melody barabat', 17, 'Female', '', '09466369961', 'Independent Baptist Churches in the Phil.pur', 'Purok 4, Poblacion New Bataan', 'COMVAL District', 'Member', 'Pastor Edgardo G. Dapadap', '', 2, 'None', 12, 'Paid'),
(198, 'Benigno, Alyssa A.', 19, 'Female', 'thealyssabenigno@gmail.com', '09092429489', 'IBCP Center', 'Tionko', 'Davao City', 'Member', 'Pastor Dan', '', 4, 'None', 9, 'Not Paid'),
(199, 'nardz B Leon jr ', 17, 'Male', '', '09971038393', 'independent baptist churches of phil.', 'purok 4', 'COMVAL District', 'Member', 'ptr. edgardo G Dapadap', '', 4, 'None', 14, 'Paid'),
(200, 'Gail Garcia', 19, 'Female', 'mar_gail12@yahoo.com', '09103615607', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pastor Dan Penano', '', 4, 'None', 15, 'Not Paid'),
(201, 'shelyric Tumabang', 18, 'Female', 'shelyric@yahoo.copm', '09235633245', 'IBCP', 'Tionko ave', 'Davao City', 'Member', 'pastor Dan Penano', '', 2, 'None', 16, 'Not Paid'),
(202, 'MARIELUZ UDAS', 18, 'Female', 'marieudas16@gmail.com', '09381923192', 'Independent Baptist Church Philippines', 'Tionko Ave. Davao City ', 'Davao City', 'Member', 'Pastor Dan', '', 2, 'None', 17, 'Not Paid'),
(203, 'Faithclea Celeste P. Kim', 15, 'Female', 'cleakim.0209@gmail.com', '', 'Independent Baptist Churches in the Phil.', 'Tionko st. Davao City', 'Davao City', 'Member', 'Ptr. Dan Penano', '', 0, 'None', 18, 'Not Paid'),
(204, 'JUVY VERDADERO', 18, 'Female', 'juvypatatas@gmail.com', '09203817422', 'Independent Baptist Church Philippines ', 'Tionko Ave. Davao City', 'Davao City', 'Member', 'Pastor Dan', '', 3, 'None', 19, 'Not Paid'),
(205, 'Jerome Amiel E Alcebar', 16, 'Male', '', '09971038393', 'Independent Baptist Church of the phil.', 'Purok 4', 'COMVAL District', 'Member', 'Edgardo G. Dapadap', '', 3, 'None', 20, 'Paid'),
(206, 'hannah mae ratificar', 13, 'Female', 'hannahratificar@yahoo.com', '09197575527', 'ntcf', 'novatierra davao  city', 'Davao City', 'Member', 'pastor paul gamalo', '9429327251', 0, 'None', 1, 'Not Paid'),
(207, 'Jennysa M. Candido', 17, 'Female', '', '09109861907', 'IBCP', 'Nova Tierra Vill. Brgy. Hizon, Sasalit St.', 'Davao City', 'Member', 'Ptr. Christean Paul C. Gamalo', '09429327257', 2, 'None', 3, 'Not Paid'),
(208, 'theara shyle saligumba talamor', 14, 'Female', 'theara.talamor@gmail.com', '09094796899', 'novatierra christian fellowship', 'novatierra', 'Agusan District', 'Member', 'ptr. paul gamalo', '', 2, 'Shrimp ', 4, 'Not Paid'),
(209, 'ivy ching l. vito', 15, 'Female', '', '09364915053', 'Independent Baptist Church in the Philippines', 'magatos', 'Emmanuel District', 'Member', 'pastor erwin bastasa', '9552950371', 2, 'None', 5, 'Paid'),
(210, 'bambie campomanes', 15, 'Female', 'campomanesbambie@gmail.com', '09974152577', 'IBCP', 'Magatos', 'Emmanuel District', 'Member', 'Pastor Erwin Bastasa', '09552950375', 0, 'None', 6, 'Paid'),
(211, 'Dale Cataousan', 18, 'Female', 'dalecatapusan@yahoo.com', '09755924667', 'Indeoendent Baptist Churches in the Philippines', 'Magatos, Asuncion, Davo del Norte', 'Emmanuel District', 'Member', 'Erwin Bastasa', '', 2, 'Chicken ', 7, 'Paid'),
(212, 'jerome andre E. alcebar', 15, 'Male', 'andreALCEBAR@gmail.com', '09308588860', 'IBCP', 'purok 4', 'COMVAL District', 'Member', 'Edgar dapadap', '', 2, 'None', 8, 'Paid'),
(213, 'justin d. gantalao', 21, 'Male', '', '', '0', 'Purok 4, Poblacion New Bataan', 'COMVAL District', 'Member', 'Pastor Edgardo G. Dapadap', '', 0, 'None', 9, 'Paid'),
(214, 'Jave', 18, 'Male', 'javemamontayao2018@gmail.com', '09656977068', 'Independent Baptist Church in the Philippines', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pastor Dan Penano', '', 0, 'None', 10, 'Not Paid'),
(215, 'Lovely May L. Gariento', 17, 'Female', 'lovelygariento@yahoo.com', '9462659170', 'Nova Tierra Christian Fellowship', 'Brgy. Hizon Lanang  ntv Davao City Sasalit st.', 'Davao City', 'Member', 'Paul Gamalo', '09429327257', 3, 'None', 11, 'Not Paid'),
(216, 'CHARLIE B. MULIT', 26, 'Male', 'charliemulit6@gmail.com', '09501203900', 'IBCP NEW BATAAN SENTRO', 'P4 CABINUANGAN, NEW BATAAN, COMVAL', 'COMVAL District', 'Member', 'REV. EDGARDO G. DAPADAP', '09214893373', 2, 'None', 12, 'Paid'),
(217, 'Eliza Michelle Dela Cuesta', 22, 'Female', 'elizamichelledelacuesta@gmail.com', '09126092902', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', 'RUTIE CUÑADO', '09473812930', 3, 'None', 13, 'Not Paid'),
(218, 'Cyril John C. Seno', 15, 'Male', '', '', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', '', '09473812930', 3, 'None', 14, 'Not Paid'),
(219, 'Jotham Andaya', 17, 'Male', 'therebhen@gmail.com', '09666818191', 'Risen Christ Community Church San Francisco', 'Barangay 5, Purok 7 , San Francisco, Agusan del Sur', 'Agusan District', 'Member', 'Rev. Bhen Andaya', '09195921370', 3, 'Chicken Shrimp ', 15, 'Paid'),
(220, 'John Michael A. Cajandig', 14, 'Male', '', '', 'RISEN CHRIST COMMUNITY CHURCH,SAN FRANCISCO', 'P-2,BRGY.3,SFADS', 'Agusan District', 'Member', '', '', 1, 'None', 16, 'Paid'),
(221, 'janah marie a. cajandig', 15, 'Female', '', '', 'RCCC', 'San francisco,Agusan del sur', 'Agusan District', 'Member', 'rev.andaya', '', 0, 'None', 17, 'Paid'),
(222, 'DANIEL DAVECABARDO', 16, 'Male', '', '', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', 'RUTIE CUÑADO', '09473812930', 4, 'None', 18, 'Not Paid'),
(223, 'Joram A. Tawide', 22, 'Male', '', '09109747521', 'Risen Christ Community Church', 'Sanfrancisco Agusan Del sur', 'Agusan District', 'Member', 'Rev. Andaya', '', 0, 'None', 19, 'Paid'),
(224, 'glory jane cajandig', 17, 'Female', 'glory.cajandig@yahoo.com', '09098327950', 'Risen Christ Community Church San Francisco', 'Barangay 5, Purok 7 , San Francisco, Agusan del Sur', 'Agusan District', 'Member', 'Rev. Bhen Andaya', '', 3, 'None', 20, 'Paid'),
(225, 'ELI KHALIL D. CABARDO', 13, 'Male', '', '09979122959', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', 'RUTIE CUÑADO', '09473812930', 0, 'None', 2, 'Not Paid'),
(226, 'romnick pilongo leon', 24, 'Male', '', '09364624290', 'ibcp', 'ibcp purok2 nawasa newbataan', 'COMVAL District', 'Member', 'Pastor Edgardo G. Dapadap ', '', 0, 'None', 3, 'Paid'),
(227, 'NEILVEN PELONGO POLICIOS', 19, 'Male', '', '09750515774', 'IBCP', 'PUROK 2 NAWASA', 'COMVAL District', 'Member', 'EDGAR DAPADAP', '', 0, 'None', 4, 'Paid'),
(228, 'Johnpaul A. Molanta', 15, 'Male', '', '09388321650', 'Risen Christ Community Church', 'Tumalog, Bamata Tribes Agusan Del Sur', 'Agusan District', 'Member', 'Rev. Andaya', '', 0, 'None', 5, 'Paid'),
(229, 'Cindy Ruiz Burga', 15, 'Female', 'cindyburga@gmail.com', '09082021476', 'Independent Baptist Churches of the Philippines ', 'tionko Avenue', 'Agusan District', 'Member', 'Pastor Bhen Andaya', '', 0, 'None', 6, 'Paid'),
(231, 'NORY JOYCE F. NAVARROZA', 18, 'Female', '', '', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', 'RUTIE CUÑADO', '09473812930', 2, 'None', 8, 'Not Paid'),
(232, 'ROBIN ALAKI DUMANGLAY', 20, 'Male', '', '09383979286', 'BAMATA TRIBES', 'TUMALOG ZILLOVIA TALAOGON AGUSAN DEL SUR', 'Agusan District', 'Member', 'REV. BHEN ANDAYA', '', 0, 'None', 9, 'Paid'),
(233, 'JEREMIAH CABARDO', 11, 'Male', '', '', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', 'RUTIE CUÑADO', '09473812930', 1, '', 1, 'Not Paid'),
(234, 'CHRISTINE EMIE JOY URDANETA', 14, 'Female', '', '', 'IBCP CLLF AGDAO', 'New salmonan, bangus st. Brgy. Aquino, Agdao Davao City', 'Davao City', 'Member', 'RUTIE CUÑADO', '09473812930', 2, '', 10, 'Not Paid'),
(235, 'jose hermoso jr.', 23, 'Male', '', '09100208882', 'ibcp carmen cotabato', 'pob, carmen north cotabato', 'Cotabato 1 (North)', 'Member', 'rev. allan f. salvador', '09464936736', 2, 'Shrimp ', 11, 'Paid'),
(236, 'Rubelyn Mabanag', 18, 'Female', '', '9488136477', 'Independent Baptist Church of the Philippines Carmen Cotabato', 'Poblacion Carmen North Cotabato', 'Cotabato 1 (North)', 'Member', 'Allan Salvador', '', 0, 'None', 12, 'Paid'),
(237, 'Jocel  Hermoso', 19, 'Female', '', '09468316701', 'IBCP carmen cotabato ', 'publocion carmen north cotabato', 'Cotabato 1 (North)', 'Member', 'Allan salvador', '', 0, 'None', 13, 'Paid'),
(238, 'DYLAN CEDRIC B PENANO', 13, 'Male', 'dylancedricp@gmail.com', '09338798918', 'ibcp center', 'tionko ave', 'Davao City', 'Member', 'DAN PENANO', '', 0, 'None', 2, 'Not Paid'),
(239, 'heromelleza', 14, 'Male', '', '09505690762', 'community bible center', 'st.john lower cabantian', 'Davao City', 'Member', '', '', 2, 'None', 14, 'Not Paid'),
(240, 'anne may ajoc', 16, 'Female', 'annemayajoc@yahoo.com', '0912519559', 'community bible center', 'st. john lower cabantian buhangin, davao city', 'Davao City', 'Member', '', '', 2, 'None', 15, 'Not Paid'),
(241, 'Macy Lorraine Roperos', 17, 'Female', 'macy_roperos@yahoo.com', '09099219651', 'Community Bible Center', 'St John Lower Cabantian Davao City', 'Davao City', 'Member', '', '', 2, 'None', 16, 'Not Paid'),
(242, 'Marian kaye tecson', 16, 'Female', 'tecsonmarian35@yahoo.com', '', 'community bible center', 'st.john lower cabantian davao city', 'Davao City', 'Member', 'Pastor Manuel Cabardo', '', 13, 'None', 17, 'Not Paid'),
(243, 'Que Ruvem Jimenez Colot', 17, 'Male', '', '', 'IBCP center', 'tiongko', 'Davao City', 'Member', 'pastor pacay', '', 0, 'Shrimp ', 18, 'Not Paid'),
(244, 'Jobel A. Ebal', 20, 'Male', '', '09262713979', 'Independent Baptist Church in the Philippines', 'Tionko St. Davao City', 'Davao City', 'Member', '', '', 0, 'None', 19, 'Not Paid'),
(245, 'Jhon Francis Lucero', 18, 'Male', 'johnfrancis_lucero@yahoo.com', '09462062782', 'Independent Baptist Church of the Philippines', 'Tionko Avenue Davao City', 'Davao City', 'Member', '', '', 0, 'None', 20, 'Not Paid'),
(246, 'Arjen Lewis C. Almendras', 18, 'Male', '', '09207389703', 'IBCP center church', 'tionko avenue', 'Davao City', 'Member', 'pastor pacay', '', 0, 'None', 21, 'Not Paid'),
(247, 'Benjamin Ruiz', 20, 'Male', '', '09664622294', 'IBCP center church', 'tionko avenue', 'Davao City', 'Member', 'Pastor Pacay', '', 0, 'None', 4, 'Not Paid'),
(248, 'Elyza Jane Pobadora', 17, 'Female', '', '09090500679', 'IBCP Center Church', 'Tionko Avenue', 'Davao City', 'Member', 'Pastor Pacay ', '', 2, 'None', 5, 'Not Paid'),
(249, 'Jan Ive c panabia', 15, 'Female', '', '09283353459', 'doz IBCP', 'doz balet babak district island garden city of samal', 'Samal (IGACOS) District', 'Member', 'wilson estrella', '', 3, 'Shrimp ', 21, 'Not Paid'),
(250, 'Daniela SHANE C REFEREZ', 15, 'Female', '', '', 'IBCP DOZ', 'DOZ BALET BABAK IGACOS', 'Samal (IGACOS) District', 'Member', 'WILSON ESTRELLA', '', 0, 'None', 7, 'Not Paid'),
(251, 'Shekinah C. Estrella', 14, 'Female', '', '09084704648', 'IBCP Doz', 'Brgy. Balet ,Babak,IGACoS', 'Samal (IGACOS) District', 'Member', 'Wilson Estrella', '', 0, 'None', 8, 'Not Paid'),
(252, 'Laisa mae Danas', 15, 'Female', 'laisadanas@yahoo.com', '09358621956', 'Independent Baptist Churches in the Phil.', 'IBCP SAMAL ', 'Samal (IGACOS) District', 'Member', '', '', 0, 'None', 9, 'Not Paid'),
(253, 'Angely C. Daguplo', 14, 'Female', '', '', 'Doz IBCP', 'Doz, Balet, Babak', 'Samal (IGACOS) District', 'Member', 'Wilson Estrella', '', 0, 'None', 10, 'Not Paid'),
(254, 'Ailan Kaynah B. Dasalla', 21, 'Female', 'zylrefraine.17@gmail.com', '09261392461', 'Independent Baptist Churches of the Philippines', 'Brgy. Villarica, Babak District, Island Garden City of Samal', 'Samal (IGACOS) District', 'Member', 'Rev. Balbino Montajes', '', 2, 'None', 11, 'Not Paid'),
(255, 'reynaline balonto', 15, 'Female', 'reynalinebalonto28@gmail.com', '', 'IBCP CALUMPANG', 'CALUMPANG GSC', 'SOCSARGEN District', 'Member', 'Pstr.Raymond Agustin', '', 0, 'None', 12, 'Not Paid'),
(256, 'Riza Quidlat', 17, 'Female', '', '09503406307', 'IBCP Calumpang ', 'Calumpang General Santos City', 'SOCSARGEN District', 'Member', 'Reymond Agustin', '', 2, 'None', 13, 'Not Paid'),
(257, 'Cherah Lyrh Sevilla', 16, 'Female', 'cherahlyrh_sevilla@yahoo.com', '09187232740', 'Independent Baptist Church', 'Lower Calumpang General Santos City', 'SOCSARGEN District', 'Member', 'Raymond Agustin', '09507663750', 0, 'None', 14, 'Not Paid'),
(258, 'Cristine Mae L. Cate', 16, 'Female', '', '', 'IBCP Libuak', 'P-2 Brgy. Libuak, Babak Dist. Island Garden City of Samal', 'Samal (IGACOS) District', 'Member', 'Nathaniel Paster', '', 2, 'None', 15, 'Not Paid'),
(259, 'Kate Abadinas', 16, 'Female', 'kateabadinas16@gmail.com', '09460075647', 'Independent Baptist Church in the Philippines San Isidro', 'Brgy. San Isidro Babak District IGACOS', 'Samal (IGACOS) District', 'Member', 'Zaldy Devibar', '', 1, 'None', 16, 'Not Paid'),
(260, 'Allen jean gerne', 18, 'Female', '', '', 'IBCP SOCKSARGEN', 'IBCP CALUMPANG GENERAL SANTONGCITY', 'SOCSARGEN District', 'Member', 'Pastor Raymond Agustin', '', 2, 'None', 10, 'Not Paid'),
(261, 'Manilyn P. Colita', 22, 'Female', '', '09772196390', 'Bucawe IBCP', 'Bucawe, Toril, Babak, IGaCoS', 'Samal (IGACOS) District', 'Member', 'Bro. Dominador Enoy', '0', 0, 'None', 17, 'Not Paid'),
(262, 'Gweneth Aloha M. Cabiles', 15, 'Female', 'gwenethalohacabiles@yahoo.com', '09101626886', 'IBCP Socsargen District', 'Lower Acharon Calumpang General Santos City', 'SOCSARGEN District', 'Member', 'Pastor Raymond F. Agustin', '09507663750', 0, 'None', 18, 'Not Paid'),
(263, 'Banico, Mae Rizalie C.', 19, 'Female', 'maerizaliebanico@yahoo.com', '', 'Independent Baptist Churches in the Phil.', 'Tionko st. Davao City', 'Davao City', 'Non-Member', 'Ptr. Dan Penano', '', 4, 'None', 19, 'Not Paid'),
(264, 'Michelle Jane A. Camporedondo', 16, 'Female', 'mj_1234@yahoo.com', '09557144315', 'IBCP BUCAWE', 'Brgy.Toril', 'Samal (IGACOS) District', 'Member', 'Dominador Enoy', '', 0, 'None', 20, 'Not Paid'),
(265, 'Jasil E. Camporedondo', 16, 'Female', '', '09367281655', 'IBCP- Bucawe', 'Brgy. Toril, Babak District, Island Garden City of Samal', 'Samal (IGACOS) District', 'Member', 'Dominador Enoy', '', 0, 'None', 3, 'Not Paid'),
(266, 'Grace Labador', 16, 'Female', '', '', 'IBCP BUCAWE', 'Purok 2, Bucawe, Toril', 'Samal (IGACOS) District', 'Member', '', '', 0, 'None', 4, 'Not Paid'),
(267, 'Joe Mari Talisic', 18, 'Male', '', '', 'IBCP 39.2', 'FVR VILLAGE 39.2, FATIMA UHAW,  GENERAL SANTOS CITY', 'SOCSARGEN District', 'Member', '', '', 0, 'None', 5, 'Not Paid'),
(268, 'Justine Mae', 15, 'Female', 'jgerne26@gmail.com', '09129468572', 'IBCP SOCSARGEN DISTRICT', 'Lower,Acharon Calumpang General Santos City', 'SOCSARGEN District', 'Member', ' Pastor Raymond Agustin', '09507663750', 1, 'None', 6, 'Not Paid'),
(269, 'valerie mae obon', 20, 'Female', 'balerimay20@gamail.com', '09100432587', 'IBCP Tagbaobo', 'Tagbaobo Kaputian District', 'Samal (IGACOS) District', 'Member', 'Pstr. Emmanuel Ygay', '', 2, 'None', 7, 'Not Paid'),
(270, 'Joe Mari Talisic', 18, 'Male', '', '', 'IBCP 39.2', 'FVR VILLAGE 39.2, FATIMA UHAW,  GENERAL SANTOS CITY', 'SOCSARGEN District', 'Member', '', '', 0, 'None', 8, 'Not Paid'),
(271, 'Jomel Camporedondo', 16, 'Male', 'omeng@gmail.com', '', 'IBCP Bucawe', 'IBCP SAMAL ', 'Samal (IGACOS) District', 'Member', '', '', 0, 'None', 9, 'Not Paid'),
(272, 'Grace G. Segundo', 18, 'Female', '', '09072888329', 'IBCP Calumpang', 'Calumpang, General Santos City', 'SOCSARGEN District', 'Member', 'Raymond Agustin', '', 1, 'None', 10, 'Paid'),
(273, 'Princess Eve C. Ramos', 18, 'Female', '', '09369823725', 'IBCP BUCAWE', 'Purok-2, Bucawe, Toril', 'Samal (IGACOS) District', 'Member', '', '', 0, 'None', 11, 'Paid'),
(274, 'MARIEL', 18, 'Female', 'marielgerne@yahoo.com', '09503406470', 'IBCP Socksargen', 'General Santos City', 'SOCSARGEN District', 'Member', '', '', 2, 'None', 12, 'Paid'),
(275, 'Kurt Patrick C. Batislaong', 15, 'Male', '', '', 'IBCP CALUMPANG', 'LOTE CALUMPANG', 'SOCSARGEN District', 'Member', '', '', 0, 'None', 13, 'Paid'),
(276, 'Marjun G. Segundo', 16, 'Male', 'marjunesegundo@yahoo.com', '09488357724', 'Ibcp calumpang', 'Calumpang General Santos City', 'SOCSARGEN District', 'Member', 'Raymond Agustin', '', 0, 'None', 14, 'Paid'),
(277, 'Joshua P. Sarajena', 18, 'Male', '', '', 'IBCP Calumpang', 'Lote Calumpang,  GENERAL SANTOS CITY', 'SOCSARGEN District', 'Member', 'Raymond Agustin', '', 2, 'None', 15, 'Paid'),
(278, 'Gilbert  A. Aclan Jr. ', 24, 'Male', '', '09550029241', 'IBCP bucana ', 'brgy 40 davao city', 'Davao City', 'Member', 'pastor jun alburo', '', 0, 'None', 16, 'Paid'),
(279, 'Kurt Patrick C. Batislaong', 15, 'Male', '', '', 'IBCP CALUMPANG', 'LOTE CALUMPANG', 'SOCSARGEN District', 'Member', '', '', 0, 'None', 17, 'Paid'),
(280, 'Philip Vincent L. Gagabuan', 16, 'Male', 'vinsgagabuan@yahoo.com', '09369043923', 'CCFC Veterans ', 'Purok Veterans , Calumpang GSC', 'SOCSARGEN District', 'Member', '', '', 2, 'None', 18, 'Paid'),
(281, 'Algie S. Ronolo ', 14, 'Male', '', '09307563087', 'IBCP Calumpang', 'Lote ,Calumpang General Santos City ', 'SOCSARGEN District', 'Member', 'Raymond Agustin ', '09507663750', 0, 'None', 19, 'Paid'),
(282, 'Lourence Marc Marinez', 19, 'Male', '', '', 'IBCP BUCANA ', 'BOULIVARD TRADIG BRGY40', 'Davao City', 'Member', 'Jun Alboro JR', '', 0, 'None', 20, 'Not Paid'),
(283, 'Lynce Mae Orola', 16, 'Female', '', '09129468572', 'IBCP CALUMPANG', 'Lower Acharon Calumpang General Santos City', 'SOCSARGEN District', 'Member', '', '', 2, 'None', 3, 'Paid'),
(284, 'Philip Vincent L. Gagabuan', 16, 'Male', 'vinsgagabuan@yahoo.com', '09369043923', 'CCFC Veterans ', 'Purok Veterans , Calumpang GSC', 'SOCSARGEN District', 'Member', '', '', 2, 'None', 4, 'Paid'),
(285, 'Mario \"Rio\" M. Lebria', 19, 'Male', 'mariolebria13@gmail.com', '9076617047', 'IBCP Calumpang General Santos City', 'Lower Acharon Calumpang General Santos City', 'SOCSARGEN District', 'Member', 'Pastor Reymund Agustin', '', 0, 'None', 21, 'Paid'),
(286, 'Princess Ann S. Dagcutan', 14, 'Female', '', '09485413409', 'IBCP Socsargen District', 'Lower Acharon Calumpang General Santos City', 'SOCSARGEN District', 'Member', 'Raymond F. Agustin', '09507663750', 0, 'None', 6, 'Paid'),
(287, 'Jayson P.  Sarajena', 16, 'Male', 'jayson.sarajena@yahoo.com', '09090754073', 'IBCP Calumpang', 'Lote ,Calumpang General Santos City ', 'SOCSARGEN District', 'Member', 'Raymond Agustin ', '', 1, 'None', 7, 'Paid'),
(288, 'Nichole G. Decipulo', 17, 'Female', 'nicholedecipulo@gmail.com', '', 'MGCF', 'gensan, mabuhay road', 'SOCSARGEN District', 'Member', 'ptr. bebot demadara', '', 0, 'None', 8, 'Paid'),
(289, 'shayne paparon mangila', 18, 'Male', 'shayne_mangila@yahoo.com', '09565901058', 'metro gensan christian fellowship', 'crest shelter san isidro general santos city', 'SOCSARGEN District', 'Member', 'allan niel demadara', '', 0, '', 9, 'Paid'),
(290, 'Ritchie Pael', 16, 'Male', 'Ritchiealberca@yahoo.com', '', 'IBCP Calumpang', 'Lote Calumpang GSC', 'SOCSARGEN District', 'Member', 'Pastor reymond Agustin', '', 0, 'None', 10, 'Paid'),
(291, 'James Luis C. Jaurigue', 16, 'Male', 'jamesluiscasipejaurigue@yahoo.com', '09100058213', 'Metro Gensan Christian Fellowship', 'Crest Shelter Subdivision, Blk. 1-35', 'SOCSARGEN District', 'Member', 'Allan Niel Demadara', '', 2, 'None', 11, 'Paid'),
(292, 'Kate Marielle Sijera', 16, 'Female', 'katemariellesijera@gmail.com', '09275795348', 'Metro Gensan Christian Fellowship', 'Blk. 3 Lot 1-3-5 Crest Shelter Subd., Brgy.San Isidro, General Santos City', 'SOCSARGEN District', 'Member', 'Pstr. Allan Niel Demadara', '09486856156', 2, 'None', 12, 'Paid'),
(293, 'vincent anasco', 14, 'Male', '', '', 'metro gensan christian fellowship', 'crest shelter subdivision,blk 3lot 135 ', 'SOCSARGEN District', 'Member', 'allan neil demadara', '', 0, 'None', 13, 'Paid'),
(294, 'Chezter Ikee Paparon', 13, 'Male', 'chezterpaparon@yahoo.com', '', 'Metro Gensan Christian Fellowship', 'Crest shelter subdivision Brgy.Mabuhay', 'SOCSARGEN District', 'Member', 'Neil Allan Demadara', '', 0, 'None', 2, 'Paid'),
(295, 'Carl Anthony M. Espanto', 18, 'Male', 'carlespanto@rshsxii.edu.ph', '09669845712', 'Metro Gensan Christian Fellowship', 'Crest Shelter, San Isidro, General Santos City', 'SOCSARGEN District', 'Member', 'Allan Niel Demadara', '09466856156', 2, 'None', 14, 'Paid'),
(296, 'Kent Adriane B. Visto', 14, 'Male', '', '09557130450', 'metro gensan christian', 'crest shelter subd. brgy.san isidro gsc', 'SOCSARGEN District', 'Member', 'PTR allan niel demadara', '09466856156', 0, 'None', 15, 'Paid'),
(297, 'Eissel B. Paparon', 15, 'Female', 'eisselpaparon05@gmail.com', '09159093589', 'Metro Gensan Christian Fellowship', 'Block 3 lot 1-3-5 Crest Shelter', 'SOCSARGEN District', 'Member', 'Allan Niel Demadara', '', 2, 'None', 21, 'Paid'),
(298, 'Rhean Lyn E. Posadas', 13, 'Female', '', '', 'MGCF', 'Crest shelter subdivision Brgy.San Isidro G.S.C.', 'SOCSARGEN District', 'Member', 'ptr. Allan Niel Demadara', '', 0, 'None', 1, 'Paid'),
(299, 'dianne merriel d. daroy', 13, 'Female', '', '09268172236', 'MGCF', 'Crest shelter subdivision brgy.san isidro G.S.C', 'SOCSARGEN District', 'Member', 'Ptr. Allan Niel J.Demadara', '', 2, 'Chicken Shrimp ', 2, 'Paid'),
(300, 'Hannah Leen Bunda', 18, 'Female', 'Hannahleenbunda@gmail.com', '', 'Metro Gensan Christian Fellowship', 'Blk 3 lot 1-3-5 Crest Shelter Subdivision Brgy. San Isidro, General Santos City', 'SOCSARGEN District', 'Member', 'Ptr. Allan Niel Demadara', '', 0, 'Chicken Shrimp ', 17, 'Paid'),
(301, 'gwenneth G gozon', 13, 'Female', '', '09358661961m', 'MGCF', 'blk. 3 lot 1-3-5 Crest Shelter Subd., Brgy. San Isidro, GSC', 'SOCSARGEN District', 'Member', 'ptr.allan niel j. dimadara', '', 2, 'None', 1, 'Paid'),
(302, 'Jerica Mae H. Mendez', 19, 'Female', 'jmhmendez14@yahoo.com', '09662886810', 'IBCP', 'Tionko St. Davao City', 'Davao City', 'Member', '', '', 1, 'None', 18, 'Not Paid'),
(303, 'chinlie c. ornillo', 13, 'Female', 'chinliec.ornillo@gmail.com', '', 'Metro Gensan Christian Fellowship', 'Block 3 lot 1-3-5 Crest Shelter subd gsc', 'SOCSARGEN District', 'Member', 'Allan Niel Demadara', '9466856156', 0, 'None', 2, 'Paid'),
(304, 'riezelle joy c ornillo', 15, 'Female', '', '09261705021', 'mgcf', 'General Santos city', 'SOCSARGEN District', 'Member', 'Allan Niel Demadara', '09466856156', 0, 'None', 19, 'Paid'),
(305, 'ellor salgarino', 14, 'Male', 'ellorsalgarino@gmail.com', '0905136079', 'MGCF', 'general santos city', 'SOCSARGEN District', 'Member', 'ptr.allan Niel Demadara', '', 0, 'None', 20, 'Paid'),
(306, 'james ryan b. visto', 16, 'Male', '', '09651458971', 'metro gensan christian fellowship', 'metro gensan,ahar cristail', 'SOCSARGEN District', 'Member', 'allan demadala', '', 0, 'None', 3, 'Paid'),
(307, 'Fernando Jr. C. Basilio', 17, 'Male', 'Junjunbasilio123@gmail.com', '09667388798', 'Metro Gensan Christian Fellowship', 'Metro Gensan, Hangar Crest Shelter, G.S.C.', 'SOCSARGEN District', 'Member', 'ptr. bebot demadara', '', 2, 'None', 4, 'Paid'),
(308, 'RONEL OLILA', 17, 'Male', '', '', 'TINANGISAN IBCP', 'Bgry. Aundanao, IGaCoS', 'Samal (IGACOS) District', 'Member', 'Melchisedec Camporedondo', '', 1, 'None', 5, 'Paid'),
(309, 'Angelou P. Alyawan', 18, 'Female', '', '09303786286', 'Ibcp sinobong', 'sinobong veruela agusan del sur', 'Agusan District', 'Member', 'noel marial', '', 0, 'None', 6, 'Paid'),
(310, 'Jean Del N. Delos Reyes', 14, 'Female', '', '', 'IBCP', 'Sinobong Veruela agusan del sur', 'Agusan District', 'Member', 'pstr. noel marial', '', 0, 'None', 7, 'Paid'),
(311, 'Prince Audi G. Baldonado', 13, 'Male', '', '09276027974', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pastor Dan Penano', '', 0, 'None', 1, 'Not Paid'),
(312, 'Dimple P. Tambilawan', 14, 'Female', '', '', 'CCFC', ' dacudao davao city ', 'Davao City', 'Member', '', '', 2, 'None', 8, 'Paid'),
(313, 'Paula Quettes Tambilawan', 15, 'Female', 'PaulaClaireTambilawan@yahoo.com', '', 'CCFC', 'Dacudao Davao City', 'Davao City', 'Member', '', '', 2, 'None', 9, 'Paid'),
(314, 'Evaleene Junio', 18, 'Female', 'ibalinjunio.29@gmail.com', '09050828512', 'IBCP Madaum', 'Prk. 7 Katipunan, Madaum, Tagum City', 'CENODA District', 'Member', 'Pastor Roger Lorenzo', '', 4, 'None', 10, 'Paid'),
(315, 'Angela Frez Y. Cabantao', 16, 'Female', 'angelafrezcabantao@gmail.com', '09972262879', 'IBCP Madaum', 'Prk. 7, Katipunan, Madaum Tagum City', 'CENODA District', 'Member', 'Pastor Roger Lorenzo', '', 4, 'None', 11, 'Paid'),
(316, 'Mary Rose Ane G. Zamora', 14, 'Female', '', '', 'IBCPmadaum', 'Purok 7,katipunan Madaum Tagum City', 'CENODA District', 'Member', 'Ptr. Roger D. Lorenzo', '', 0, 'None', 12, 'Paid'),
(317, 'Kem Rayan R. Sinajon', 18, 'Male', 'kimryansinajon@yahoo.com', '09051350182', 'CCFC Veterans', 'Prk. Veterans GSC', 'SOCSARGEN District', 'Member', 'Jefferson Estrella', '09183884805', 2, 'None', 13, 'Paid'),
(318, 'Kuhriane Chein E. Berino', 18, 'Female', 'kc.berino@yahoo.com', '', 'CCFC Veterans', 'Prk. Veterans Calumpang G,S,C', 'SOCSARGEN District', 'Member', 'Jefferson Estrella', '09183884805', 0, 'None', 14, 'Paid'),
(319, 'Haidee Mae P. Balagtas', 17, 'Female', 'haidee1230216@gmail.com', '09485549172', 'CCFC Veterans', 'Prrk. Veterans Calumpang G.S.C', 'SOCSARGEN District', 'Non-Member', 'Jefferson Estrella', '09183884805', 2, 'None', 15, 'Paid'),
(320, 'GIHARAH M. TAMPALAN', 15, 'Female', '', '', 'IBCP BABAK', 'ZONE 1 VILLARICA BABAK IGaCoS', 'Samal (IGACOS) District', 'Member', 'REV.BALBINO MONTAJES', '', 2, 'Shrimp ', 16, 'Paid'),
(321, 'michael bonite oliviana', 24, 'Male', 'micholiviana@yahoo.com', '09109129315', 'Christ community fellowship center', 'barangay calumpang purok veterans. general santos city', 'SOCSARGEN District', 'Member', 'Pastor Jefferson Estrella', '09183884805', 3, 'Shrimp ', 17, 'Paid'),
(322, 'jezelle joy bonjibon', 20, 'Female', 'jbonjibonji@gmail.com', '09305040839', 'ibcp babak', 'babak, samal island', 'Samal (IGACOS) District', 'Member', 'pstr. balbino montajes', '', 0, 'None', 18, 'Paid'),
(323, 'Rona Jean Quileste', 19, 'Female', 'ronajeanquileste@yahoo.com', '09387324106', 'IBCP babak', 'Zone 1, Vilalrica Babak ,District', 'Samal (IGACOS) District', 'Member', 'Pstr.Balbino Montajes', '', 2, 'None', 19, 'Paid'),
(324, 'jilan cyrus B. dasalla', 17, 'Male', 'jilancyrus@gmail.com', '09558511285', 'independent baptist church of the philippines', 'brgy.villarica', 'Samal (IGACOS) District', 'Member', 'pastor balbino montajes', '', 0, 'None', 21, 'Paid'),
(325, 'SHAIRRA JANE SALIMBOT', 15, 'Female', '', '09098169115', 'IBCP BABAK', 'BRGY. VILLARICA BABAK DISTRICT IGACOS', 'Samal (IGACOS) District', 'Member', 'PASTOR BALBINO MONTAJES', '', 0, 'None', 3, 'Paid'),
(326, 'Cris Eric S. Dasalla Jr.', 19, 'Male', 'dasallacriz@gmail.com', '09369420310', 'IBCP Babak', 'Barangay Villarica, Babak District, IGaCoS', 'Davao City', 'Member', 'Pastor Balbino Montajes', '', 0, 'None', 4, 'Paid'),
(327, 'Hera Jane E. Rafailes', 19, 'Female', 'herarafailes101@gmail.com', '09071439922', 'Independent Baptist Church Of the Philippines', 'Babak Dictrict, Samal Island Garden City of Samal', 'Samal (IGACOS) District', 'Member', 'Rev. Balbino Montajes', '', 1, 'None', 5, 'Paid'),
(328, 'Ralph Montajes', 16, 'Male', 'rmontajes2002@gmail.com', '', 'IBCP Babak', 'Brgy. Villarica, IGACOS', 'Samal (IGACOS) District', 'Member', 'Rev. Balbino Montajes', '', 2, 'Shrimp ', 6, 'Paid'),
(329, 'moannah kate galicia baldonado', 16, 'Female', '', '09325394530', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pastor Dan Penano', '', 4, 'None', 7, 'Not Paid'),
(330, 'Gillian Joanna B. Gili', 18, 'Female', '', '09168730038', 'IBCP CENTER CHURCH', 'Tionko St Davao City', 'Davao City', 'Member', 'Pstr Daniel Penano', '', 5, 'None', 8, 'Not Paid'),
(331, 'Angelie P. Aquino', 20, 'Female', 'angelieaquino222@gmail.com', '', 'IBCP BABAK', 'IBCP SAMAL ', 'Samal (IGACOS) District', 'Member', 'PASTOR BALBINO MONTAJES ', '', 2, 'None', 9, 'Paid'),
(332, 'Jone Marie M. Bonjibon', 17, 'Female', 'bonjijonejone@gmail.com', '09508570876', 'IBCP Babak', 'Brgy. Villarica, Babak, IGaCos', 'Samal (IGACOS) District', 'Member', 'Pstr. Balbino Montajes', '', 1, 'None', 10, 'Paid'),
(333, 'Tahini Gayle M. Ouano ', 17, 'Female', 'ouanotahini@gmail.com', '09095081089', 'IBCP CENTER CHURCH', 'Tionko Davao City', 'Davao City', 'Member', 'Ptr. Daniel Penano', '', 2, 'None', 11, 'Not Paid'),
(334, 'april jean madriga', 16, 'Female', 'ikuto.cheon@gmail.com', '', 'IBCP', 'Brgy. Villarica, Babak Dist., IGCS', 'Samal (IGACOS) District', 'Member', 'Rev. Balbino Montajes', '', 2, 'None', 21, 'Paid'),
(335, 'josh isaac beltran enoy ', 15, 'Male', 'joshisaacenoy@yahoo.com', '09268236486', 'independent baptist  church of the philipines', 'brgy. villrica babak dist. igacos', 'Samal (IGACOS) District', 'Member', 'pastor balbino montajes', '', 0, 'None', 13, 'Paid'),
(336, 'ranielfe pacyao', 20, 'Female', 'phingpacyao1998@gmail.com', '09100142560', 'ibcp conel', 'block 4, prk.4 brgy. conel general santos city', 'SOCSARGEN District', 'Member', 'pastor enovem villas', '', 2, '', 14, 'Paid'),
(337, 'kathleen b. solano', 16, 'Female', 'leenkathnolaso@yahoo.com', '09072518248', 'IBCP EMB', 'EMB  G.S.C', 'SOCSARGEN District', 'Member', 'MELCHOR MALLORCA', '', 0, 'None', 15, 'Paid'),
(338, 'Janicelle Momo', 19, 'Female', '', '09557434051', 'IBCP EMB', 'General Santos City', 'SOCSARGEN District', 'Member', 'Rev. Melchor Mallorca', '', 2, 'Shrimp ', 21, 'Paid'),
(339, 'claudine callao', 15, 'Female', '', '09084671580', 'independent baptist church in the philippines conel', 'prk 4 blk 4', 'SOCSARGEN District', 'Member', '', '', 0, 'None', 17, 'Paid'),
(340, 'JEFFERSON GANOT', 18, 'Male', 'ganotjefferson10@gmail.com', '09982578901', 'TRCC Inayngan', 'inayngan calinan davao city', 'Davao City', 'Member', '', '', 2, 'None', 18, 'Paid'),
(341, 'criselle faye ganot ', 15, 'Female', '', '09122573382', 'trccc inayangan', 'inayangan calinan davao city', 'Davao City', 'Member', 'brother rodolfo aloyon ', '', 3, 'None', 19, 'Paid'),
(342, 'Ivy Mae B. Camporedondo', 19, 'Female', 'ivycamporedondo10@gmail.com', '09053685631', 'IBCP Bucawe', 'Brgy. Toril, Babak Dist. Island GArden City of Samal', 'Samal (IGACOS) District', 'Member', 'Bro. Dominador Enoy', '', 1, 'None', 20, 'Paid'),
(343, 'stephen jay B. encallado', 14, 'Male', '', '09057254288', 'IBCP new murcia ', 'poblacion matanao davao del sur', 'Davao Del Sur', 'Member', 'bro. henry  L. vegafria', '', 2, 'None', 3, 'Paid'),
(344, 'Flora Mae G. Suerte', 17, 'Female', '', '', 'IBCP New Murcia ', 'New Murcia Matanao', 'Davao Del Sur', 'Member', 'Bro. Henry Vegafria', '', 0, 'None', 4, 'Paid'),
(345, 'lyssa mae agbon mata ', 16, 'Female', '', '09166595532', 'new murcia', 'matanao davao del sur', 'Davao Del Sur', 'Member', 'bro.Henry L. vegafria', '', 0, 'None', 5, 'Paid'),
(346, 'SHERYNN AGBON', 14, 'Female', '', '', 'IBCP NEWMURCIA', 'NEWMURCIA ,MATANAO DAVAO DEL SUR', 'Davao Del Sur', 'Member', 'HENRY VEGAFRIA', '', 0, 'None', 6, 'Paid'),
(347, 'Zea Joyce B. Encallado', 13, 'Female', '', '', 'Independent Baptist Churches in the Phil. new murcia', 'new murcia, matanao davao del sur', 'Davao Del Sur', 'Member', 'Bro.Henry Vegafria', '', 0, 'None', 2, 'Paid'),
(348, 'Essa P. Agbon', 18, 'Female', 'essaagbon@gmail.com', '09662214457', 'IBCP New Murcia', 'Pob. Matanao Davao del Sur', 'Davao Del Sur', 'Member', 'Bro. Henry L. Vegafria', '09094622587', 2, 'None', 7, 'Paid'),
(350, 'Kamille Ann D. Laluna', 17, 'Female', '', '09338188234', 'IBCP Center church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pstr. Dan Penano', '', 3, 'None', 8, 'Not Paid'),
(351, 'karlo luen david laluna', 21, 'Male', '', '09338521407', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Member', 'Pastor Dan Penano', '', 4, 'None', 13, 'Paid'),
(352, 'marc jevher carmelotes', 17, 'Male', 'jevcarmelotes@yahoo.com', '09121941437', 'IBCP MAGATOS', 'magatos asuncion davao del norte', 'Emmanuel District', 'Member', 'Erwin bastasa', '', 3, 'None', 10, 'Not Paid'),
(353, 'flench chainy botohan', 15, 'Female', '', '09466448595', 'ibcp magatos', 'magatos asuncion ddn.', 'Emmanuel District', 'Member', 'pastor erwin bastasa', '', 3, 'None', 11, 'Not Paid'),
(354, 'SHYRIS G. CABALLES', 13, 'Female', '', '09503357484', 'IBCP MAGATOS', 'MAGATOS ASUNCION DDN', 'Emmanuel District', 'Member', 'PSTR.ERWIN BASTSA', '', 0, 'None', 1, 'Not Paid'),
(355, 'Jerald Vale', 18, 'Male', '', '09555131048', 'IBCP MAGATOS', 'magatos asuncion davao del norte', 'Emmanuel District', 'Member', 'Erwin bastasa', '', 0, 'None', 12, 'Not Paid'),
(356, 'Mary Grace S. Tantiado', 16, 'Female', '', '09102780955', 'IBCP MAGATOS', 'Magatos Asuncion Davao del Norte', 'Emmanuel District', 'Member', 'Pastor Erwin Bastasa', '', 3, 'None', 13, 'Not Paid'),
(357, 'JENNEFER SUGUE ', 17, 'Female', '', '09100857799', 'IBCP MAGATOS', 'MAGATOS , ASUNCION', 'Emmanuel District', 'Member', 'PASTOR ERWIN BASTASA', '', 0, 'None', 21, 'Not Paid'),
(358, 'JOSHUACAMPOMANES', 21, 'Male', '', '09552965353', 'IBCP MAGATOS', 'magatos asuncion davao del norte', 'Emmanuel District', 'Member', '', '', 4, 'None', 15, 'Not Paid'),
(359, 'JEPHUNNEH ENGBINO BASTASA', 12, 'Male', '', '', 'IBCP MAGATOS', 'MAGATOS ASUNCION', 'Emmanuel District', 'Member', '', '', 0, 'None', 2, 'Not Paid'),
(360, 'Sarah Shine A. Ramos', 15, 'Female', '', '09098390461', 'IBCP Magatos', 'Magatos, Asuncion, Davao Del Norte', 'Emmanuel District', 'Member', 'pastor erwin bastasa', '', 3, 'None', 16, 'Not Paid'),
(361, 'SAMANTHA NICOLE F. AGUNOD', 13, 'Female', '', '09277001801', 'IBCP Magatos', 'Prk. 3 Magatos, Asuncion, Davao Del Norte', 'Emmanuel District', 'Member', '', '', 1, 'Chicken ', 1, 'Not Paid'),
(362, 'JIEZELLE MARIE COLONG', 21, 'Female', 'Jiezellemariecolong@yahoo.com', '09127746016', 'Tayapoc', 'Purok-5, Brgy. Aundanao, IGACOS', 'Samal (IGACOS) District', 'Member', 'Rudy Procopio', '', 5, 'Shrimp ', 17, 'Not Paid'),
(363, 'Junette Joy D. Digal', 19, 'Female', 'yamaneth99@gmail.com', '09127733279', 'IBCP Salvacion', 'Salvation, Panabo City', 'CENODA District', 'Member', 'Rey Elieto Capitle', '', 0, 'None', 18, 'Not Paid'),
(364, 'Princess Janna Balon', 14, 'Female', '', '', '09977943967', 'Salvacion, Panabo City', 'CENODA District', 'Member', 'Ptr. Elieto Capitle', '', 0, 'None', 19, 'Not Paid'),
(365, 'Mariel Beah Constantino', 12, 'Female', '', '', 'Tayapoc', 'Purok-5, Brgy. Aundanao, IGACOS', 'Samal (IGACOS) District', 'Member', 'Rudy Procopio', '', 1, 'None', 2, 'Not Paid'),
(366, 'Stiphanie E. Colong', 18, 'Female', 'Josselanie_steph@yahoo.com', '', 'IBCP Doz ', 'Babak Dist. Island Garden City of Samal', 'Samal (IGACOS) District', 'Member', 'Elmundo Callego', '', 0, 'None', 20, 'Not Paid'),
(367, 'Jane Pejana', 16, 'Female', '', '', 'Tayapoc', 'Purok-5, Brgy. Aundanao, IGACOS', 'Samal (IGACOS) District', 'Member', 'Rudy Procopio', '', 1, 'None', 3, 'Not Paid'),
(368, 'Charmie Lyn Plaza Manlangit', 21, 'Female', 'lynplaza85@yahoo.com', '09989102543', 'Independent Baptist church of the Philippines Maa Riverside', 'Purok 26 Maa Riverside', 'Davao City', 'Member', 'Asher Ramos Sr.', '', 0, 'None', 4, 'Not Paid'),
(369, 'Marla Jane M. Bantilan', 16, 'Female', 'vinjane.11@yahoo.com', '099891025', 'Independent Baptist Churches in the Phil. Maa Riverside', 'Purok 26 Maa Riverside', 'Maranatha District', 'Member', 'Asher Ramos Sr.', '', 0, 'None', 5, 'Not Paid'),
(370, 'Christha Marie Vallejos', 15, 'Female', 'christhabiebs@icloud.com', '09993261271', 'IBCP', 'Ma-a, Riverside', 'Davao City', 'Member', 'Asher Ramos Sr.', '', 0, 'None', 21, 'Not Paid'),
(371, 'Ena T Mampaondag', 16, 'Female', 'tanoena19@mampaondag', '', 'IBCP MA-A', 'Purok 26 Maa Riverside Davao City', 'Davao City', 'Member', 'Asher Ramos Sr.', '', 0, 'None', 7, 'Not Paid'),
(372, 'Janmark T. Langrio', 19, 'Male', 'jlangrio99@gmail.com', '09487500441', 'IBCP Moria', 'P-Sampaguita, Banlag, Monkayo, Compostela Valley Province ', 'Monkayo District', 'Member', 'Fernando Agbon', '', 6, 'None', 8, 'Not Paid'),
(373, 'Ritchel C. Nabayao', 19, 'Female', 'ritchelnabayao@yahoo.com', '09506578290', 'IBCP MONKAYO', 'Monkayo, Compostela Valley', 'Monkayo District', 'Member', '', '', 4, 'None', 9, 'Not Paid'),
(374, 'Faith Matambonoy', 19, 'Female', 'faithprettiest@gmail.com', '', 'Independent Baptist Churches in the Phil.', 'P-9 san jose, Monkayo, CVP', 'Monkayo District', 'Member', '', '', 2, 'None', 21, 'Not Paid'),
(375, 'Nathalie E. Llanto', 15, 'Female', 'nathaliellanto06@gmail.com', '09357036122', 'IBCP Tibagon', 'Tibagon, Pantukan Comval', 'NEDA District', 'Member', 'Pastor Dennis L. Ebe', '09058079045', 1, 'None', 11, 'Not Paid'),
(376, 'Emma Lynn B. Amaba', 17, 'Female', '', '09067253031', 'moria IBCP church', 'Moria Banlag Monkayo Compostela Valley', 'Monkayo District', 'Member', 'Fernando Agbon', '', 0, 'None', 12, 'Not Paid'),
(377, 'Jhoann Bel P. Genobatin', 16, 'Female', '', '09353182565', 'IBCP TIBAGON', 'TIBAGON,PANTUKAN,COMVAL', 'NEDA District', 'Member', 'DENNIS L. EBE', '', 2, 'Shrimp ', 13, 'Not Paid'),
(378, 'Kent Randyl S. Tilod', 16, 'Male', '', '09397439481', 'IBCP Monkayo District', 'San Jose Monkayo Compostela Valley', 'Monkayo District', 'Member', '', '', 3, 'None', 14, 'Not Paid'),
(379, 'Rosel Anne Sam-o Sanchez', 15, 'Female', '', '09955844647', 'IBCP Monkayo', 'P-9 San Jose Monkayo', 'Monkayo District', 'Member', '', '', 0, 'None', 15, 'Not Paid'),
(380, 'paul vincent p. paranaque', 17, 'Male', 'paulparanaque14@gmail.com', '09214312811', 'GRACE POINT CHRISTIAN MINISTRIES', 'CEBU', 'Cebu', 'Member', 'pastor evic', '', 0, 'Chicken ', 16, 'Not Paid'),
(381, 'Atasha Mae Ebe Penaloza', 14, 'Female', 'peatashamae@gmail.com', '09777610458', 'IBCP NEDA', 'Tibagon, Pantukan, Compostela Valley', 'NEDA District', 'Non-Member', 'Pastor Dennis Ebe', '', 0, 'None', 17, 'Not Paid'),
(382, 'JAICA WILLIAMS', 17, 'Female', 'Stemn10.williamsjaica@gmail.com', '09397407382', 'Gracepoint Christian Ministry', 'Echavez,Cebu City', 'Cebu', 'Member', 'Pastor Wilvey Pepito', '', 5, 'Shrimp ', 18, 'Not Paid'),
(383, 'kristine D. Sias', 17, 'Female', 'kristinesias@yahoo.com', '09974801910', 'GRACEPOINT CHRISTIAN MINISTRIES', 'ECHAVEZ, CEBU CITY', 'Cebu', 'Member', 'Pastor Wilvey Pepito', '', 4, 'None', 21, 'Not Paid'),
(384, 'Lorie Angel M. Sanchez', 17, 'Female', 'lorieangel@yahoo.com', '', 'GRACEPOINT CHRISTIAN MINISTRY', 'CEBU CITY', 'Cebu', 'Member', 'Pastor Evic Pepito', '', 5, 'None', 20, 'Paid'),
(385, 'Hermiechel E. Llanto', 13, 'Female', '', '639051380983', 'IBCP Tibagon', 'Tibagon, Pantukan Comval', 'NEDA District', 'Member', 'Pastor Dennis L. Ebe', '', 0, 'None', 1, 'Not Paid'),
(386, 'Nica J. Austin', 20, 'Female', '', '', 'Christ Cares Community Church', 'General Santos City', 'SOCSARGEN District', 'Member', '', '', 3, 'None', 3, 'Not Paid'),
(387, 'Jirahmae C. Pangilan', 20, 'Female', 'jirahmaepangilan@yahoo.com', '09466871179', 'Christ Cares Community Church', 'Lagao, General Santos City', 'SOCSARGEN District', 'Member', 'Ernesto Colong', '', 3, 'None', 21, 'Not Paid');
INSERT INTO `campers` (`camper_id`, `name`, `age`, `gender`, `email`, `contactno`, `churchname`, `churchaddress`, `churchdistrict`, `churchposition`, `pastorname`, `pastorcontactno`, `campsattended`, `allergies`, `groupnumber`, `paid`) VALUES
(388, 'Romelyn Jaballa Austin', 16, 'Female', 'romelyn.austin0428@gmai.lcom', '09095921485', 'Christ Cares Community Church', 'Lagao, General Santos City', 'SOCSARGEN District', 'Member', 'Ernesto D. Colong', '', 2, 'None', 5, 'Not Paid'),
(389, 'Christian M. Sam-o ', 18, 'Male', '', '', 'IBCP San Jose', 'Prk-9 San Jose,Monkayo', 'Monkayo District', 'Member', 'Pastor Joel Lantayona', '', 0, 'None', 6, 'Not Paid'),
(390, 'Jayson S. Laguru-an', 17, 'Male', 'jlaguruan@gmail.com', '09657162492', 'IBCP San Jose', 'P-9 san jose monkayo compostela valley', 'Monkayo District', 'Member', 'Pastor. Joel Lantayona', '', 5, 'None', 7, 'Not Paid'),
(391, 'Danmark Sam-o Martinez', 18, 'Male', '', '09261828386', 'IBCP SAN JOSE', 'Prk-9 San Jose , Monkayo', 'Monkayo District', 'Member', 'Pastor Joel Lantayona', '', 4, 'None', 8, 'Not Paid'),
(392, 'Grandeur Zion Ponteras Collado', 15, 'Male', '', '09453921680', 'Ibcp Socsargen', 'Lote Calumpang G.S.C', 'SOCSARGEN District', 'Member', 'Ptr. Raymond Agustin', '09507663750', 0, 'None', 21, 'Not Paid'),
(393, 'Francis Ponteras', 19, 'Male', 'francisponteras@yahoo.com', '09303425762', 'IBCP Socsargen', 'Lote, Calumpang, GSC', 'SOCSARGEN District', 'Member', 'Raymond Agustin', '09507663750', 3, 'None', 10, 'Paid'),
(394, 'JOHNMYHR S. REGALADO', 26, 'Male', '', '09452066837', 'IBCP MAKAR', 'BRGY. LABANGAL, GENERAL SANTOS CITY', 'MANA District', 'Member', 'BRO. JAY BERAME', '09056249328', 2, 'None', 11, 'Paid'),
(395, 'joel calumpong comighod', 25, 'Male', 'joel_calumpong@yahoo.com', '09100110439', 'Independent Baptist Church in the Philippines', 'ibcp carcon lagao', 'MANA District', 'Member', 'pastor jay berame', '09056249328', 0, 'None', 12, 'Paid'),
(396, 'gayle marie suansing', 22, 'Female', 'gaylemariesuansing@yahoo.com', '09076954681', 'IBCP chruch', 'barangay labangal', 'MANA District', 'Member', 'berjamie', '09056249328', 0, 'None', 13, 'Paid'),
(397, 'MARK JOHNDELLE S. REGALADO', 22, 'Male', '', '09460168949', 'IBCP MAKAR', 'BRGY. LABANGAL, GENERAL SANTOS CITY', 'MANA District', 'Member', 'BRO. JAY BERAME', '09056249328', 3, 'None', 14, 'Paid'),
(398, 'sally I. Florin', 23, 'Female', 'sally_florin@yahoo.com', '09610699', 'IBCP MAKAR', 'BRGY.LABANGAL,GENERAL SANTOS CITY', 'MANA District', 'Member', 'BRO. JAY BERAME', '090562492438', 3, 'None', 15, 'Paid'),
(399, 'MECAILA L. FERNANDEZ', 14, 'Female', '', '09452066837', 'IBCP MAKAR', 'BGRY. LABANGAL, GENERAL SANTOS CITY', 'MANA District', 'Member', 'BRO. JAY BERAME', '09056249328', 2, 'None', 16, 'Paid'),
(400, 'MICHELLE L. FERNANDEZ', 18, 'Female', '', '09978214847', 'IBCP MAKAR', 'BGRY. LABANGAL, GENERAL SANTOS CITY', 'MANA District', 'Member', 'BRO. JAY BERAME', '09056249328', 1, 'None', 17, 'Paid'),
(401, 'nina castarilla', 13, 'Female', '', '', 'IBCP san isidro church', 'san Isidro G,S,C', 'MANA District', 'Member', 'berame', '09056249328', 0, 'None', 2, 'Paid'),
(402, 'APPLE M. SALEM', 14, 'Female', '', '09099694378', 'IBCP CARCON', 'BGRY. LAGAO, GENERAL SANTOS CITY', 'MANA District', 'Member', 'BRO. JAY BERAME', '09056249328', 2, 'None', 18, 'Paid'),
(403, 'Joann Globasa', 19, 'Female', 'hanakikuchi13@gmail.com', '09227379144', 'IBCP Maranatha', 'Maniki,Kapalong', 'Davao Del Sur', 'Member', 'Pastor Richard Cuenca', '', 2, 'None', 19, 'Paid'),
(404, 'Allen Mark Era', 18, 'Male', 'allenmarkera@yahoo.com', '09078692777', 'IBCP Cambanogoy', 'Asuncion, DavNor', 'Maranatha District', 'Member', 'ptr. Nestor Magsinolog', '', 0, 'None', 20, 'Paid'),
(405, 'Karla Mae Porras', 17, 'Female', 'itsmaekarla@gmail.com', '0', 'IBCP Kapalong', 'maniki,kapalong, davao del norte', 'Maranatha District', 'Member', 'mrs. Marilyn Bag-o', '0', 0, 'None', 3, 'Paid'),
(406, 'Efie Antonio', 20, 'Male', '', '', 'Ibcp San Vicente', 'San Vicente, Asuncion, DavNor', 'Maranatha District', 'Member', '', '', 0, 'None', 4, 'Paid'),
(407, 'CRISLYN G. BAG-O', 17, 'Female', 'crislynbago@ymail.com', '', 'IBCP KAPALONG', 'Maniki, Kapalong, Davao del Norte', 'Maranatha District', 'Member', 'Sis. Marilyn Bag-o', '', 1, 'None', 5, 'Paid'),
(408, 'Lovely S. Sumayang', 21, 'Female', '', '09977417321', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 6, 'Not Paid'),
(409, 'Joana Marie H. Gerondio', 18, 'Female', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 2, 'None', 7, 'Not Paid'),
(410, 'Eriktalyn D. Dulawen', 18, 'Female', '', '09358254043', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 1, 'None', 8, 'Not Paid'),
(411, 'Paul Jeremiah F. Barnido', 21, 'Male', 'pjoktrekker@gmail.com', '09165725387', 'IBCP Center church', 'tionko ave. dvo city', 'Davao City', 'Member', 'Pstr Dan Penano', '', 8, 'None', 13, 'Not Paid'),
(412, 'Kenny Boy Sumayan', 24, 'Male', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 10, 'Not Paid'),
(413, 'Frank Joseph S. Sumayang', 18, 'Male', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 1, 'None', 11, 'Not Paid'),
(414, 'Marjames Globasa ', 19, 'Male', '', '09359935766', 'IBCP SABANGAN ', 'sabangan  sawata', 'Maranatha District', 'Member', 'Bro. Israel Globasa', '', 0, 'None', 12, 'Paid'),
(415, 'Jamesby C. Diki', 19, 'Male', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 9, 'Not Paid'),
(416, 'Trix Adrian M. Agni', 15, 'Male', 'mitrix.agni@yahoo.com', '09101090312', 'IBCP sabangan', 'sabangan sawata davao del norte', 'Maranatha District', 'Non-Member', 'Pastor isreal globasa', '', 0, 'None', 14, 'Paid'),
(417, 'Rodel Villaruz Violan', 16, 'Male', 'Rodel_violan@yahoo.com', '09354182678', 'IBCP Sabangan', 'Sabangan, Sawata Davao Del Norte', 'Maranatha District', 'Non-Member', 'Ptr. Israel Globasa Jr.', '', 0, 'None', 15, 'Paid'),
(418, 'Krizza Mae Bacol', 18, 'Female', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 16, 'Not Paid'),
(419, 'Jamefull P. Hernane1', 16, 'Male', 'jamefullhernane@gmail.com', '09484582302', 'IBCP QUARRY', 'Prk. 23 quarry cambanogoy asuncion DDN.', 'Maranatha District', 'Member', 'Pastor. Pugasan', '', 0, 'None', 17, 'Paid'),
(420, 'Ejiefer L. Ebeado', 17, 'Male', 'EjiefereEbrado@yahoo.com', '09777883378', 'IBCP Sabangan', 'DAVNOR', 'Maranatha District', 'Member', 'Israel Globasa', '', 0, 'None', 18, 'Paid'),
(421, 'Nikko Bacol', 19, 'Male', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 19, 'Not Paid'),
(422, 'Michelle Mae S. Sumayang', 27, 'Female', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 20, 'Not Paid'),
(423, 'Reigna Jhoana L. Macahidhid', 11, 'Female', '', '', 'IBCP Zamboanga City', 'Waray Tetuan, Zamboanga City', 'Zamboanga District', 'Member', 'Ptr. Michael Roma', '', 0, 'None', 1, 'Not Paid'),
(424, 'james nosotros ', 28, 'Male', 'alexandreadavide@yahoo.com', '09073292639', 'Independent Baptist Church in the Philippines', 'ibcp carcon lagao', 'MANA District', 'Member', 'pastor jay berame', '', 0, 'None', 3, 'Paid'),
(425, 'herod fabaan ', 17, 'Male', 'herodfabaan26@gmail.com', '09777498048', 'jesus christ the chief shepherd ministry', 'prk. pag-asa, mangga, tagum city', 'CENODA District', 'Member', 'Melvin Esporsado', '', 3, 'None', 4, 'Paid'),
(426, 'Hessmer Andre L. Sarajena', 19, 'Male', 'hessmerandresarajena@gmail.com', '09101015697', 'Jesus Christ the Chief Shepherd Ministry', 'Mangga, Visayan Village, Tagum City', 'CENODA District', 'Member', 'Ptr. Melvin M. Esporsado', '', 0, 'None', 5, 'Paid'),
(427, 'Barnachea, King Julicess D.', 19, 'Male', 'barnacheaking@gmail.com', '09071172789', 'Jesus Christ The Chief Shepperd Ministry', 'Manga Tagum City', 'CENODA District', 'Non-Member', 'Melvin Esporsado', '', 0, 'None', 6, 'Paid'),
(428, 'michael P. Dalauta', 22, 'Male', 'michaeldalauta@email.com', '09107110342', 'IBCP aMang', 'Manga prk pag asa visayan vallage', 'CENODA District', 'Member', '', '', 2, 'None', 7, 'Paid'),
(429, 'gemima i lomocso', 16, 'Female', '', '', 'ibcp nagas', 'neda', 'NEDA District', 'Member', 'mervin mahinay', '', 2, 'None', 21, 'Paid'),
(430, 'Micha Jhed Mahinay', 15, 'Female', '', '09650730336', 'IBCP taytayan', 'Magnaga Pantukan  Compostela VAlley', 'NEDA District', 'Member', 'Mervin Mahinay', '09752821006', 3, 'None', 9, 'Paid'),
(431, 'Wendyl Baldapan', 18, 'Male', 'wgbaldapan@gmail.com', '09102609944', 'IBCP Mangga', 'Tagum City Mangga, Visayan Village', 'COMVAL District', 'Member', 'Ptr. Melvin Esporsado', '', 2, 'None', 10, 'Paid'),
(432, 'ghuen wenceslao', 16, 'Female', '', '09557785419', 'IBCP Taytayan', 'Magnaga Pantukan Compostela Valley', 'NEDA District', 'Member', 'Mervin Mahinay', '09752821006', 0, 'None', 11, 'Paid'),
(433, 'jason c. del rosario', 18, 'Male', '', '09358773203', 'nagas', 'tambongon pantukan compostela valley', 'NEDA District', 'Member', 'eugenio hanibo', '', 2, 'None', 12, 'Paid'),
(434, 'angely calipes', 15, 'Female', '', '09108610193', 'ibcp bongabong', 'bongabong pantukan ', 'NEDA District', 'Member', 'ptr abad', '1', 1, 'None', 13, 'Paid'),
(435, 'john philip polistico', 18, 'Male', '', '09750571450', 'nagas', 'tambungon pantukan compostela valley', 'NEDA District', 'Member', 'eugenio hanibo', '', 0, 'None', 14, 'Paid'),
(436, 'jeryl soriano', 21, 'Male', '', '09755908176', 'IBCP Taytayan', 'Magnaga Pantukan Compostela Valley', 'NEDA District', 'Member', 'Mervin Mahinay', '09752821006', 0, 'None', 15, 'Paid'),
(437, 'milfred D mahinay', 17, 'Male', '', '9557785432', 'IBCP taytayan', 'pantukan comval province', 'NEDA District', 'Member', 'pastor mervin mahinay', '', 0, 'None', 16, 'Paid'),
(438, 'Neal Mackin Espares Lao', 18, 'Male', 'laonealmackin17@yahoo.com', '09235236655', 'God of Grace Christian Fellowship, Inc.', 'Cebu City', 'Cebu', 'Member', 'Henry Trocino, Jr.', '', 0, 'None', 17, 'Paid'),
(439, 'gil charles acueza', 19, 'Female', '', '', 'ibcp samal', 'penaplata', 'Samal (IGACOS) District', 'Member', '', '', 4, 'None', 18, 'Paid'),
(440, 'Jan Marie Trocino', 17, 'Female', 'janmarietrocino@gmail.com', '09224798631', 'God of Grace Christian Fellowship', 'Cebu City', 'Cebu', 'Member', 'Pastor Henry Trocino Jr.', '', 0, 'None', 19, 'Paid'),
(441, 'Bhea Mae C. Castillo', 18, 'Female', 'bheamaecastillo20@gmail.com', '09423621413', 'God of Grace Christian Fellowship', 'Cebu City', 'Cebu', 'Member', 'Pstr. Henry Trocino Jr,.', '', 0, 'Shrimp ', 20, 'Paid'),
(442, 'Kyla Carylle D. Galicia', 16, 'Female', '', '09274637124', 'IBCP Center Church', 'Tionko avenue', 'Davao City', 'Member', 'Ptr Dan Penano', '', 4, 'Shrimp ', 21, 'Not Paid'),
(443, 'Keira Cassandra Galicia', 13, 'Female', '', '9223150130', 'IBCP Center Church', 'Tionko Avenue, Davao City', 'Davao City', 'Member', 'Ptr. Dan Penano', '', 1, 'None', 2, 'Not Paid'),
(444, 'faith cabrera', 14, 'Female', '', '09263566194', 'ibcp madaum', 'prk.7 katipunan madaum tagum city', 'CENODA District', 'Member', 'pastor roger lorenzo', '', 0, 'None', 3, 'Not Paid'),
(445, 'Rodello II O. Bananola', 19, 'Male', 'rodz.bananola.3@gmail.com', '09126217687', 'Jesus Household of Faith Christian Fellowship', 'Maa, Davao City', 'Davao City', 'Member', 'Jan Bangoy', '', 2, 'None', 4, 'Not Paid'),
(446, 'Laicah Joy Amor', 17, 'Female', 'amor.lovelyjane@yahoo.com', '', 'JHFCF MAA', 'Ma-a, Davao City', 'Davao City', 'Member', 'Ptr. Conwell Rolloque', '', 5, 'None', 5, 'Not Paid'),
(447, 'Lara Joy Amor', 18, 'Female', 'larajoyamor@gmail.com', '9485902320', 'Jesus Household of Faith Christian Fellowship', 'Maa, Davao City', 'Davao City', 'Non-Member', 'Ptr. Conwel Rolloque', '', 3, 'None', 6, 'Not Paid'),
(448, 'Quennie R. Salmasan', 17, 'Female', 'quennramossalmasan@gmail.com', '09109410819', 'JHFCF', 'MAA', 'Davao City', 'Member', 'Pastor Conwell Rolloque', '', 0, '', 7, 'Not Paid'),
(449, 'Dante Amor Jr.', 12, 'Male', 'dante_amor@yahoo.com', '', 'Jesus Household of Faith Christian Fellowship', 'Maa, Davao City', 'Davao City', 'Non-Member', 'Ptr. Conwel Rolloque', '', 1, 'None', 1, 'Not Paid'),
(450, 'Carl Louwel C. Ampig', 19, 'Male', 'carllouwelampig@gmail.com', '9776725034', 'IBCP Center', 'Tionko ', 'Davao City', 'Member', '', '', 2, 'Shrimp ', 8, 'Not Paid'),
(451, 'Hannah Grace M. Bangoy', 10, 'Female', '', '', 'IBCP Magtuod', 'Magtuod, Davao CIty', 'Davao City', 'Member', 'Ptr. Benjie Bangoy ', '09092722623', 1, 'None', 2, 'Not Paid'),
(452, 'Erika Jane Alas', 12, 'Female', '', '', 'Jesus Household of Faith Christian Fellowship', 'Maa, Davao City', 'Davao City', 'Non-Member', 'Ptr. Conwel Rolloque', '', 1, 'None', 1, 'Not Paid'),
(453, 'Jhon Emmanuel S Largo', 18, 'Male', 'jan.largo15@gmail.com', '09453427075', 'Jesus Household of Faith Christian Fellowship', 'Maa Davao CIty', 'Davao City', 'Member', 'Conwel Rolloque', '', 3, 'Chicken ', 9, 'Not Paid'),
(454, 'Cheska Jane Alas ', 12, 'Female', '', '', 'Jesus Household of Faith Christian Fellowship', 'Maa, Davao City', 'Davao City', 'Non-Member', 'Ptr. Conwel Rolloque', '', 1, 'None', 2, 'Not Paid'),
(455, 'Chrishel Jane M. Bangoy', 13, 'Female', '', '', 'IBCP Magtuod', 'Magtuod, Davao CIty', 'Davao City', 'Member', 'Ptr. Benjie Bangoy ', '', 1, 'None', 1, 'Not Paid'),
(456, 'Yhesha C. Bangoy', 13, 'Female', '', '', 'IBCP Magtuod', 'Magtuod, Davao CIty', 'Davao City', 'Member', 'Ptr. Benjie Bangoy ', '', 1, 'None', 2, 'Not Paid'),
(457, 'MARK RHAINIER CASTARILLA ', 10, 'Male', '', '', 'IBCP SAN ISIDRO CHURCH', 'SAN ISIDRO GENERAL SANTOS CITY', 'MANA District', 'Member', 'JAY BERAME', '09056249328', 0, 'None', 1, 'Not Paid'),
(458, 'John Michael Bangoy', 23, 'Male', 'John_michael1209@yahoo.com', '09460044000', 'JHFCF', 'Maa Davao City', 'Davao City', 'Member', 'Conwel Rolloque', '', 1, 'None', 10, 'Not Paid'),
(459, 'Dharyl Pedida', 25, 'Male', 'pedidadharyl@gmail.com', '09103655419', 'IBCP Center Church', 'Tionko avenue', 'Davao City', 'Member', 'Pastor Dan Penano', '', 11, 'None', 11, 'Not Paid'),
(460, 'ALMAR BUHAT', 19, 'Male', 'almariexoxo20@yahoo.com', '9309696897', 'IBCP CARCOON', 'LAGAO GENSAN', 'MANA District', 'Member', 'JAY BERAME', '09056249328', 2, 'None', 12, 'Not Paid'),
(461, 'Hosea Earl D. Colong', 19, 'Male', '', '09100112625', 'Christ Cares Community Church', 'Villa Salinda St. Lagao, General  Santos City', 'SOCSARGEN District', 'Member', 'Ptr. Ernie C. Colong', '09488332369', 3, 'Shrimp Pork ', 13, 'Not Paid'),
(462, 'froilan Jhon Quimba', 18, 'Male', 'Jhonfroiquimba@gmail.com', '09263746550', 'MGCF MAGATOS IBCP', 'Prk. 5-c Magatos asuncion davao Del Norte', 'Emmanuel District', 'Member', 'Ptr. Romel Datahan', '', 4, 'None', 14, 'Not Paid'),
(463, 'Kenny Gene Robert Selotan', 16, 'Female', 'kenieselotan04@gmail.com', '09062848357', 'MGCF-IBCP', 'Prk. 5-c Magatos asuncion davao Del Norte', 'Emmanuel District', 'Member', 'Ptr. Romel Datahan', '', 4, 'None', 15, 'Not Paid'),
(464, 'raymond elicano', 22, 'Male', 'emokelicano@yaghoo.com', '09309926035', 'IBCP Makar', 'Labangal GENSAN', 'MANA District', 'Member', '', '', 2, 'Shrimp ', 16, 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupnumber` int(11) NOT NULL,
  `leader_name` varchar(191) NOT NULL,
  `leader_photo` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupnumber`, `leader_name`, `leader_photo`) VALUES
(0, 'Staff', 'Staff'),
(1, 'Arah Mitzie Campomanes', 'resources/bs_leaders/Arah_Mitzie_Campomanes.jpeg'),
(2, 'Hannah Callego', 'resources/bs_leaders/Hannah_Callego.jpg'),
(3, 'Emejoy Patayon', 'resources/bs_leaders/Emejoy_Patayon.jpg'),
(4, 'Edilyn Macosang', 'resources/bs_leaders/Edilyn_Macosang.jpg'),
(5, 'Mary Rose Zamoras', 'resources/bs_leaders/Mary_Rose_Zamoras.jpg'),
(6, 'Leah Marial', 'resources/bs_leaders/Leah_Marial.jpg'),
(7, 'Jinnesa Papacoy', 'resources/bs_leaders/Jinessa_Papacoy.jpg'),
(8, 'Amor Tabar', 'resources/bs_leaders/Amor_Tabar.jpg'),
(9, 'Clarivie Olano', 'resources/bs_leaders/Clarivie_Olano.jpg'),
(10, 'Donna Grace Sarunay\n', 'resources/bs_leaders/Donna_Grace.jpg'),
(11, 'Alden Cabase', 'resources/bs_leaders/Alden_Cabase.jpg'),
(12, 'Junsel Obon', 'resources/bs_leaders/Junsel_Obon.jpg'),
(13, 'Cristito Almendras Jr.', 'resources/bs_leaders/Cristito_Almendras.jpg'),
(14, 'Allen Jay Lara', 'resources/bs_leaders/Allen_Jay_Lara.jpg'),
(15, 'Ryan Ryod Arapoc', 'resources/bs_leaders/Ryan_Royd_Arapoc.jpg'),
(16, 'Rene Ode', 'resources/bs_leaders/Rene_Ode.jpg'),
(17, 'Rene Garcia', 'resources/bs_leaders/Rene_Garcia.jpg'),
(18, 'Ramonitu Llanos', 'resources/bs_leaders/Ramonitu_Llanos.jpg'),
(19, 'Enrico Monte', 'resources/bs_leaders/Enrico_Monte.jpg'),
(20, 'Cris John Capitle', 'resources/bs_leaders/Cris_John_Capitle.png'),
(21, 'Vincent Rell Gonzaga', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `contactno` varchar(191) NOT NULL,
  `churchname` varchar(191) NOT NULL,
  `churchaddress` varchar(191) NOT NULL,
  `churchdistrict` varchar(191) NOT NULL,
  `churchposition` varchar(191) NOT NULL,
  `pastorname` varchar(191) DEFAULT NULL,
  `pastorcontactno` varchar(191) DEFAULT NULL,
  `campsattended` int(11) NOT NULL,
  `allergies` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `name`, `age`, `gender`, `email`, `contactno`, `churchname`, `churchaddress`, `churchdistrict`, `churchposition`, `pastorname`, `pastorcontactno`, `campsattended`, `allergies`) VALUES
(60, 'Cristito Almendras', 21, 'Male', 'cristitoalmendras@yahoo.com', '09488912357', 'Independent Baptist Church in the Philippines', 'IBCP SAMAL', 'Samal (IGACOS) District', 'Staff', 'Ptr. Cristito Almendras', '09488912357', 4, 'Shrimp '),
(62, 'Warren D. Rezane', 19, 'Male', 'warrenskater1@gmail.com', '09667591163', 'IBCP Center Church', 'Tionko Avenue, Davao City', 'Davao City', 'Staff', 'Ptr. Dan Penano', '', 6, 'Chicken '),
(63, 'adonis abril angsuangco', 16, 'Male', 'nba2k14legendz@gmail.com', '09774705501', 'IBCP Center Church', 'tio', 'Davao City', 'Staff', 'Ptr. Dan Penano', '', 12, 'None'),
(64, 'Jericho D. Pacay', 21, 'Male', 'jerichoprowtf@gmail.com', '09358627694', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Staff', '', '', 5, 'Chicken Shrimp '),
(65, 'Grant G, Monterola', 17, 'Male', 'gierzagrant@gmail.com', '09752083657', 'IBCP Center Church', 'Tionko st Davao ', 'Davao City', 'Staff', 'Dan Penano', '', 5, 'None'),
(66, 'Paulo Jay E. Tafalla', 18, 'Male', 'pjtafalla@gmail.com', '9472851891', 'IBCP', 'Tionko Ave. Davao City', 'Davao City', 'Staff', 'Dan Penano', '', 2, 'None'),
(67, 'Hannah C. Callego', 26, 'Female', 'hannahcallego@yahoo.com', '09483262073', 'IBCP DOZ', 'Doz, Balet, Babak Dist. IGaCoS', 'Samal (IGACOS) District', 'Staff', 'Mr. Wilson Estrella', '', 1, 'None'),
(68, 'Arah Mitzie V. Campomanes', 20, 'Female', 'arscamps@gmail.com', '09067764574', 'IBCP Magatos', 'Magatos, Asuncion, Davao Del Norte', 'Emmanuel District', 'Staff', 'pastor erwin bastasa', '09552950375', 3, 'None'),
(69, 'EDILYN ALGUNAS MACOSANG', 26, 'Female', '', '', 'IBCP TIGPAN B', 'Tigpan, Balet, Babak, IGaCoS', 'Samal (IGACOS) District', 'Staff', '', '', 2, 'None'),
(70, 'Clarivie B. Olano', 25, 'Female', 'claie_olano@yahoo.com', '', 'Tabigue Outreach Ministry', 'Badiang, Sinawilan, Digos City', 'Davao Del Sur', 'Staff', '', '', 1, 'None'),
(71, 'Mary Rose F. Zamoras', 26, 'Female', '', '', 'Independent Baptist Churches in the Phil,  Bucawe', 'Toril, Babak District ,GACOS', 'Samal (IGACOS) District', 'Staff', '', '', 4, 'None'),
(72, 'Emejoy D. Patayon', 24, 'Female', 'emejoy_patayon@yahoo.com', '09092302849', 'IBCP Libuak', 'Prk.2, Babak Dist. IGACOS', 'Samal (IGACOS) District', 'Staff', 'Nathaniel B. Paster', '09991670019', 4, 'Chicken Shrimp '),
(73, 'CHARLOU ANNE M. ONGCOY', 23, 'Female', '', '09367290549', 'IBCP', 'Tionko Ave. Davao City', 'Davao City', 'Staff', '', '', 6, 'None'),
(74, 'JINESSA MARCOS PAPACOY', 24, 'Female', '', '09076167083', 'TINANGISAN IBCP', 'Brgy. Aundanao, Samal Dist. Island Garden City of Samal', 'Samal (IGACOS) District', 'Staff', 'Melchisedec Camporedondo', '', 2, 'None'),
(75, 'Reemy A. Mamontayao', 23, 'Female', '', '09083914041', 'IBCP Center Church ', '739-B Tionko Avenue St. Davao City', 'Davao City', 'Staff', 'Ptr. Daniel Dale Penano', '', 7, 'None'),
(76, 'Krizia Coleen D. Galicia', 19, 'Female', 'colettegalicia@gmail.com', '09420797386', 'Independent baptist Churches in the Phils. - Center Church', 'Tionko Ave., Davao City', 'Davao City', 'Staff', 'Ptr. Dan Penano', '', 6, 'None'),
(77, 'Milcah Faith B. Camporedondo', 21, 'Female', 'milcamporedondo@gmail.com', '09475874487', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Staff', 'Pastor Dan Penano', '', 4, 'None'),
(78, 'Cadano, Driena Yenn', 24, 'Female', '', '', 'Penaplata Christian Fellowship', 'Penaplata, Samal District', 'Samal (IGACOS) District', 'Staff', '', '', 5, 'Shrimp '),
(79, 'leah marial', 26, 'Female', 'marlhee5@yahoo.com', '09306225101', 'Independent Baptist Church in the Philippines', 'Veruela, agusan del sur', 'Agusan District', 'Staff', 'Pastor Noel Marial Sr.', '', 3, 'None'),
(80, 'Jean Marie E. Farase', 22, 'Female', 'jfarase@gmail.com', '09999514910', 'IBCP Center Church', 'Tionko Ave., Davao City', 'Davao City', 'Staff', 'Pastor Dan Penano', '', 3, 'None'),
(81, 'Erick Paulmitan', 22, 'Male', '', '', 'independent baptist center', 'tionko ave', 'Davao City', 'Staff', '', '', 6, 'None'),
(82, 'Enrico Alvarez Monted', 24, 'Male', 'clirt_04@yahoo.com', '09505390988', 'Independent Baptist', 'P-4 Pob. Newbataan, Compostela Valley', 'COMVAL District', 'Staff', 'Pstr. Aldrin B. Leon', '0909393672422', 4, 'None'),
(83, 'janicelle momo', 19, 'Female', 'naidamomo@gmail.com', '09557434051', 'IBCP EMB', 'General Santos  City', 'SOCSARGEN District', 'Staff', 'Rev. Melchor Mallorca', '', 2, 'Shrimp '),
(84, 'Chrisjohn Felip A. Capitle', 23, 'Male', '', '', 'IBCP Salvacion', 'Salvacion Panabo City', 'CENODA District', 'Member', 'Elieto A. Capitle', '', 3, 'None'),
(85, 'Zairiel Sarausad', 20, 'Male', 'zairiel243@gmail.com', '09955382518', 'GRACEPOINT CHRISTIAN MINISTRIES', 'Echavez, Cebu City', 'Cebu', 'Staff', 'Pastor Wilvey Pepito', '', 6, 'None'),
(86, 'Christian John Tiedra', 22, 'Male', 'christianjohntiedra@yahoo.com', '09561325754', 'Independent Baptist Churches in the Phil.', 'Tionko st. Davao City', 'Davao City', 'Staff', 'Ptr. Dan Penano', '', 5, 'Shrimp '),
(89, 'Vincent Rell Gonzaga', 24, 'Male', '', '09301262240', 'IBCP Center Church', 'Tionko St. Davao City', 'Davao City', 'Staff', 'Pastor Dan Penano', '', 5, ''),
(90, 'Allen Lara', 22, 'Male', 'allenjaylara@gmail.com', '09157174966', 'IBCP', 'Tionko Ave. Davao City', 'Davao City', 'Staff', 'Dan Penano', '', 1, 'None'),
(91, 'John Michael Bangoy', 23, 'Male', 'john_michael1209@yahoo.com', '09460044000', 'Jesus Household of Faith Christian Fellowship', 'Maa Davao City', 'Davao City', 'Staff', 'Conwel Rolloque', '', 1, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `contactno` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT '4bab592b6c6e27b58e83d68b1ab9ec6d487e13d0',
  `password_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accesstype` varchar(191) NOT NULL,
  `2FA` varchar(255) DEFAULT 'DISABLED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `contactno`, `username`, `password`, `password_updated_at`, `accesstype`, `2FA`) VALUES
(4, 'Warren', 'Rezane', '09667591163', 'admin', '4bab592b6c6e27b58e83d68b1ab9ec6d487e13d0', '2019-05-07 00:00:00', 'ADMIN', 'DISABLED');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `after_admin_adduser` AFTER INSERT ON `users` FOR EACH ROW INSERT into after_admin_adduser (added_user, added_date) VALUES (CONCAT(NEW.firstname, ' ', NEW.lastname), NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_admin_deleteuser` AFTER DELETE ON `users` FOR EACH ROW INSERT into after_admin_deleteuser (deleted_user, deleted_date) VALUES (CONCAT(OLD.firstname, ' ', OLD.lastname), NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_admin_resetpassword` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO after_admin_resetpassword (updated_user, old_password, reset_date) VALUES (CONCAT(OLD.firstname, ' ', OLD.lastname), OLD.password, NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_users_changepassword` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO after_users_changepassword (user, old_password, new_password, changed_date) VALUES (CONCAT(OLD.firstname, ' ', OLD.lastname), OLD.password, NEW.password, NOW())
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `after_admin_adduser`
--
ALTER TABLE `after_admin_adduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `after_admin_deleteuser`
--
ALTER TABLE `after_admin_deleteuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `after_admin_resetpassword`
--
ALTER TABLE `after_admin_resetpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `after_users_changepassword`
--
ALTER TABLE `after_users_changepassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campers`
--
ALTER TABLE `campers`
  ADD PRIMARY KEY (`camper_id`),
  ADD KEY `groupnumber` (`groupnumber`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupnumber`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `after_admin_adduser`
--
ALTER TABLE `after_admin_adduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `after_admin_deleteuser`
--
ALTER TABLE `after_admin_deleteuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `after_admin_resetpassword`
--
ALTER TABLE `after_admin_resetpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `after_users_changepassword`
--
ALTER TABLE `after_users_changepassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `campers`
--
ALTER TABLE `campers`
  MODIFY `camper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groupnumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campers`
--
ALTER TABLE `campers`
  ADD CONSTRAINT `campers_ibfk_1` FOREIGN KEY (`groupnumber`) REFERENCES `groups` (`groupnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
