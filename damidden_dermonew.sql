-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 12:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damidden_dermonew`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `packages` int(11) NOT NULL,
  `customProduct` varchar(20) NOT NULL,
  `query` varchar(100) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `is_paid` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `email`, `phone`, `city`, `address`, `packages`, `customProduct`, `query`, `amount`, `is_paid`, `created_at`) VALUES
(1, 'AS', '0', 0, '0', 'sadsa', 1, '13', 'sda', 'AS', 0, '2020-06-08 16:28:07'),
(2, 'AS', '0', 7688, '0', 'HHJ', 1, '111', 'SADAS', 'AS', 0, '2020-06-08 16:29:40'),
(3, 'Sony', 'kg11@gmail.com', 430958094, 'Ras Al Khaimah', 'karachi', 1, '12', 'hfjdhfadfdytesdfeayfd', '149', 0, '2020-06-08 17:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'admin', 1591639877);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `bottles` varchar(55) NOT NULL,
  `price` decimal(19,4) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` binary(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `bottles`, `price`, `city`, `address`, `question`, `created_on`, `is_deleted`) VALUES
(251, '???', 'Vibvibad22@gmail.com', '502020806', '1', '199.0000', 'Abu Dhabi', '????? ????? ?????? ', '', '2019-06-30 12:39:33', 0x30),
(253, 'ali', 'alkaabi4666@gmail.com', '504449007', '3', '599.0000', 'Abu Dhabi', 'uae', '', '2019-06-30 13:19:03', 0x30),
(255, 'ali', 'alkaabi4666@gmail.com', '504449007', '3', '599.0000', 'Abu Dhabi', 'uae', '', '2019-06-30 13:20:27', 0x30),
(257, 'Yaser ', 'Yasseralzoubi@gmail.com', '551898622', '1', '199.0000', 'Abu Dhabi', 'Khaldiyh ', '', '2019-06-30 13:33:17', 0x30),
(259, 'Mohammad ', 'M7060707@hotmail.com', '0588888690', '1', '199.0000', 'Dubai', 'Albrsh 3', 'I ordered mor than 3 taim no body coll me ', '2019-06-30 16:27:43', 0x30),
(261, 'raja waqar', 'gr8_vickt@hotmail.com', '564098627', '1', '199.0000', 'Dubai', 'bur dubau', '', '2019-07-02 09:19:26', 0x30),
(263, 'Mohammad ', 'M7060808@hotmail.com', '0507060808', '1', '199.0000', 'Dubai', 'Albrsh 3', '', '2019-07-03 02:36:04', 0x30),
(265, 'madhuvasant prabhu', 'madhuvasantprabhu@gmail.com', '506641978', '1', '199.0000', 'Dubai', 'Bank melli iran, ground floor, baniyas Street, al sabkha, deira, Dubai ', '', '2019-08-05 02:37:15', 0x30),
(267, 'Joseph', 'ncthprojectmanager.neb@gmail.com', '501109757', '1', '199.0000', 'Abu Dhabi', 'ADNOC neb, accommodation complex, Al Dhabiya, Abu Dhabi UAE', '', '2019-08-05 08:29:18', 0x30),
(269, 'Ruby', 'elsatefera51@gmail.com', '559917209', '1', '199.0000', 'Ras Al Khaimah', 'Higher college technology for men', '', '2019-08-05 08:58:31', 0x30),
(271, 'Abdelrhman omran', 'Asma-almutawa-20@hotmail.com', '0506493355', '1', '199.0000', 'Fujairah', 'Kalba', '', '2019-08-05 12:53:46', 0x30),
(273, 'Juan Carlos Patiño Echavarria', 'juaminana1709@hotmail.com', '0567623083', '2', '399.0000', 'Abu Dhabi', 'juaminana1709@hotmail.com', 'Is posible Delivery nex saturday un abudabi mall fron gate pleace no failed me', '2019-08-06 01:13:15', 0x30),
(275, 'Rejimon Mohanan ', 'reji805@yahoo.com', '501042666', '1', '199.0000', 'Dubai', 'Al Qusais ', 'If it is buy one get one free', '2019-08-07 13:00:50', 0x30),
(277, 'Samir', 'Samir_mecheng@hotmail.com', '502456786', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi al Reem island ', '', '2019-08-07 13:24:56', 0x30),
(279, 'Sathisha', 'sksulkeri@gmail.com', '559433231', '1', '199.0000', 'Dubai', '1-8,flat No.608,Al khail gate, al qouz, Dubai', '', '2019-08-07 23:15:54', 0x30),
(281, 'Srirangarajan', 'bns.rajan@gmail.com', '527475660', '1', '199.0000', 'Dubai', 'M3-203, Al Hudaiba, al wasl building , Dubai', 'Any return policy', '2019-08-08 06:54:52', 0x30),
(283, 'Srirangarajan', 'bns.rajan@gmail.com', '527475660', '1', '199.0000', 'Dubai', 'M3-203, Al Hudaiba, al wasl building , Dubai', '', '2019-08-08 06:55:27', 0x30),
(285, 'Srirangarajan', 'bns.rajan@gmail.com', '527475660', '1', '199.0000', 'Dubai', 'M3-203, Al Hudaiba Al wasl building, Dubai', '', '2019-08-08 06:57:06', 0x30),
(287, 'Mohammed', 'M.als66776@gmail.com', '544322243', '1', '199.0000', 'Abu Dhabi', 'Aasss', 'Alain', '2019-08-08 08:51:41', 0x30),
(289, 'Oscar Moreno', 'racso_onerom@yahoo.com.ph', '565773495', '1', '199.0000', 'Dubai', 'Dm 302, Building no6, Al Satwa Dubai', '', '2019-08-09 19:56:37', 0x30),
(291, 'Naeem Haider', 'Shozab_ian@yahoo.com', '551212679', '1', '199.0000', 'Abu Dhabi', 'Diamond bright car care mussaffha M26 Abudahbi', 'No', '2019-08-09 22:49:37', 0x30),
(293, 'Afzal', 'Mafzal770@gmail.com', '503098781', '1', '199.0000', 'Sharjah', 'Sharjha nassreya', '', '2019-08-10 03:11:35', 0x30),
(295, 'Sathish', 'sksulkeri@gmail.com', '553323090', '1', '199.0000', 'Dubai', '1-8, flat no.608, Al khail gate, Al qouz', '', '2019-08-10 03:41:50', 0x30),
(297, 'Shakers zada', 'zada7225k@gmail.com', '527302928', '1', '199.0000', 'Dubai', 'Concord tower media city Dubai ', '', '2019-08-10 03:51:56', 0x30),
(299, 'Desbele Berhe hagos ', 'desbeleng@gmail.com', '0547122410', '2', '399.0000', 'Abu Dhabi', 'Musaffah shabby 10 ner Al alm supermarket ', 'If I buy 2  2 free yes ', '2019-08-10 08:41:31', 0x30),
(301, 'Imad Huda', 'imadhuda@gmail.com', '565572790', '1', '199.0000', 'Sharjah', 'Gulshan karachi', NULL, '2019-08-10 09:43:49', 0x30),
(303, 'Mumtaz', 'Malaal016@gmail.com', '0504093422', '1', '199.0000', 'Sharjah', 'Al khan corniche,Danat al khan tower 1508', '', '2019-08-10 10:31:14', 0x30),
(305, 'Faye de Lumen', 'fdelumen@yahoo.com', '506575209', '1', '199.0000', 'Dubai', 'Khansaheb 1 Dubai Silicon Oasis', 'When is the delivery date?\r\nThank you.', '2019-08-10 12:30:05', 0x30),
(307, 'Reem', 'Uaead12345@hotmail.com', '568792912', '1', '199.0000', 'Abu Dhabi', 'Abudhabi- baniyas-east8- villa#2- near lulu hypermarket.', '', '2019-08-10 15:49:54', 0x30),
(309, 'Ramon Santelices', 'ramonsantelices96@gmail.com', '505804576', '1', '199.0000', 'Abu Dhabi', '21st murror Rd backside of KFC abdulrahman laundry room 301 3rd flt', 'Deliver the goods on Saturday 10am to 4pm', '2019-08-10 22:43:29', 0x30),
(311, 'Arash', 'Arashsharifee9@gmail.com', '059270608', '1', '199.0000', 'Abu Dhabi', 'alain sanayia in lolo mrkit', '', '2019-08-11 00:46:28', 0x30),
(313, 'arash', 'Arashsharifee9@gmail.com', '509270608', '1', '199.0000', 'Abu Dhabi', 'Alain snayia lolo mrkit', 'tank', '2019-08-11 00:48:42', 0x30),
(315, 'Jitendra Padhi', 'jkpadhi1287@gmail.com', '569038762', '1', '199.0000', 'Dubai', 'Sonapur bus stand', 'Any sidifect', '2019-08-11 02:55:39', 0x30),
(317, 'Farooq', 'S.farooqi46@gmail.com', '556281811', '1', '199.0000', 'Dubai', 'Al barha', '', '2019-08-11 03:50:14', 0x30),
(319, 'Javed Iqbal', 'javediqbal2004s@gmail.com', '505885709', '1', '199.0000', 'Dubai', 'Sharjah industrial area 2', 'If its not work', '2019-08-11 05:07:26', 0x30),
(321, 'Mohammad hamid', 'hamid8991@gmail.com', '502151876', '1', '199.0000', 'Sharjah', 'Buteena', '', '2019-08-11 05:31:40', 0x30),
(323, 'Jassem ', 'Jassim1881@hotmail.com', '504251515', '1', '199.0000', 'Dubai', 'Alqouz1 near irane clinc', '', '2019-08-11 08:28:59', 0x30),
(325, 'Jassem ', 'Jassim1881@hotmail.com', '504251515', '1', '199.0000', 'Dubai', 'Alquoz 1', '', '2019-08-11 08:31:00', 0x30),
(327, 'Hamid', 'hamid8991@gmail.com', '502151876', '1', '199.0000', 'Sharjah', 'Buteena', '', '2019-08-11 08:40:26', 0x30),
(329, 'Saeed Akbar Khan', 'saeedakbarkhan90@gmail.com', '527589691', '1', '199.0000', 'Dubai', 'Al Quoz 1 street 6C Villa - 29', 'Is it really works coz most of online orders quielity is not good??', '2019-08-11 09:21:33', 0x30),
(331, 'Salah', 'Eddin22@gmail.com', '507968288', '1', '199.0000', 'Abu Dhabi', 'Al ain foha street 13 vila 9', '', '2019-08-11 11:23:07', 0x30),
(333, 'Mohammed Ghouse ', 'rider.nawaz@gmail.com', '0559137435', '1', '199.0000', 'Dubai', 'rider.nawaz@gmail.com', '', '2019-08-11 12:44:05', 0x30),
(335, 'Yousuf almulla ', 'Yousuf.almulla@yahoo.com', '0504981101', '1', '199.0000', 'Dubai', 'Dubai / Muhaisnah / 3.  Street B7 Villa No. 30', '', '2019-08-12 00:25:35', 0x30),
(337, 'Hassan', 'Hassanoy@gmail.com', '559090557', '1', '199.0000', 'Ajman', '??????? ??????', NULL, '2019-08-12 00:57:16', 0x30),
(339, 'Mohammed Ghouse ', 'rider.nawaz@gmai.com', '0559137435', '1', '199.0000', 'Dubai', 'rider.nawaz@gmai.com', '', '2019-08-12 02:53:36', 0x30),
(341, 'Ali ', 'Akhussain141@gmail.com', '503663698', '1', '199.0000', 'Fujairah', 'Kalba corniche road street no1 villa no 1', '', '2019-08-12 05:16:54', 0x30),
(343, 'Salem hasan Mubarak al Khulaqi ', 'salem.alkhulaqi@odeontours.com', '508455563', '1', '199.0000', 'Dubai', 'Business bay clover bay 909', '', '2019-08-12 05:43:22', 0x30),
(345, 'Amer', 'Amerbinshaq.11@hotmail.com', '508933445', '1', '199.0000', 'Abu Dhabi', 'Behind the cooperactive of bani yas ', '', '2019-08-12 05:43:33', 0x30),
(347, 'Jitendra Padhi', 'jkpadhi1287@gmail.com', '569038762', '1', '199.0000', 'Dubai', '32 8b St sonapur bus stand', '', '2019-08-12 05:53:46', 0x30),
(349, 'Sudesh', 'Sudesh1625madushanka@gmail.com', '0526523475', '1', '199.0000', 'Dubai', 'Al quoz 1', '', '2019-08-12 05:54:57', 0x30),
(351, 'Sudesh', 'Sudesh1625madushanka@gmail.com', '0526523475', '1', '199.0000', 'Dubai', 'Al quoz ', '', '2019-08-12 05:56:57', 0x30),
(353, '???? ??????', 'tawakkal246@gmail.com', '0507735762', '1', '199.0000', 'Abu Dhabi', ' ????? ???????', NULL, '2019-08-12 06:12:01', 0x30),
(355, 'Davinder singh', 'yaardasi.143@gmail.com', '565589613', '1', '199.0000', 'Dubai', 'Dotco 1 camp', '', '2019-08-12 07:45:05', 0x30),
(357, 'Hafeez', 'Ahafeezmirza@yahoo.com', '557359155', '1', '199.0000', 'Dubai', 'Dip 2', '', '2019-08-12 08:53:56', 0x30),
(359, 'Ah mirza', 'Ahafeezmirza@yahoo.com', '557359155', '1', '199.0000', 'Dubai', 'Dip2', '', '2019-08-12 08:55:03', 0x30),
(361, 'Ameena ', 'Ameena4546060@gmail.com', '0504546060', '1', '199.0000', 'Ajman', 'Mosherf', '', '2019-08-12 09:55:56', 0x30),
(363, 'Ameena ', 'Ameena4546060@gmail.com', '0504546060', '1', '199.0000', 'Ajman', 'Mosherf', '', '2019-08-12 09:57:29', 0x30),
(365, 'Irfan', 'Irfanirffy777@gmail.com', '525939145', '1', '199.0000', 'Dubai', 'Bussiness bay apposite metro  station  near secound home restaurant..escape tower 17 th floor 1702 flat', 'No ', '2019-08-12 10:57:47', 0x30),
(367, 'Ayesha', 'alshaibaha@gmail.com', '527007777', '1', '199.0000', 'Dubai', 'Nad al hamar , street 29, villa 20', NULL, '2019-08-12 11:13:50', 0x30),
(369, 'Irshad ', 'irshadahmedlaghari@gmail.com', '555798173', '1', '199.0000', 'Abu Dhabi', 'Alsaad', '', '2019-08-12 12:51:03', 0x30),
(371, 'Bala Subramanian', 'saranbala999@gmail.com', '0504225919', '1', '199.0000', 'Dubai', 'Khalidiya', '', '2019-08-12 14:23:43', 0x30),
(373, 'yasir ', 'sr90030@gmail.com', '553839590', '1', '199.0000', 'Dubai', 'al qouz 4 naer al khal mall afaq billding room no 118', '', '2019-08-12 15:28:11', 0x30),
(375, 'Malik ', 'Shamsawan69@yahoo.com', '504047742', '1', '199.0000', 'Dubai', 'Za’abeel', 'If it will not work as per advertisement then will how to return and take back money \r\n??????', '2019-08-12 15:46:15', 0x30),
(377, 'Nasim', 'Alsamiras@gmail.com', '0509313615', '1', '199.0000', 'Dubai', 'Valantainflowers', 'No', '2019-08-12 18:30:30', 0x30),
(379, 'Nazim', 'Alsamiras@gmail.com', '0509313615', '1', '199.0000', 'Ras Al Khaimah', 'Valantaine flowers', '', '2019-08-12 18:31:46', 0x30),
(381, 'Eduardo Reyes', 'Gimenaeduardo@gmail.com', '505011603', '1', '199.0000', 'Dubai', 'Rm.201 Ss Lootha Building Al Barsha 1', '', '2019-08-12 23:40:50', 0x30),
(383, 'Tanveer Afzal ', 'tanveerafzal.977@gmail.com', '507878821', '1', '199.0000', 'Dubai', 'Near Mafi super market near madical fitnes center', 'Do you have dark brown or not ', '2019-08-13 00:00:57', 0x30),
(385, 'Faisal', 'Tahirsrudio1969@gmail.com', '555141714', '1', '199.0000', 'Abu Dhabi', 'Behind taqwa masjid sanaiya alain', 'This i can use my beard also', '2019-08-13 01:21:30', 0x30),
(387, 'muhammed wahid', 'muhammedwahid25@gmail.com', '556626498', '1', '199.0000', 'Abu Dhabi', 'Al ain al yahar', '', '2019-08-13 06:49:53', 0x30),
(389, 'Aishah aldhanhani ', 'doyah09@gmail.com', '506498998', '1', '199.0000', 'Fujairah', 'Dibba Al-Fujairah  alrefa', '', '2019-08-13 06:59:10', 0x30),
(391, 'Varughese ', 'joymavanal@gmail.com', '563284622', '1', '199.0000', 'Dubai', 'OPP karama center', '', '2019-08-13 07:42:56', 0x30),
(393, 'Rizwan', 'rizwanansir@gmail.com', '509950852', '1', '199.0000', 'Dubai', 'Flat 707 blk A dar al khaleej, opposite matajer mall, al khan, sharjah', '', '2019-08-13 11:59:51', 0x30),
(395, 'Taj Afridi', 'Freshfreights007@gmail.com', '558413124', '1', '199.0000', 'Sharjah', 'Al Ghubaiba sharjah ', '', '2019-08-13 12:32:45', 0x30),
(397, 'Yousuf Ahmed', 'jamaldub5448@hotmail.com', '545477445', '1', '199.0000', 'Ajman', 'Sheikh Mohd bin zayd street', 'Before delivery call me please', '2019-08-13 17:01:52', 0x30),
(399, 'Nasim Shah ', 'Nasimshah@7417gmail.com', '506917417', '1', '199.0000', 'Dubai', 'Madenzyed ', '', '2019-08-13 18:12:14', 0x30),
(401, 'Rustam khan', 'rk4981942@gmail.com', '551010174', '1', '199.0000', 'Dubai', 'Alain sanaya ', 'no', '2019-08-14 04:35:22', 0x30),
(403, 'ola', 'lekanpraise2005@yahoo.com', '553074038', '1', '199.0000', 'Dubai', 'HSBC TOWER DOWNTOWN DUBAI', '', '2019-08-14 05:52:01', 0x30),
(405, 'Billalhossain', 'Milonbagum6@gmail.com', '0589451453', '1', '199.0000', 'Abu Dhabi', '54th street al yahar', '', '2019-08-14 07:07:04', 0x30),
(407, 'Billalhossain', 'Milonbagum6@gmail.com', '0589451453', '1', '199.0000', 'Abu Dhabi', '54th street al yahar', '', '2019-08-14 07:09:25', 0x30),
(409, 'Adeeb ', 'adeeb.ak63@gmail.com', '556248460', '1', '199.0000', 'Abu Dhabi', 'Golf Garden Khalifa A', 'Is this original or duplicate is there any guarantee for returned if ', '2019-08-14 07:27:04', 0x30),
(411, 'Fakher Alam', 'fakheralam@600yahoo.com', '557422005', '1', '199.0000', 'Dubai', 'palm jumira', '', '2019-08-14 07:56:57', 0x30),
(413, 'Asif', 'Inayatullahnasimi@gmail.com', '544400733', '1', '199.0000', 'Sharjah', 'Industrial area 2 ', '', '2019-08-14 08:37:24', 0x30),
(415, 'Arash', 'Arashsharifee9@gmail.com', '0509270608', '1', '199.0000', 'Abu Dhabi', 'Alain sanayia lolo mrkit ', '', '2019-08-14 08:58:26', 0x30),
(417, 'Ruby', 'elsatefera51@gmail.com', '561546553', '1', '199.0000', 'Ras Al Khaimah', 'Al Burerat', '', '2019-08-14 09:47:19', 0x30),
(419, 'Zia khan', 'Zewekhan@gmail.com', '0581707383', '1', '199.0000', 'Ajman', 'Allh or Towar', '', '2019-08-14 16:38:56', 0x30),
(421, '???? ?????? ', 'ssllmiman@icloud.com', '0501207096', '1', '199.0000', 'Abu Dhabi', '?????? ??????? B', '', '2019-08-14 16:51:31', 0x30),
(423, 'Hanan ', 'Cbgroup@gmail.com', '0582281913', '1', '199.0000', 'Sharjah', ' Al entifada street Al majaz2 Al Amal billding flatt 805', NULL, '2019-08-14 17:14:16', 0x30),
(425, 'Hadeel Sultan', 'hadeelsultan589@hotmail.com', '529062004', '1', '199.0000', 'Dubai', 'Al fattan currency house building 1 level 7 office 706. Dubai international FINANCIAL Centre ', '', '2019-08-14 17:35:13', 0x30),
(427, 'Amal', 'Amalalabbar999@gmail.com', '0505585598', '1', '199.0000', 'Dubai', 'First Al Khawaneej Road 88 Villa 51', '', '2019-08-14 18:44:21', 0x30),
(429, 'MOHAMED AIT TAMA ALI', 'aittamaali@gmail.com', '505485141', '1', '199.0000', 'Abu Dhabi', 'Mohamed bn zaid z8 villa 21', '1', '2019-08-14 19:49:58', 0x30),
(431, 'Surinder Singh Bhamra ', 'Surinder.singh@depa.com', '0509384526', '1', '199.0000', 'Abu Dhabi', 'Eldiar furniture mfg and deco Abu Dhabi mussafah sanayya sector 21,plot 22,street 10', 'Buy 1 get 1 free offer', '2019-08-15 00:23:48', 0x30),
(433, '????', 'hala22192010@gmail.com', '503208665', '1', '199.0000', 'Abu Dhabi', '????? ?', '', '2019-08-15 00:29:05', 0x30),
(435, 'Mian Ali Husnain ', 'mahusnain@gmail.com', '547712699', '1', '199.0000', 'Abu Dhabi', 'Al Sahel Tower, Corniche Road, Khaldiya ', 'How much time will take to deliver', '2019-08-15 00:45:48', 0x30),
(437, 'Raziq', 'abdulraziq19@gmail.com', '505076095', '1', '199.0000', 'Dubai', 'abdulraziq19@gmail.com ', '', '2019-08-15 02:44:25', 0x30),
(439, 'Mohibur Rahman', 'mohibur1414@gmail.com', '501414866', '1', '199.0000', 'Sharjah', 'Sharjah  al Yarmuk ', 'No', '2019-08-15 05:42:04', 0x30),
(441, 'Khaled saeed', 'Alzamhri_88@hotmail.com', '559990996', '1', '199.0000', 'Ras Al Khaimah', 'Shamal', '', '2019-08-15 06:05:02', 0x30),
(443, 'Quiliano mijos', 'quilianomijos@gmail.com', '557442598', '1', '199.0000', 'Dubai', 'Al wsl road, jumeira 1 alboom diving', '199 aed for two bottle \r\nBuy 1 take 1 right?', '2019-08-15 06:49:52', 0x30),
(445, 'RAMESAN ', 'ramesanm@yahoo.co.in', '564951841', '1', '199.0000', 'Dubai', 'Karama,Fathima 313, Nearly Park Regis Hotel ', '', '2019-08-15 07:43:56', 0x30),
(447, 'Alamgir', 'Niloynil1983@gmail.com', '557905596', '1', '199.0000', 'Sharjah', 'Al yarmook sharjah', 'Its good ', '2019-08-15 12:22:56', 0x30),
(449, 'Reem', 'Uaead12345@hotmail.com', '568792912', '1', '199.0000', 'Abu Dhabi', 'Abudhabi- baniyas- east 8 - villa#2 - near lulu hypermarket ', '', '2019-08-15 20:32:38', 0x30),
(451, 'Sivadasan ', 'siva74066@gmail.com', '559662264', '1', '199.0000', 'Dubai', 'RAK', '', '2019-08-16 00:07:19', 0x30),
(453, 'Ayaz khan ', 'Kayaz344@yahoo.com', '551422130', '1', '199.0000', 'Dubai', 'Bay square water building number one office number 402', '', '2019-08-16 01:05:13', 0x30),
(455, 'Parminder Singh', 'Param.aha@gmail.com', '554485838', '1', '199.0000', 'Dubai', '406 tulip oasis 2,  silicon oasis', 'It does not colour the skin ?? I need dark natural brown not black', '2019-08-16 04:49:21', 0x30),
(457, 'Latifa', 'Latifa66_uae@hotmail.com', '1504074405', '1', '199.0000', 'Sharjah', 'Sharjah algarYan2', '', '2019-08-16 09:57:43', 0x30),
(459, 'Nasar khan ', 'Nasirkhanpathan920@gmail.com', '504644903', '1', '199.0000', 'Sharjah', 'Sharjah industry 10', '', '2019-08-16 12:54:16', 0x30),
(461, 'Laurina gama', 'Laurina.gama@gmail.com', '501464564', '1', '199.0000', 'Dubai', 'Karama behind lulu hypermarket . Shk mariam build 2 flat no.7', '', '2019-08-16 14:21:05', 0x30),
(463, 'Lauriana gama ', 'Laurina.gama@gmail.com', '501464564', '1', '199.0000', 'Dubai', 'Karama behind lulu hypermarket. Shk mariam building 2 flat no.7', '', '2019-08-16 14:22:48', 0x30),
(465, 'Murshid Alamoody ', 'Murshid.alamoody@gmail.com', '502173411', '1', '199.0000', 'Ajman', 'Zahra aljasoor Building Juton flat 109', '', '2019-08-16 15:46:58', 0x30),
(467, 'Khuram', 'M.younis_sdi@live.com', '553717271', '1', '199.0000', 'Dubai', 'Al Qouz 3', '', '2019-08-16 17:45:12', 0x30),
(469, 'Muhammad shafiq ', 'shafiqzafar@icloud.com', '505810346', '1', '199.0000', 'Abu Dhabi', 'Shabir m10', 'U write get 1 &1 free', '2019-08-17 00:30:12', 0x30),
(471, 'Abdulrahiman ', 'rahiman15@gmail.com', '555955642', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi Badazaid Al Kairu Market Baniyas Al far ladies tailoring shop No. 5', 'No', '2019-08-17 03:00:30', 0x30),
(473, 'Mohamed ', 'Mohd1976uae@gmail.com', '504441448', '1', '199.0000', 'Abu Dhabi', 'Alshamkah', '', '2019-08-17 06:43:25', 0x30),
(475, 'Jamil', 'Jamiltech999@gmail.com', '0504763704', '1', '199.0000', 'Dubai', 'Al quoz 02', '', '2019-08-17 10:25:49', 0x30),
(477, 'Nasar', 'Abdulnasarpk@gmail.com', '524548313', '1', '199.0000', 'Dubai', 'Al nahda 2. Dubai', '', '2019-08-17 12:53:19', 0x30),
(479, 'Shamis', 'hamodigharkan@gmail.com', '509011151', '1', '199.0000', 'Sharjah', 'Dhaid - sharjha', 'hamodigharkan@gmail.com', '2019-08-17 15:37:40', 0x30),
(481, 'Marlon', 'Marlon1143@yahoo.com', '551950496', '1', '199.0000', 'Dubai', 'Alwusais', '', '2019-08-18 01:39:23', 0x30),
(483, 'Rafeek', 'rafeeknalak@gmail.com', '0569993370', '1', '199.0000', 'Dubai', 'Dubai al qusaise Damascus Road ', '', '2019-08-18 11:34:43', 0x30),
(485, 'Hamid', 'hamid8991@gmail.com', '502151876', '1', '199.0000', 'Sharjah', 'Butina', '', '2019-08-18 13:11:37', 0x30),
(487, 'Arshad ', 'arshad.baig60@yahoo.com', '553853394', '1', '199.0000', 'Dubai', 'Dubai ', 'This will be permanent make hair black. ', '2019-08-18 13:24:40', 0x30),
(489, 'rustam khan', 'rk4981942@gmail.com', '551010174', '1', '199.0000', 'Dubai', 'Alain sanaya ', 'no', '2019-08-19 09:11:08', 0x30),
(491, 'Hana', 'Hanaalmadani@icloud.com', '506179940', '1', '199.0000', 'Dubai', 'Loft east tower burj khalifa area level 24 flat 2406', '', '2019-08-19 11:37:13', 0x30),
(493, 'Aniceto', 'Tdelumen@yahoo.com', '504507846', '1', '199.0000', 'Dubai', 'Khansaheb 1 bldg. dubai silicon oasis. Dubai', '', '2019-08-19 12:03:35', 0x30),
(495, 'Raja', 'Rapaka99@yahoo.co.in', '502818749', '1', '199.0000', 'Dubai', 'Bussiness bay', '', '2019-08-19 12:21:09', 0x30),
(497, 'Ishfaq Ahmed ', 'Ishfaq9999@yahoo.com', '0506575167', '1', '199.0000', 'Dubai', 'Dubai al Nahda ', '', '2019-08-19 12:26:03', 0x30),
(499, 'Philip Gomes', 'philipgomes10@gmail.com', '0508459635', '1', '199.0000', 'Dubai', 'Al Amir building. 106. Satwa square. Satwa ', '', '2019-08-19 12:32:54', 0x30),
(501, 'Majid', 'Butt00752@gmail.com', '0588275004', '1', '199.0000', 'Sharjah', '2 number industry area near igloo ice cream ', 'Delivery free', '2019-08-19 12:35:17', 0x30),
(503, 'Rawdha ', 'raw4ee@hotmail.com', '0563130343', '1', '199.0000', 'Abu Dhabi', 'Bain aljessrain, opposite Kuwait embassy, villa 28, street 17(lamha street)', '', '2019-08-19 12:49:47', 0x30),
(505, '????? ', 'eman@samplemail.net', '055533682', '1', '199.0000', 'Abu Dhabi', 'Alain ', 'No ! ', '2019-08-19 13:53:01', 0x30),
(507, 'Sultan', 'alnuaimi83vip@hotmail.com', '509337009', '1', '199.0000', 'Abu Dhabi', 'Khalifa A', 'Buy one and get the second for free', '2019-08-19 14:21:35', 0x30),
(509, 'Cyriacus', 'cy.anyanwu05@yahoo.com', '543630748', '1', '199.0000', 'Abu Dhabi', 'Building c 26, shabiya 10', 'Behind Biryani palace Restaurant', '2019-08-19 18:02:29', 0x30),
(511, 'Cyriacus', 'cy.anyanwu05@yahoo.com', '543530748', '1', '199.0000', 'Abu Dhabi', 'Building C 26, Shabiya 10', 'Behind Biryani palace Restaurant', '2019-08-19 18:06:00', 0x30),
(513, 'Rahma Ismael Guedi', 'mudhirmk@gmail.com', '7156676884', '1', '199.0000', 'Sharjah', 'King Faisal Rd. Al Habtoor building, A-Block 403', '', '2019-08-19 18:46:18', 0x30),
(515, 'Khalid', 'Gtr.987@hotmail.com', '543131141', '1', '199.0000', 'Umm Al Quwain', 'Al rmla', '', '2019-08-20 08:42:03', 0x30),
(517, 'Martin paulose', 'Martinoaul07@gmail.com', '552879160', '1', '199.0000', 'Abu Dhabi', 'Alain .. alain hospital', '', '2019-08-20 09:09:59', 0x30),
(519, 'Benny Fru', 'ebenfru@yahoo.fr', '507369048', '1', '199.0000', 'Abu Dhabi', 'ebenfru@yahoo.fr', '', '2019-08-20 13:37:21', 0x30),
(521, 'Rosemarie Malantic', 'rmalantic904@yahoo.com.ph', '501978517', '1', '199.0000', 'Dubai', '16C St. Beside Niwah Residence, Jumeirah 1,Dubai UAE', 'How many times you need to use it? Is there no allergic reaction? Does it lasts long? ', '2019-08-20 22:58:30', 0x30),
(523, 'Alexander Almazan', 'almazan_alex58@yahoo.com', '502419538', '1', '199.0000', 'Abu Dhabi', 'Villa 16, Al Melayha st,, Bein Al Jesrein, Abu Dhabi', '', '2019-08-21 02:01:20', 0x30),
(525, 'Khamis majed ', 'h.salem4057@yahoo.com', '0506317476', '1', '199.0000', 'Abu Dhabi', 'Al Rahba m33', 'I read buy 1 and get 1free.', '2019-08-21 03:26:59', 0x30),
(527, 'Rajani', 'rajani_anilkumar@yahoo.co.in', '505591780', '1', '199.0000', 'Abu Dhabi', 'Mussafah M44', '', '2019-08-21 06:07:42', 0x30),
(529, 'Muhmmad ', 'Yjaved907@gmail.com', '501843277', '1', '199.0000', 'Dubai', 'Satwa ', 'Warranty ', '2019-08-21 08:49:09', 0x30),
(531, 'Jayakumar janardhanan', 'JayakumarJanardhanannair@gmail.com', '569016374', '1', '199.0000', 'Sharjah', 'Sharjah, maysaloon. Kuwait street', 'Any side effects? ', '2019-08-21 12:59:54', 0x30),
(533, 'Idrees ahmed', 'Khanzarak635@gmail.com', '557646509', '1', '199.0000', 'Sharjah', 'Erya 3', 'I need 2maro this one', '2019-08-21 15:24:52', 0x30),
(535, 'Joy', 'joysiaps@yahoo.com', '568097217', '1', '199.0000', 'Abu Dhabi', '35 Hamdan  Abu Dhabi', '', '2019-08-21 15:48:05', 0x30),
(537, 'Sabin thapa ', 'Sabinthapa263@gmail.com', '0561304799', '1', '199.0000', 'Abu Dhabi', 'Qreen al Aish adnoc 663', 'Do u delivery in al dhafra region', '2019-08-21 23:42:24', 0x30),
(539, 'Raghbir ', 'Raghbirsingh426@yahoo.co.uk', '7980804848', '3', '599.0000', 'Dubai', '161 heath road ', '', '2019-08-22 01:07:26', 0x30),
(541, 'adil Khan ', 'rk4981942@gmail.com', '566333128', '1', '199.0000', 'Dubai', ' Alain sanaya ', 'no', '2019-08-22 01:36:02', 0x30),
(543, 'ahmad ambaloshe', 'Ahmed.murad@rcuae.ae', '0505004438', '1', '199.0000', 'Dubai', 'Ahmed.murad@rcuae.ae 4 st28a villa 6', '', '2019-08-22 10:19:03', 0x30),
(545, 'Rajwinder singh', 'raj.canbuild@gmail.com', '852972316', '1', '199.0000', 'Dubai', 'Evaan Residency', '', '2019-08-22 10:48:32', 0x30),
(547, 'Nadia Alshehhi ', 'funnymam@hotmail.com', '508820502', '1', '199.0000', 'Dubai', 'Alkhawaneej second ', '', '2019-08-23 02:05:44', 0x30),
(549, 'Mohamed kunju ', 'Hamdumohamed101@yahoo.com', '0504920407', '1', '199.0000', 'Abu Dhabi', 'Near petroliem institute sas al nakheel ', 'Is it with out alergic? ', '2019-08-23 02:11:03', 0x30),
(551, 'Alia', 'ali3.alshamsi91@gmail.com', '509686824', '1', '199.0000', 'Abu Dhabi', 'Alain_old sarooj ', '', '2019-08-23 05:48:26', 0x30),
(553, 'shine R Mathew', 'shinerose51@gmail.com', '589082332', '1', '199.0000', 'Dubai', 'International city ', '', '2019-08-23 07:05:33', 0x30),
(555, 'Mohinudeen', 'Dkmohinu@gmail.com', '0564601163', '1', '199.0000', 'Dubai', 'Deira', '', '2019-08-23 07:46:20', 0x30),
(557, 'naveen gurung', 'gurungnaveen52@gmail.com', '0551599655', '1', '199.0000', 'Ajman', 'Precision machenery LLC near Big mart super market jurf 2', '', '2019-08-23 10:05:59', 0x30),
(559, 'Ghanim alzaabi', 'lamia_hl72@hotmail.com', '0503207666', '1', '199.0000', 'Fujairah', 'kalba', '\r\n\r\n\r\n', '2019-08-23 11:28:12', 0x30),
(561, 'Nasir ', 'Alsuwaididxb@hotmail.com', '0553333167', '1', '199.0000', 'Sharjah', 'Allyaayh street 15 vila 6', 'No\r\n\r\n\r\n\r\n', '2019-08-23 17:11:28', 0x30),
(563, 'Nasir ', 'Alsuwaididxb@hotmail.com', '0553333167', '1', '199.0000', 'Sharjah', 'Allyaayh street 15 vila 6', '\r\nNo', '2019-08-23 17:13:05', 0x30),
(565, 'Kunhi Muhammed ', 'Fidhafatima1033@gmail.com', '565456933', '1', '199.0000', 'Umm Al Quwain', 'Behind the lulu ', '', '2019-08-24 01:38:52', 0x30),
(567, 'Borges ', 'regborg99@gmail.com', '0566030015', '1', '199.0000', 'Dubai', 'Ducab Jebel Ali ', '', '2019-08-24 02:09:08', 0x30),
(569, 'Noona', 'Nonask@yahoo.com', '0504355523', '1', '199.0000', 'Dubai', 'Dubai ', '', '2019-08-24 02:23:05', 0x30),
(571, 'Omar almahri ', 'Omarnasa172@gmail.com', '0555006262', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi new falah black c1 Valle number 322 ', 'If it\'s not become black color,,, I can return back ?', '2019-08-24 03:31:13', 0x30),
(573, 'Humaid', 'Roselady_7@hotmail.com', '545100004', '1', '199.0000', 'Dubai', 'Myhasna1', '', '2019-08-24 04:32:37', 0x30),
(575, 'Srinibas sahu ', 'srinibas_sahu@hotmail.com', '564152595', '1', '199.0000', 'Dubai', 'A206 Silicon gate 1, dubai silicon oasis ', 'Is there any warranty ', '2019-08-24 04:39:59', 0x30),
(577, 'Gurdeep Singh', 'gurdeep45@hotmail.com', '0504091475', '1', '199.0000', 'Abu Dhabi', 'Flat No. 401 Al Kindi Building LULU Street Abu Dhabi', 'Call me before coming to fix the time', '2019-08-24 09:11:15', 0x30),
(579, 'Robi', 'Mamunbinforkhan@gmail.com', '553317558', '1', '199.0000', 'Ras Al Khaimah', 'AL nakeel ', '', '2019-08-24 10:06:39', 0x30),
(581, 'Sanjay kumar ', 'villasisvilma_09@outlook.com', '505066392', '1', '199.0000', 'Dubai', 'al satwa Iranian hospital jumeirah 1 street 27 villa 17', '', '2019-08-24 11:08:32', 0x30),
(583, 'Mariam Almarzooqi ', 'Om_sawaf55@hotmail.com', '505537577', '1', '199.0000', 'Dubai', 'Dubai-alwarqa 3street 29d ', '', '2019-08-24 12:47:59', 0x30),
(585, 'Aman', 'aullah69@gmail.com', '558239363', '1', '199.0000', 'Dubai', 'Dragon Mart Shop Ebb-03', '', '2019-08-24 12:54:12', 0x30),
(587, 'Govindan elumalai', 'Mokter7@gmail.com', '522911628', '1', '199.0000', 'Dubai', 'Al quoz 4', 'I need brown colour', '2019-08-24 15:21:13', 0x30),
(589, 'AnwarzebKhan ', 'Shahmalik55@gmail.com', '558690242', '1', '199.0000', 'Abu Dhabi', 'Musaffah m11 near kabul afghan hotel ', '', '2019-08-24 15:49:21', 0x30),
(591, 'hamzs', 'bu.7mza@hotmail.com', '588800027', '1', '199.0000', 'Ajman', 'mosehat ', 'ggg', '2019-08-24 15:56:18', 0x30),
(593, 'Ruby', 'elsatefera51@gmail.com', '559917209', '1', '199.0000', 'Ras Al Khaimah', 'Higher college technology for men', '', '2019-08-24 22:42:41', 0x30),
(595, 'Miriam villalon', 'Hcysel@yahoo.co.uk', '568219194', '1', '199.0000', 'Dubai', 'Dubai festival city mall opposite side old navy sho', '', '2019-08-25 02:49:27', 0x30),
(597, 'Jawhara alkendi', 'gg_g_a@hotmail.com', '0507301393', '1', '199.0000', 'Abu Dhabi', 'Al Ain ', '', '2019-08-25 03:12:15', 0x30),
(599, 'Humaid al ali', 'abdulla_hml@yahoo.com', '506465580', '1', '199.0000', 'Dubai', 'Al salama 3 near safer mall umm al quwain uae', '', '2019-08-25 03:43:11', 0x30),
(601, 'Mariam Alshamsi', 'm_h_y_a.1977@outlook.com', '507439991', '1', '199.0000', 'Abu Dhabi', 'Alain -Hilli (street-14)', '', '2019-08-25 03:59:00', 0x30),
(603, 'Abdullah Almadhani ', 'a.almadhani7@gmail.com', '504880100', '1', '199.0000', 'Fujairah', 'Murbah ', 'Murbah madha st - Behind Al Orouba Club-Villa No. 1133/9', '2019-08-25 05:35:38', 0x30),
(605, 'Humaid alshamsi ', '1956humaid@gmail.com', '504505666', '1', '199.0000', 'Ajman', 'Muroor Street behind Fella petrol station No. 58', '', '2019-08-25 05:58:48', 0x30),
(607, '????? ????', 'Smoy.461@gmail.com', '0507745558', '1', '199.0000', 'Abu Dhabi', 'Al adlai', '', '2019-08-25 07:01:46', 0x30),
(609, 'um abdullah ', 'notavailable@adnoc.ae', '501937887', '2', '399.0000', 'Abu Dhabi', 'world trade center office', '', '2019-08-25 09:50:43', 0x30),
(611, 'Tony Nguyen ', 'dungnt@thaisonnjc.com.vn', '585688393', '2', '399.0000', 'Dubai', 'Room no 1811, STELLA DI MARE Hotel,  PO Box: 33306, Dubai Marina, UAE.', '', '2019-08-25 10:16:29', 0x30),
(613, 'CHEIHK sidi', 'haibele2@gmail.com', '501153593', '1', '199.0000', 'Abu Dhabi', 'Kipina nursi', 'No', '2019-08-25 11:24:10', 0x30),
(615, 'Shamsuddeen ', '2014shamu@gmail.com', '585941984', '1', '199.0000', 'Dubai', 'Al qusais ', '', '2019-08-25 12:17:45', 0x30),
(617, 'Hardeep Singh ', 'deepasangha78@yahoo.com', '559412412', '1', '199.0000', 'Abu Dhabi', 'Al Ail', 'Ok ', '2019-08-25 13:01:40', 0x30),
(619, 'Lavanya ', 'Lavanya.kalia@iss-shipping.com', '1506457185', '1', '199.0000', 'Dubai', 'Inchcape Shipping Service 5th floor office court Bldg Oud Metha ', '', '2019-08-25 13:34:22', 0x30),
(621, 'Zainab ', 'Zozoalhaj53@gmail.com', '544972227', '1', '199.0000', 'Dubai', 'Albarsh', '', '2019-08-25 14:21:01', 0x30),
(623, 'Mohamed', 'gernass_dubai@hotmail.com', '504555607', '1', '199.0000', 'Dubai', 'Deira Alkhaimah Bulding M3 ', 'I would like to have dark Brown ', '2019-08-25 14:42:18', 0x30),
(625, 'Mohd Mubarak', 'mubarakknr@gmail.com', '503280073', '1', '199.0000', 'Abu Dhabi', 'Mussafah, Emirates Motor Company', 'Production date should be under 3 months.\r\nCredit card acceptable ?\r\n\r\n', '2019-08-25 21:52:39', 0x30),
(627, 'Khaled', 'Niinja@live.com', '545011431', '1', '199.0000', 'Abu Dhabi', 'New al falah city a1 villa 182', '', '2019-08-31 02:24:19', 0x30),
(629, 'Mahadevan KS', 'mahadevanks@gmail.com', '508425753', '1', '199.0000', 'Abu Dhabi', 'Advanced CAE, Mussaffah 15, near Catterpillar company', '', '2019-08-31 07:11:18', 0x30),
(631, 'Mahadevan Subbaraman', 'mahadevanks@gmail.com', '508425753', '1', '199.0000', 'Abu Dhabi', 'Advanced CAE, Mussaffah 15, near Catterpillar company', '', '2019-08-31 07:13:06', 0x30),
(633, 'Emily Calica', 'ems_asumbra.calica@hotmail.com', '586617388', '1', '199.0000', 'Abu Dhabi', 'Tourist Club, Navy gate area, near al Maya supermarket, opposite Fresh & More, Farhat Restaurant building Abu Dhabi, UAE ', 'Buy 1 take 1 right?', '2019-09-01 21:48:33', 0x30),
(635, 'Mannan Mozaher ', 'Mannanmozaher@gmail.com', '508403229', '1', '199.0000', 'Sharjah', 'Opposite Swiss bell hotel Sharjah Rolla', 'How many days need for delivery in my destination? And how many stay this colour? Can you ask me before delivery? ', '2019-09-01 22:49:24', 0x30),
(637, 'Atif ', 'angcglobal@gmail.com', '568067777', '1', '199.0000', 'Dubai', 'Maisem city centre ', '', '2019-09-01 23:10:17', 0x30),
(639, 'Romeo Santillan', 'romysan_99@yahoo.com', '586387815', '1', '199.0000', 'Abu Dhabi', 'Tawam Hospital', '', '2019-09-01 23:20:54', 0x30),
(641, 'Martin ', 'Spaceplusinteriorfitout@gmail.com', '543328033', '1', '199.0000', 'Sharjah', 'Al yarmook ', '', '2019-09-01 23:33:55', 0x30),
(643, 'Dipak kumar shrestha', 'ds9602915@gmail.com', '568869579', '1', '199.0000', 'Dubai', 'samsung camp dabaldana street rowise', 'No question', '2019-09-01 23:52:02', 0x30),
(645, 'Sunil thomas ', 'Roy.roygomez@gmail.com', '501201344', '1', '199.0000', 'Dubai', 'Transgulf Readymix ', '', '2019-09-02 03:13:21', 0x30),
(647, 'Jagan George Thomas', 'jagthom1968@gmail.com', '507720813', '1', '199.0000', 'Abu Dhabi', 'Next to LLH Hospital ,  Electra, Abudhabi. ', 'In the Advt.  it shows  one buy one free ???? 199. Is that offer pack is delivered  ? \r\nIf God wish , i will be back on Sept. 20. 2019.', '2019-09-02 03:40:57', 0x30),
(649, 'Janaka ', 'wgjanaka@yahoo.com', '565454610', '1', '199.0000', 'Abu Dhabi', 'Khalifa city a', '', '2019-09-02 05:33:26', 0x30),
(651, 'Saif', 'Saifullahshah1984@gmail.com', '0562267775', '1', '199.0000', 'Abu Dhabi', 'Muror road opposite Wahdah mall', '', '2019-09-02 17:07:52', 0x30),
(653, 'unni narayanan', 'bindhaboui@gmail.com', '0505400526', '1', '199.0000', 'Ras Al Khaimah', ' Near fish market mareed', 'Get one free ok', '2019-09-03 00:26:45', 0x30),
(654, 'Deepal Hewagama ', 'dhewagama@live.com', '556087640', '1', '199.0000', 'Abu Dhabi', 'Villa 7/Flat 2 Al Dana Compound Khalifa City A, Abu Dhabi', '', '2019-09-03 04:00:01', 0x30),
(655, 'Islam mansour', 'Sama.06@hotmail.com', '0505896611', '1', '199.0000', 'Fujairah', 'Alfaseel beside Indian school', '', '2019-09-03 10:14:04', 0x30),
(657, 'Emma', 'margaretaemilia@yahoo.com', '567743303', '1', '199.0000', 'Dubai', 'Dubai, al qous 4 villa 77 street 19', '', '2019-09-03 13:13:53', 0x30),
(659, 'Emma', 'margaretaemilia@yahoo.com', '567743303', '1', '199.0000', 'Dubai', 'al qous4 street 19 villa 77', '', '2019-09-03 13:18:17', 0x30),
(661, 'Raid momani', 'Pionier72@hotmail.comm', '528001017', '1', '199.0000', 'Dubai', 'Rmram', '', '2019-09-03 13:30:54', 0x30),
(663, 'Rahhal', 'rahalomer@hotmail.com', '553540920', '1', '199.0000', 'Abu Dhabi', 'Al ain city khubaisi', '1+1 at 199aed Dark brown colour ', '2019-09-03 22:20:35', 0x30),
(665, 'ali aljahoori', 'alialjahoori@gmail.com', '506685425', '1', '199.0000', 'Abu Dhabi', 'AL Shamakha', '', '2019-09-03 22:27:51', 0x30),
(667, 'vilma al kuwaiti', 'vilmaalkuwaiti@gmail.com', '547999203', '1', '199.0000', 'Dubai', 'villa house#8 street9 new sarooj back of city center al ain abu dhabi', '', '2019-09-03 23:05:27', 0x30),
(669, 'James Joseph ', 'james@jjpigroup.com', '529797087', '1', '199.0000', 'Dubai', '2756. Hyatt Regency Creek Heights Residents ', '', '2019-09-04 02:48:46', 0x30),
(671, 'James Joseph ', 'james@jjpigroup.com', '529797087', '1', '199.0000', 'Dubai', '2756. Hyatt Regency Creek Heights Residence', '', '2019-09-04 02:50:20', 0x30),
(673, 'mohammed habib ullah', 'mhabibullah009@gmail.com', '0557487684', '1', '199.0000', 'Dubai', 'DUBAI DEIRA AL QUSAIS, DAMASCUS STREET, ABDULLAH BIN FAHAD BUILDING 4, SHOP NAME GAMA TYPING SERVICES, SHOP NUMBER 3, OPOSIT ARABIYA TASHEEL & DAILY RESTAURANT ', 'i need black ', '2019-09-04 04:37:36', 0x30),
(675, 'Victoria Valencia', 'victoria15valenvia@gmail.com', '529535247', '1', '199.0000', 'Abu Dhabi', 'New Al falah E1-89 house no 6 ner mosquid', '', '2019-09-04 05:34:32', 0x30),
(677, 'arturo alfonso', 'arturo.alfonso@boskalis.com', '545827597', '1', '199.0000', 'Abu Dhabi', '2nd floor liwa tower capital Centrer al khaleeh Al arabi Street', 'i need light brown if you hane', '2019-09-04 14:13:48', 0x30),
(679, 'Semugabi ', 'twahassemugabi@gimal.com', '0523983312', '1', '199.0000', 'Dubai', 'Jebal Ali industrial Area ', '', '2019-09-04 14:14:04', 0x30),
(681, 'arturo alfonso', 'arturo.alfonso@boskalis.com', '545827597', '1', '199.0000', 'Abu Dhabi', '2nd floor liwa tower capital Center al khaleej Al arabi Street ', 'if you have light brown that is better i like light brown', '2019-09-04 14:16:12', 0x30),
(683, 'Alaa Abo Alkasem', 'alaa_aboalkasem@yahoo.com', '0561191661', '1', '199.0000', 'Sharjah', 'Alkhan street Almawared building flat 409', '', '2019-09-04 14:25:57', 0x30),
(685, '?????', 'alkhmyryf84@gmail.com', '504115991', '1', '199.0000', 'Abu Dhabi', ' ??????? ??????? ???? 14', ' ??? ??????? ???? ????? ?????? ?? ????? ? ?? ????? ?? ', '2019-09-04 15:12:45', 0x30),
(687, 'Daniel vasa ', 'daniel_vasa@yahoo.comUB', '586539922', '1', '199.0000', 'Dubai', 'Flat 402, al riga, Bilding SS Lootha .Dubai ', '', '2019-09-04 19:23:06', 0x30),
(689, 'Binu Alias ', 'binu_alias7@yahoo.com', '508059330', '1', '199.0000', 'Abu Dhabi', 'Room 203  Mourouj hotel apartment Abu Dhabi ', '', '2019-09-05 00:05:38', 0x30),
(691, 'Angie', 'angge_scorpio@yahoo.com', '505415502', '1', '199.0000', 'Abu Dhabi', 'airport road', 'i need dark brown shade', '2019-09-05 01:00:17', 0x30),
(693, 'Shérif Ibrahim', 'Sherifsaada@hotmail.com', '565204451', '1', '199.0000', 'Dubai', 'Dubai Jewel Rower - Dubai Internet City -Apartment 603', '', '2019-09-05 02:26:22', 0x30),
(695, 'lalitha srinivasan', 'lallu_papu@yahoo.com', '0501736129', '1', '199.0000', 'Sharjah', 'Day to day center building, Flat number 711,A Block,kingfaisal road, Abushagara, sharjah ', '', '2019-09-05 03:03:19', 0x30),
(697, 'Angel', 'droupen31@hotmail.com', '0555238797', '1', '199.0000', 'Abu Dhabi', 'Muhammad  Bin Zayed  zon 22   plot 104  villa 25', 'If I bought 1 for 199 you will give me 1 bottle free right?', '2019-09-05 05:05:14', 0x30),
(699, '???? ??????', 'tawakkal246@gmail.com', '0507735762', '1', '199.0000', 'Abu Dhabi', '????? ???????', '', '2019-09-05 08:13:12', 0x30),
(701, '???', 'hamadarhmah@icloud.com', '504444601', '1', '199.0000', 'Abu Dhabi', '????? ????', '', '2019-09-05 10:26:24', 0x30),
(703, 'Shamsa juma', 'shamsa.juma2015@gmail.com', '507953111', '1', '199.0000', 'Dubai', 'Safa 1 street 29  villa 42', 'This is my correct email', '2019-09-05 13:24:39', 0x30),
(705, 'Taresh', 'Taresh88@gmail.com', '0504566599', '2', '399.0000', 'Abu Dhabi', 'Khalifa b ', '', '2019-09-05 14:58:41', 0x30),
(707, 'Zeyad', 'Zeyad.alrubati@gmail.com', '506507662', '1', '199.0000', 'Dubai', 'Dubai', 'Can I try before I buy? I have white hair, can it help to return back the original hair Colour? ', '2019-09-05 20:05:39', 0x30),
(709, 'Amoor ', 'Amoordiabi@gmail.com', '0555519712', '1', '199.0000', 'Dubai', 'Dubai International city', 'After to weeks I need ', '2019-09-05 20:44:24', 0x30),
(711, '???? ????', 'Kamel9797@gmai.com', '564119011', '1', '199.0000', 'Ajman', '?????-???? ????? ????- ????? ??????2', '??', '2019-09-06 01:49:16', 0x30),
(713, 'Roldan Perez', 'rfperez52@gmail.com', '506103713', '1', '199.0000', 'Abu Dhabi', 'Villa 5 Nakheel Compound A, Khalifa city A ', '', '2019-09-06 02:24:01', 0x30),
(715, 'Tameem', 'Tameematameem@gmail.com', '1555577806', '2', '399.0000', 'Abu Dhabi', '93 Baniyas East 6', '', '2019-09-06 03:49:16', 0x30),
(717, 'Enrico Batin', 'enricobatin@gmail.com', '507307689', '1', '199.0000', 'Dubai', 'W 06 Russia Cluster Bldg 111 International City Warsan 1', 'This buy one take one right?', '2019-09-06 04:06:30', 0x30),
(719, 'FedaAllah Habib ', 'Fedahabib8@gmail.com', '506959904', '1', '199.0000', 'Sharjah', 'Sarh Emarat Tower #3008 Corniche Buhaira- same Noor Bank building residence entrance ', 'How many Ml per bottle and each bottle is enough for how many wash?\r\nIs one time apply is enough for 6 months?', '2019-09-06 05:48:53', 0x30),
(721, 'Fakir abdrizak', 'abderrazek_1975@yahoo.com', '0501300562', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi Mussafah 44 Amoud coffee', '', '2019-09-06 09:25:13', 0x30),
(723, 'Suji George ', 'thenest0207@gmail.com', '507182252', '1', '199.0000', 'Dubai', 'Al Fardha, Block B, Near to Dubai Customs, Burdubai ', '', '2019-09-06 09:43:41', 0x30),
(725, 'Rola al solh ', 'Rola.alsolh@hotmail.com', '506671072', '1', '199.0000', 'Abu Dhabi', 'Khalifa street garden tower block c', '', '2019-09-06 09:58:06', 0x30),
(727, 'ahmed almashjari', 'ahmedmashjari80@gmail.com', '0506134015', '1', '199.0000', 'Abu Dhabi', 'baniyas east3, home no:434', '', '2019-09-06 10:33:10', 0x30),
(729, 'Fahd Alnuaimy', 'Fhdnoaimy@hotmail.com', '508180770', '1', '199.0000', 'Fujairah', 'Faseel near cenchri mall ', '', '2019-09-06 14:02:12', 0x30),
(731, 'Hussain', 'paksat4@gmail.com', '558819886', '1', '199.0000', 'Sharjah', 'Al qasmiya', '', '2019-09-06 18:31:22', 0x30),
(733, 'Mason Assaf', 'Mazemassaf@yahoo.com', '545797980', '1', '199.0000', 'Dubai', 'Aljadaf Alrammel tower-B apartment 311 latifa Hospital street', '', '2019-09-06 22:29:41', 0x30),
(735, 'Osman', 'osmankulai98@hotmail.com', '504407886', '1', '199.0000', 'Dubai', 'Dubai', '', '2019-09-06 23:10:13', 0x30),
(737, 'Nihal Zafar', 'sales@zafcom.ae', '506428598', '1', '199.0000', 'Dubai', 'Salam street Abu Dhabi', 'Deliver immediately.', '2019-09-07 01:18:25', 0x30),
(739, 'Sohail Ali ', 'diiqroomi1@hotmail.com', '503933300', '1', '199.0000', 'Fujairah', 'Fujairah murbah beside lolo extra ', 'Thanks', '2019-09-07 02:10:46', 0x30),
(741, 'Rula', 'Rula.hasanin@gmail.com', '557770660', '1', '199.0000', 'Dubai', 'Palm Jumeirah ', '', '2019-09-07 07:12:43', 0x30),
(743, 'Ram Maddesheya ', 'ram.asbc@gmail.com', '0556933114', '1', '199.0000', 'Dubai', 'Al Qasmia  mehata Tawar 201', '', '2019-09-07 07:38:39', 0x30),
(745, 'Ram maddeshiya', 'ram.asbc@gmail.com', '556933114', '1', '199.0000', 'Dubai', 'Al Martha Tower 201, Al Qasmia, Sharjah ', '', '2019-09-07 07:40:27', 0x30),
(747, 'Mrsaif ', 'Mrsaif009@gmail.com', '0554890077', '1', '199.0000', 'Dubai', 'Dubai Abu hail ', 'Ok', '2019-09-07 08:05:15', 0x30),
(749, 'Saifaldawla Ahmed Khalil', 'saifsudan@hotmail.com', '509015307', '1', '199.0000', 'Abu Dhabi', 'AbuDhabi - Khalidia- Khalid Bin Alwakeed St', 'No', '2019-09-07 12:11:22', 0x30),
(751, 'Basheer dargas', 'basheerdargas@gmail.com', '503119295', '1', '199.0000', 'Abu Dhabi', 'Madinazayed', 'Gshsg', '2019-09-07 14:11:41', 0x30),
(753, 'Senait Zerai ', 'Kebron44@yahoo.com', '0564020814', '1', '199.0000', 'Dubai', 'Vila148 Alsafa1 ', '', '2019-09-08 00:07:31', 0x30),
(755, 'Munawar Afridi', 'mr.apriday@gmail.com', '502307382', '1', '199.0000', 'Sharjah', 'Building No 108 next to Rubby grocery near Al nasrreya park Sharjah', '', '2019-09-08 06:06:19', 0x30),
(757, 'Grace Wanjiku ', 'Gracecikun2019@gmail.com', '506079898', '1', '199.0000', 'Dubai', 'Battuta Mall', '', '2019-09-08 07:57:49', 0x30),
(759, 'Awadh alqubaisi', 'Awadh-alqubaisi@hotmail.com', '508229277', '1', '199.0000', 'Abu Dhabi', 'Almusharaf ', '', '2019-09-08 11:13:28', 0x30),
(761, 'Bdoor', 'Bad6250@gmail.com', '0506566327', '1', '199.0000', 'Dubai', 'Street no 57 A villa 31 ', 'No ', '2019-09-08 11:39:04', 0x30),
(763, '???? ??? ??????? ', 'am541984@hotmail.com', '509394555', '1', '199.0000', 'Ajman', '?????? /2 ???? ??????? ??????? ', NULL, '2019-09-09 06:16:24', 0x30),
(765, '???? ????? ??? ???? ', 'aa4988995@gmail.com', '0504988995', '1', '199.0000', 'Dubai', '???? ???? ?? ????? FA1 ??? 12', NULL, '2019-09-09 09:22:19', 0x30),
(767, 'Khalifa', 'Upman777@hotmail.com', '554603333', '1', '199.0000', 'Dubai', 'Dubai/alquoz1', NULL, '2019-09-09 10:29:08', 0x30),
(769, 'Habib', 'habibg07@yahoo.co.uk', '507780658', '1', '199.0000', 'Ajman', 'Al Jurf ', NULL, '2019-09-09 11:11:20', 0x30),
(771, '???? ', 'saidnaseeb85@gmail.com', '0545400796', '1', '199.0000', 'Abu Dhabi', '????? ?????? ', NULL, '2019-09-09 11:19:00', 0x30),
(773, '???? ???? ', 'Alwared2015@hotmail.com', '506669551', '1', '199.0000', 'Fujairah', '????? ???? ??????? ', NULL, '2019-09-09 11:56:24', 0x30),
(775, '????', 'elmsafr2000@hotmail.com', '503322151', '1', '199.0000', 'Abu Dhabi', '????? ????? ???? ??? 12 ???? ??? 264', NULL, '2019-09-09 15:19:50', 0x30),
(777, 'Abdul Manan ', 'A.manan8300@yahoo.com', '551808300', '1', '199.0000', 'Sharjah', 'Maysaloon bear clock tower', '', '2019-09-09 15:46:42', 0x30),
(779, '???? ?????? ', 'Saeed.alnaqbi1964@gmail.com', '506277212', '1', '199.0000', 'Ras Al Khaimah', '??? ?????? ????? ???? ??? ??????', NULL, '2019-09-09 15:57:18', 0x30),
(781, 'Shaima alshmsi ', 'Super_2008_girl@hotmail.com', '504488815', '1', '199.0000', 'Abu Dhabi', 'Alain- falaj hazaa- street 27- villa 24', '', '2019-09-09 17:39:40', 0x30),
(783, '???', 'W.q@hotmail.co.uk', '0506936666', '1', '199.0000', 'Abu Dhabi', 'Alain ', NULL, '2019-09-09 17:50:52', 0x30),
(785, 'Ahmad Al Mannai ', 'ahmaalmannai@gmail.com', '506452333', '1', '199.0000', 'Dubai', 'Abuhail street. Al weida area. Deira ', '', '2019-09-09 18:06:09', 0x30),
(787, 'Basanta ', 'basanta.itahari@gmail.com', '0552601926', '1', '199.0000', 'Dubai', 'Al Quoz 3', '', '2019-09-09 23:13:21', 0x30),
(789, '?? ???? ???????', 'alblwshyamrashd1@gmail.com', '508660959', '1', '199.0000', 'Sharjah', '??????? ????? ????? ?????? ?? ????? ??????? ???? ?????? ??? ??? 51 ', NULL, '2019-09-10 04:10:53', 0x30),
(791, 'Luay', 'Luayalqais@gmail.com', '506595450', '1', '199.0000', 'Dubai', 'Deira almakktom st. Akrem tower', '', '2019-09-10 05:46:37', 0x30),
(793, 'Ali Albahraini', 'freedomali4906@gmail.com', '588073588', '1', '199.0000', 'Ras Al Khaimah', 'Rak', NULL, '2019-09-10 06:54:45', 0x30),
(795, 'Salah Alazawi ', 'Salah62mah@yahoo.com', '545454501', '1', '199.0000', 'Ajman', 'Alnahrain Specialty medical center , floor 6 , sky tower , sheikh Khalifa Bin Zayed Road ', '', '2019-09-10 07:55:02', 0x30),
(797, 'Salah Alazawi ', 'Salah62mah@yahoo.com', '545454501', '1', '199.0000', 'Ajman', 'Alnahrain Specialty medical center,floor 6, sky Tower, sheikh Khalifa Bin Zayed Road ', '', '2019-09-10 07:56:51', 0x30),
(799, 'Mohammed ', 'msomairat@dm.gov.ae', '506587080', '1', '199.0000', 'Dubai', 'Hatta Hill Park villa 114', '', '2019-09-10 08:46:21', 0x30),
(801, 'Abdulla', 'Abdulla_7972@hotmail.com', '504447972', '1', '199.0000', 'Abu Dhabi', '??????? ??????? ? ???? ??? :????? ?????? ??? ????? ?????? ?? ???? ?? ????? ???? ????', NULL, '2019-09-10 08:50:59', 0x30),
(803, 'Belinda Cariño Templonuevo', 'belindatemplonuevo@yahoo.com', '563903268', '1', '199.0000', 'Dubai', 'Street 37b, Villa 70, Al barsha 3, Dubai, UAE', 'Morning delivery', '2019-09-10 09:46:47', 0x30),
(805, 'Ahmad Habib ', 'dr_ahmadhabib@yahoo.com', '1506739494', '1', '199.0000', 'Sharjah', 'Al Dhaid City Salamaty medical center bld ', NULL, '2019-09-10 13:16:54', 0x30),
(807, 'Mervat al saleh', 'Mervat1915@hotmail.com', '0503958466', '1', '199.0000', 'Ajman', 'Alnuamy 1', 'No', '2019-09-10 23:52:51', 0x30),
(809, 'Luay alqaisy', 'Luayalqaisy@gmail.com', '506595450', '1', '199.0000', 'Dubai', 'Maktoum street akrem tower office 1001', '', '2019-09-11 13:17:34', 0x30),
(811, 'malak mohd ', 'malak28779@gmail.com', '555625550', '1', '199.0000', 'Sharjah', 'al Saad residence tower behind petrol station flat number 1303', '', '2019-09-11 14:18:38', 0x30),
(813, 'malak mohd ', 'malak28779@gmail.com', '555625550', '1', '199.0000', 'Sharjah', 'al Saad residence tower behind petrol station flat number 1303', '', '2019-09-11 14:20:32', 0x30),
(815, '????????', 'pahlawanghaznawi@gmail.com', '553061544', '1', '199.0000', 'Dubai', '?', '', '2019-09-11 20:02:28', 0x30),
(817, 'Aisha Mohammed ', 'aishajmm@gmail.com', '505737982', '1', '199.0000', 'Dubai', 'Al mutawa  al ain', '', '2019-09-12 05:41:59', 0x30),
(819, 'Bushra latheef ', 'nbushralatheef@gmail.com', '506523706', '1', '199.0000', 'Dubai', 'Al wasal road behind J3 mall street number 21a villa 44 Jumeirah ', '', '2019-09-12 06:06:52', 0x30),
(821, 'Sheryl Benedicto', 'sheng.999.sb@gmail.com', '564892244', '1', '199.0000', 'Dubai', 'Al Ghurair building', '', '2019-09-12 10:55:16', 0x30),
(823, 'Mohammad', 'ewan2013fm@gmail.com', '552370164', '1', '199.0000', 'Dubai', 'Al Qusais industrial area 1 ', '', '2019-09-12 11:41:00', 0x30),
(825, 'Mohammad ', 'ewan2013fm@gmail.com', '552370164', '1', '199.0000', 'Dubai', 'Al Qusais industrial area 1 Ahmad mohammad mismar wear house no 4  dubai ', '', '2019-09-12 11:43:28', 0x30),
(827, '??? ????', 'Alismssb@hotmail.com', '506276270', '1', '199.0000', 'Sharjah', '????? ????? ?????? ', '?? ?????? ?? ????? ??? ?? ???? ?? ?????? ', '2019-09-12 11:51:13', 0x30),
(829, 'Wael zaki', 'Wail_a_z@hotmail.com', '553938888', '2', '399.0000', 'Fujairah', 'Hamad ben abdulla street , fujairah tower 801', '', '2019-09-12 13:03:04', 0x30),
(831, 'Neoly fortin', 'neolyfortin@gmail.com', '501973161', '1', '199.0000', 'Dubai', 'Palm jumirah frond C villa 108', '', '2019-09-12 15:47:53', 0x30),
(833, 'Tanjil Borah', 'tanjilfirewall@gmail.com', '502408469', '1', '199.0000', 'Abu Dhabi', 'ADIB, Al Baatein, 6th Floor, IT Security Operations, post box:313', 'Can I use it in beard?', '2019-09-12 17:45:46', 0x30),
(835, 'Anilkumar ', 'rajappan.anil@gmail.com', '561852042', '1', '199.0000', 'Abu Dhabi', 'Musafah shabiah 11 building no 136 /R503', 'Cash on delivery?', '2019-09-13 01:43:15', 0x30),
(837, 'Lani', 'lani.lingganay@yahoo.com', '561970458', '1', '199.0000', 'Abu Dhabi', 'Yugoslavian furniture airport road', 'Is this buy 1 get 1 for free?', '2019-09-13 02:13:02', 0x30),
(839, 'Tareq aljneibi', 'uae6446@gmail.com', '504499224', '1', '199.0000', 'Abu Dhabi', 'Alain - alyaher', '', '2019-09-13 03:46:06', 0x30),
(841, 'Beza', 'Bezakassa55@gmail.Com', '0524206612', '1', '199.0000', 'Dubai', 'Alkw 1', 'Ste 146', '2019-09-13 06:54:56', 0x30),
(843, 'Prakash Dcruz ', 'ash8me@yahoo.com', '551094472', '1', '199.0000', 'Dubai', 'ash8me@yahoo.com ', 'Black colour ', '2019-09-13 08:21:48', 0x30),
(845, 'Sami Ibrahim al mhairat', 'Aburama12@yahoo.com', '502638094', '1', '199.0000', 'Dubai', 'Abu Dhabi -al Mushrif area-next to zakat fund and opposite UAE wrestling and Judo Federation- villa no.45 1st floor ', 'Can get light brown shampoo?', '2019-09-13 10:10:17', 0x30),
(847, 'Akbar khan', 'Alamkhan765@yahoo.com', '0555064101', '1', '199.0000', 'Sharjah', 'Industrial area 6 backside of macro super market near Bangali masjid', '', '2019-09-13 13:08:17', 0x30),
(849, 'Ahmed Ali hodekar', 'NALMOHAMMADMILON@GMAIL.COM', '551693125', '1', '199.0000', 'Sharjah', 'Abu shagarah ', '100% confirm or not.', '2019-09-13 16:12:19', 0x30),
(851, 'Jaspher alfonso', 'jaspher.alfonso@yahoo.com', '555725225', '1', '199.0000', 'Dubai', 'Bin laden bldg flat 101, deira dubai', 'Do you have a dark brown color?', '2019-09-14 01:23:49', 0x30),
(853, 'Montri Tatoonpin ', 'montritrp33@hotmail.com', '506459254', '1', '199.0000', 'Dubai', 'Safeer tower 2 Room 412 business bay ', 'Buy one get one free ', '2019-09-14 05:32:41', 0x30),
(855, 'Anda', 'Anda.dalati@gmail.com', '557968694', '1', '199.0000', 'Dubai', 'Jvc exit 2 district 16 street 3b villa j15', '', '2019-09-14 05:56:04', 0x30),
(857, 'Ahamd', 'ahmad_hellal@hotmail.com', '554528872', '2', '399.0000', 'Dubai', 'Al awer', '', '2019-09-14 07:05:34', 0x30),
(859, 'Nasser', 'Nasseralamar@hotmail.com', '503336699', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi- baniyas-east 2/4 villa no 42', 'Thair is alregi coming from this shampoo', '2019-09-15 05:45:43', 0x30);
INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `bottles`, `price`, `city`, `address`, `question`, `created_on`, `is_deleted`) VALUES
(861, 'Mamadou sow', 'mamadou671@gmail.com', '509729539', '1', '199.0000', 'Dubai', '116 ayal Nasser Street deira ', '', '2019-09-15 13:18:11', 0x30),
(863, 'Hassan', 'Hassanafsar2@gmail.con', '0559665489', '1', '199.0000', 'Dubai', 'UAE /Dubai / Al Quos 3 / street 6b / warehouse No 2', '', '2019-09-15 15:01:08', 0x30),
(865, 'EDWIN OROGO', 'eorogo@yahoo.com', '508543964', '1', '199.0000', 'Abu Dhabi', '18th floor Rotana, Centro office tower, Capital Centre, Al Khaleej St.', '', '2019-09-15 20:48:54', 0x30),
(867, 'Martin ', 'Spaceplustech@gmail.com', '543328033', '1', '199.0000', 'Dubai', 'Spaceplustech@gmail ', '', '2019-09-16 13:36:33', 0x30),
(869, 'Junaid ', 'Jhdhaduk@gmail.com', '501233640', '1', '199.0000', 'Dubai', 'Al Hudaiba awards building, block C, Jumeirah 1', '', '2019-09-16 14:34:46', 0x30),
(871, 'Mohammed ', 'M7060808@hotmail.com', '0588888690', '1', '199.0000', 'Dubai', 'Bar Dubai ', 'I need my delivery from 09:00 am to 11:00 an \r\nThanks ', '2019-09-16 17:13:39', 0x30),
(873, 'Mahra Abdullah ', 'mahraalhashimy@gmail.com', '508606020', '1', '199.0000', 'Ajman', 'Ajman', '', '2019-09-16 21:52:03', 0x30),
(875, 'Khamis Abdullah said aldhabouni', 'Khamisblackberry@gmail.com', '506949491', '1', '199.0000', 'Dubai', 'Sky court building  dubai Alain road forth flor 422 ', 'What the different color do you have?', '2019-09-16 22:02:20', 0x30),
(877, 'Genalyne dela Cruz', 'delacruzgh@gmail.com', '563384907', '1', '199.0000', 'Dubai', '806 ACICO BUSINESS PARK', '', '2019-09-17 03:22:39', 0x30),
(879, 'Thadde Sean Daniel', 'mindwrx_cdc@yahoo.com', '505856788', '1', '199.0000', 'Dubai', 'Abanos Furniture & Decoration Ind.', '', '2019-09-17 11:27:21', 0x30),
(881, 'Hassan Kazmi', 'hassanowais@yahoo.com', '0504506076', '1', '199.0000', 'Dubai', 'Villa 416 Green Community West, DIP', '', '2019-09-17 17:00:38', 0x30),
(883, 'Lolita ', 'lolitpaul@gmail.com', '0527144659', '1', '199.0000', 'Abu Dhabi', 'Mussafah backside Mazyad Mall building D2 flat 905', 'Black color', '2019-09-17 23:57:34', 0x30),
(885, 'Marc Sammak', 'marc.1963@live.com', '552407390', '1', '199.0000', 'Dubai', 'Sharjah-Taawon- Mamzar corniche- Danat Alkhan Tower- Apt 2303', '2 bottles for AED199?', '2019-09-18 01:52:01', 0x30),
(887, 'Vivietta Eko', 'viviettab@yahoo.com', '526291050', '1', '199.0000', 'Dubai', 'Villa 13, Villa Park 2, street 9, Opposite Laya Residences, JVC.', 'I want the Hair Curler too', '2019-09-18 01:58:59', 0x30),
(889, 'Gali Alathman', 'alneyadiamal@gmail.com', '0503535808', '2', '399.0000', 'Abu Dhabi', 'Alain- sarooj-alharmozi area street 4 home 1', '', '2019-09-18 03:40:35', 0x30),
(891, 'Raheem salim', 'raheembinsalim@outlook.com', '567756958', '1', '199.0000', 'Dubai', 'Near Dubai hospital', 'Note what up me b4 delivery', '2019-09-18 03:44:27', 0x30),
(893, 'Imran', 'Najmanor@yahoo.com', '507379705', '1', '199.0000', 'Dubai', 'Al Murar ', 'We need brown color ', '2019-09-18 05:55:56', 0x30),
(895, '???? ????', 'Yasiryamze@gmail.com', '565774707', '1', '199.0000', 'Dubai', '?? ??? ?? ????  ????', '', '2019-09-18 08:00:09', 0x30),
(897, '???? ', 'Yasiryamze@gmail.com', '565774707', '1', '199.0000', 'Dubai', '?? ??? ?????? ???????', '????', '2019-09-18 08:18:12', 0x30),
(899, 'fayza alkaabi', 'fayza7718@gmail.com', '0508337718', '1', '199.0000', 'Abu Dhabi', ' al markania .alain', '', '2019-09-18 09:11:15', 0x30),
(901, 'Skut', 'Skut99@yahoo.com', '503145991', '1', '199.0000', 'Abu Dhabi', 'Mushrif', '', '2019-09-18 09:34:09', 0x30),
(903, 'Basheer pattazhi', 'pattazhimohamedbasheer@gmail.com', '1502677880', '1', '199.0000', 'Abu Dhabi', 'Muroor. Abu dhabi', 'Buy 1 get 1 free? ', '2019-09-18 10:11:56', 0x30),
(905, 'Galiya ', 'Galiya926@gmail.com', '506901273', '1', '199.0000', 'Dubai', 'Dubai Marina Residence Tower A 1302', '', '2019-09-18 15:09:51', 0x30),
(907, 'Abdulkhafiz', 'mubin_dubai@mail.ru', '0552344028', '1', '199.0000', 'Sharjah', 'Al town st', '', '2019-09-19 05:50:44', 0x30),
(909, 'Mohammad', 'WasfiMohammad1980@gmail.com', '505223262', '1', '199.0000', 'Abu Dhabi', 'Al Ain', 'Al Ain', '2019-09-19 07:01:43', 0x30),
(911, 'Naeema qasim', 'c51733c@gmail.com', '504547385', '1', '199.0000', 'Dubai', 'Oud almutina tunis street area 265 street1- 39', '', '2019-09-19 07:26:32', 0x30),
(913, 'Bassam', 'Bassamtv@gmail.com', '585181971', '2', '399.0000', 'Dubai', 'Jumeira village triangle /Almanara Tower ', 'Kindly deliver the order between 8 am till 11 am Sunday to Thursday ', '2019-09-19 08:46:21', 0x30),
(915, 'Farhan farooqui ', 'Farhanfarooqui74@gmail.com', '0508988672', '1', '199.0000', 'Dubai', 'Barsha height Tecom Saif Belhasa building number 10 ground floor management office', '', '2019-09-19 10:27:37', 0x30),
(917, 'Adel almansoori', 'Almansoori1973@gmail.com', '0506477461', '1', '199.0000', 'Ras Al Khaimah', 'Oppsite safeer mall .. south aldhait', '', '2019-09-19 11:04:54', 0x30),
(919, 'Yaser', 'Alzxyz55@yhoo.com', '551898622', '1', '199.0000', 'Abu Dhabi', 'Kahaldiya', '', '2019-09-19 16:18:49', 0x30),
(921, 'Yaser ', 'Yasseralzoubi18@gmail.com', '551898622', '1', '199.0000', 'Abu Dhabi', 'Khaldiyh', '', '2019-09-19 17:38:49', 0x30),
(923, 'Eyad ali', 'Eyadbd@gmail.com', '504206556', '1', '199.0000', 'Dubai', 'Alwarqa1/ 13 sreeet ah2 building/502', 'Black colors only ', '2019-09-19 18:23:23', 0x30),
(925, 'Mazen ', 'Mazennassar@yahoo.com', '504147937', '1', '199.0000', 'Abu Dhabi', 'Reem island mari a square bldg2', '', '2019-09-19 23:11:55', 0x30),
(927, 'Abdul Majid khan', 'rajamajid617@gmail.com', '544019388', '1', '199.0000', 'Abu Dhabi', 'Mussfah24 near life care hospital ', '', '2019-09-20 00:38:50', 0x30),
(929, 'Rey flores ', 'reyflores.dxb@gmail.com', '564857407', '1', '199.0000', 'Sharjah', 'Al hamriyah freezone phase 1 Sharjah u.a.e ', '', '2019-09-20 01:58:20', 0x30),
(931, 'Rey flores ', 'reyflores.dxb@gmail.com', '564857407', '1', '199.0000', 'Sharjah', 'Al hamriyah freezone phase 1 Sharjah u.a.e ', 'Buy 1 take 1 \r\n199aed', '2019-09-20 02:11:08', 0x30),
(933, 'Essa almarzooqi', 'essaalmarzooqi3@gmail.com', '506650155', '1', '199.0000', 'Dubai', 'Alwarqa 4 . st 27 . Villa 76', '', '2019-09-20 05:39:22', 0x30),
(935, 'Essa almarzooqi', 'essaalmarzooqi3@gmail.com', '506650155', '1', '199.0000', 'Dubai', 'Alwarqa 4 . St 27 D . Villa 76', '\r\n', '2019-09-20 05:44:29', 0x30),
(937, 'Ali', 'Aaah.1982@gmail.com', '504444587', '1', '199.0000', 'Abu Dhabi', 'AlmaqtaA', '', '2019-09-20 06:37:35', 0x30),
(939, 'Ayesha', '1986.a.khalfan@gmail.con', '0566229091', '1', '199.0000', 'Abu Dhabi', 'Aldafrah', 'Black colore', '2019-09-20 08:45:31', 0x30),
(941, 'Camilla Ida ', 'idacamilla2015@gmail.com', '0501813608', '1', '199.0000', 'Abu Dhabi', 'Maryland international school. Mussafa. Shabia 9.next Elite private school ', '', '2019-09-20 09:16:38', 0x30),
(943, '???? ???', 'arab89735@gmail.com', '0506424269', '1', '199.0000', 'Ras Al Khaimah', '??? ?????? ????? ??? ?????? ?? ????? ??? ', '?? ??? ???? ?????? ', '2019-09-20 10:02:45', 0x30),
(945, 'mariam', 'mmhalkaabi3@gmail.com', '0508017767', '1', '199.0000', 'Abu Dhabi', 'Kalefa a', '', '2019-09-20 11:07:01', 0x30),
(947, 'Hamdan Almazrouei ', 'h0506144409@gmail.com', '506177001', '1', '199.0000', 'Abu Dhabi', '21 alsalsabeel Rd , aldhafra,  ', '', '2019-09-20 12:02:06', 0x30),
(949, 'Essa yousuf', 'essaalmarzooqi3@gmail.com', '504541311', '1', '199.0000', 'Dubai', 'Alwarqa 4 . St 27 D . Villa 76', '', '2019-09-20 12:41:57', 0x30),
(951, 'Suad', 'Suadalsumaiti@gmail.com', '509915997', '2', '399.0000', 'Abu Dhabi', 'AbuDhabi', '', '2019-09-20 12:46:25', 0x30),
(953, 'Um radhed', 'Suadsumaiti@gmial.com', '503977334', '3', '599.0000', 'Abu Dhabi', 'Abudhabi', '', '2019-09-20 12:47:22', 0x30),
(955, '???? ???? ?????', 'Atifmohamed195@gmail.com', '556969539', '1', '199.0000', 'Dubai', '??? ', '', '2019-09-20 12:57:04', 0x30),
(957, '?ali', 'Alketbiali92@gmail.com', '556777775', '1', '199.0000', 'Dubai', 'Alkhwaneej', '', '2019-09-20 15:09:48', 0x30),
(959, 'Ali', 'Alketbiali92@gmail.com', '556777775', '1', '199.0000', 'Dubai', 'Alkhwaneej ', '', '2019-09-20 15:11:12', 0x30),
(961, 'sabu', 'Sabusafety@yahoo.com', '0552348284', '1', '199.0000', 'Abu Dhabi', 'Mafraq', ' Need Black colour', '2019-09-20 20:20:37', 0x30),
(963, 'Sabu', 'Sabusafety@yahoo.com', '0552348284', '1', '199.0000', 'Abu Dhabi', 'Mafraq workers city', 'Need black ...Are you sure is it not allergic??', '2019-09-20 20:23:10', 0x30),
(965, 'Shafeer ', 'Thanaz@emirates.net.ae', '506558799', '1', '199.0000', 'Sharjah', 'Mabrooka tower 2, King Faisal Street ', '', '2019-09-20 22:26:17', 0x30),
(967, 'Ali alketbi ', 'Alketbiali92@gmail.com', '556777775', '1', '199.0000', 'Dubai', 'Alkhwaneej ', '', '2019-09-21 00:36:38', 0x30),
(969, '???? ????', 'Essaalmarzooqi3@gmail.com', '504541311', '1', '199.0000', 'Dubai', '??????? ? . ???? ?? ? . ???? ??', '', '2019-09-21 02:54:44', 0x30),
(971, 'Yousuf', 'jamaldub5448@hotmail.com', '545477445', '1', '199.0000', 'Dubai', 'Emirates global aluminum dubal', 'One day Before delivery call me please', '2019-09-21 03:23:02', 0x30),
(973, 'Eli joy', 'Dshshiloo@gmial.com', '507888409', '1', '199.0000', 'Dubai', 'Dubai Mina Salam road SABA salon', 'I give you my whatsup number Please whatsup me\r\nBuy one get one free?', '2019-09-21 03:44:11', 0x30),
(975, 'Manu Bahuleyan ', 'manubahuleyan@gmail.com', '559544320', '1', '199.0000', 'Dubai', 'Dar Al Baraka Building, Flat 907, Al Nahda 2, Dubai', '', '2019-09-21 06:52:34', 0x30),
(977, 'Abdallh alhammadi ', 'abdullah.hasan.h7@gmail.com', '563777912', '1', '199.0000', 'Dubai', 'Jamara ', '', '2019-09-21 09:29:24', 0x30),
(979, 'Hussam jebara', 'Hboos999@yahoo.com', '562222154', '1', '199.0000', 'Abu Dhabi', 'Mahabad ban zayed', '', '2019-09-21 22:41:38', 0x30),
(981, 'Salam', 'staezaz@gmail.com', '552198273', '1', '199.0000', 'Dubai', 'York International Hotel ', '', '2019-09-22 03:40:59', 0x30),
(983, 'Hana ', 'Hana.alshehhi@gmail.com', '507447227', '1', '199.0000', 'Ras Al Khaimah', 'Julan', 'I need the offer.. buy 1 at 199 and get one free..payment on delivery..', '2019-09-22 06:11:18', 0x30),
(985, 'Shady garad', 'Garadshady@gmail.com', '501128971', '1', '199.0000', 'Abu Dhabi', 'Airport street ADIB HQ opposite Hilton Capital Grand Hotel ', '', '2019-09-22 08:53:07', 0x30),
(987, 'Rajesh ', 'Rajeshsanchunidhi@gmail.com', '524094330', '1', '199.0000', 'Dubai', 'Dubai airport ', 'You have to call me before delivering. I work a Dubai airport terminal 1', '2019-09-22 09:48:04', 0x30),
(989, '???? ???', 'arab89735@gmail.com', '0506424269', '1', '199.0000', 'Ras Al Khaimah', '??? ?????? ????? ??? ?????? ?? ????? ??? ', '???? ????? ?????? ', '2019-09-22 10:23:02', 0x30),
(991, 'Rajababu', 'rajababu.uae@gmail.com', '505997091', '1', '199.0000', 'Dubai', 'Alqou', '', '2019-09-22 14:03:32', 0x30),
(993, 'Skut ', 'Skut99@yahoo.com', '503145991', '1', '199.0000', 'Abu Dhabi', 'Mushrif', '', '2019-09-23 03:27:09', 0x30),
(995, 'Walid ', 'Wzamar2003@yahoo.com', '507144002', '1', '199.0000', 'Dubai', 'Dubai mirdif ', '', '2019-09-23 07:30:22', 0x30),
(997, 'Sanjeev Kaboo', 'sanjeevkaboo@yahoo.in', '0568281504', '1', '199.0000', 'Dubai', 'IMG Worlds of Adventure, City of Arabia, Sheikh Mohammed Bin Zayed Road, Near Global Village ', '', '2019-09-25 02:31:13', 0x30),
(999, 'Afzal', 'afzaal.shami@gmail.com', '504801709', '1', '199.0000', 'Sharjah', 'Near mahta park, king Abdul Aziz Road sharjah ', '', '2019-09-25 06:42:30', 0x30),
(1001, 'Afzal', 'afzaal.shami@gmail.com', '504801709', '1', '199.0000', 'Sharjah', 'King Abdul aziz road near mahta park sharjah', '', '2019-09-25 06:45:38', 0x30),
(1003, 'yousif', 'yousifbinsaif@gmail.com', '503069000', '2', '399.0000', 'Fujairah', 'khorfakkan', '', '2019-09-25 08:52:15', 0x30),
(1005, '????', 'rayan75@hotmail.com', '0505815807', '1', '199.0000', 'Ajman', '???????? ???? ????? ?????', '?? ??? ???? ????? ?? ????? ???? ????', '2019-09-25 10:42:40', 0x30),
(1007, 'Nawaz', 'Rubnawaz143@gmail.com', '568326733', '1', '199.0000', 'Sharjah', 'Abu shagara king abdull Aziz\'s road ', '', '2019-09-25 12:07:45', 0x30),
(1009, 'Ezekiel', 'ezekus5@yahoo.com', '556553840', '1', '199.0000', 'Dubai', '401 Abdullah building, Almurar area,Dubai, UAE', '', '2019-09-25 13:07:54', 0x30),
(1011, 'Hasna Alshabebi ', 'ad_rose2@hotmail.com', '522222044', '1', '199.0000', 'Sharjah', 'Sabkah Alhaneen street 147', '', '2019-09-25 13:36:19', 0x30),
(1013, 'Abdul Rahman ', 'A_r86@live.com', '509977718', '1', '199.0000', 'Sharjah', 'Al marwa tower 3', '', '2019-09-25 13:57:39', 0x30),
(1015, 'Vijay Krishna ', 'antarvijay2@gmail.com', '506318779', '1', '199.0000', 'Dubai', 'Abu sagara, Sharjah ', '', '2019-09-25 14:26:52', 0x30),
(1017, ' Maryam', 'Umsaialzaabi782@gmail.com', '506430307', '1', '199.0000', 'Abu Dhabi', 'Alain', '', '2019-09-25 23:24:48', 0x30),
(1019, 'Um hamed', 'Laila77@gmail.com', '507307730', '1', '199.0000', 'Abu Dhabi', ' al Shamkha 17 22 21', '', '2019-09-26 00:34:23', 0x30),
(1021, 'Conrado', 'dindovillados@yahoo.com', '543551270', '1', '199.0000', 'Abu Dhabi', 'Flat 9 bldg 28 7th st. Al sidra al khabissi al ain abu dhabi uae', '', '2019-09-26 02:59:25', 0x30),
(1023, 'Saeed alghaithi ', 'saeedalghaithi@yahoo.com', '506655944', '3', '599.0000', 'Abu Dhabi', '4th street , new alsarooj, al ain', '', '2019-09-26 04:34:43', 0x30),
(1025, 'Maximo capricho jr', 'mcaprichojr@yahoo.com', '502265782', '1', '199.0000', 'Dubai', 'mcaprichojr@yahoo.com', '', '2019-09-26 07:15:55', 0x30),
(1027, 'Fatima ', 'Wsws88@gmail.com', '544050881', '1', '199.0000', 'Abu Dhabi', 'Al Ain city - Al Yahar North Area - St22 ', '', '2019-09-26 09:07:53', 0x30),
(1029, 'Raquel Manuel', 'rmanuel888@yahoo.com', '506958278', '1', '199.0000', 'Dubai', 'Tawam Hospital, Female Compound, P.O. Box 15258, Al Ain, UAE', '', '2019-09-26 14:13:02', 0x30),
(1031, 'Raquel Manuel', 'rmanuel888@yahoo.com', '506958278', '1', '199.0000', 'Abu Dhabi', 'Tawam Hospital Accomodation, Female Compound, P. O. Box 15258, Al Ain, UAE', '', '2019-09-26 14:16:13', 0x30),
(1033, 'jaya', 'jayaratna1972@gmail.com', '543332294', '1', '199.0000', 'Abu Dhabi', 'shawamkha baniyas', 'total 2 bottles 199 aed ?/ ', '2019-09-26 15:00:04', 0x30),
(1035, 'Rasika', 'glamgirlonline@hotmail.com', '503675759', '1', '199.0000', 'Dubai', '901 Sunrise building Al Nahda 2', '', '2019-09-26 15:52:47', 0x30),
(1037, 'Manu', 'manupankajakshan578@gmail.com', '509965905', '1', '199.0000', 'Sharjah', 'Industrial area 13 near national paint sharjah', '', '2019-09-27 03:02:46', 0x30),
(1039, 'Abid siddique', 'Mohdabid12@yahoo.com', '509748985', '1', '199.0000', 'Abu Dhabi', 'E 28 building no 12 near Khalifa university  maror road Abu Dhabi ', '', '2019-09-27 06:21:48', 0x30),
(1041, 'Mariam', 'Mas.alshamsi99@gmail.com', '504165044', '1', '199.0000', 'Abu Dhabi', 'Khalifa city A', '', '2019-09-27 07:39:31', 0x30),
(1043, 'Ahmed ', 'Dreem-150@gmail.com', '0508132007', '2', '399.0000', 'Abu Dhabi', 'Dreem-150@gmail.com', '', '2019-09-27 07:52:52', 0x30),
(1045, 'Altaf', 'altaf_vangde2000@yahoo.con', '0503944649', '1', '199.0000', 'Dubai', 'Ajman  opposite to safeer mall  AlFuttaim Lexus service', 'Any side effects for the product do you have instructions on the product ', '2019-09-27 08:24:15', 0x30),
(1047, 'Sharifa ahmad', 'Sharifa108@gmail.com', '506267449', '1', '199.0000', 'Sharjah', 'AlNakheilat villa n16 ,street n 6', '', '2019-09-27 08:40:59', 0x30),
(1049, 'Khalid darwish ', 'pro@buhumaid.ae', '509696904', '1', '199.0000', 'Sharjah', 'Butina ', '', '2019-09-27 08:57:39', 0x30),
(1051, 'Mohammad al mehairi ', 'Dubai935@hotmail.com', '057744337', '1', '199.0000', 'Dubai', 'Al Tawar 2street no 11A villa no6', '', '2019-09-27 11:26:14', 0x30),
(1053, 'Edward reyes', 'edwardp_reyes@yahoo.com.ph', '562010115', '1', '199.0000', 'Sharjah', 'B3891 Room301, near in big mosque, Muweillah  Commercial', '', '2019-09-27 13:51:03', 0x30),
(1055, 'Edward Reyes', 'edwardp_reyes@yahoo.com.ph', '562010115', '1', '199.0000', 'Sharjah', 'Bldg3891 Room301, Near in Big Mosque, Muweilah Commercial ', '', '2019-09-27 13:54:18', 0x30),
(1057, 'Imen khemiri', 'Khzino@yahoo.fr', '527647643', '1', '199.0000', 'Dubai', 'Dubai', '', '2019-09-27 14:30:49', 0x30),
(1059, 'Imen', 'Khzino@yahoo.fr', '0527647643', '1', '199.0000', 'Dubai', 'Dubai', '', '2019-09-27 14:32:07', 0x30),
(1061, 'Abdullah Sulaiman ', 'Abdullah_rak2015@yahoo.com', '501999213', '1', '199.0000', 'Ras Al Khaimah', 'Khozam, back of Al Naeem Mall villa 7', 'How many days the color will stay on hear ?\r\nHow about for Sensitive dandruff no effect ?', '2019-09-27 16:10:52', 0x30),
(1063, 'Adiam Teklehaymanot ', 'Adiam_t27@yahoo.com', '0527433423', '1', '199.0000', 'Dubai', 'Al Grhoud street 36villano3 5b', '', '2019-09-27 17:50:44', 0x30),
(1065, 'Majed', 'Alrashed@ymail.com', '506500650', '1', '199.0000', 'Dubai', 'Khawaneej 1,Dubai at 176 villa 10', 'Both black colors ', '2019-09-28 03:37:18', 0x30),
(1067, 'Mohmmed ', 'mohmdmohsen@hotmail.com', '502942444', '1', '199.0000', 'Dubai', 'Albarsha 3 rs 26 b vila 25', '', '2019-09-28 05:49:21', 0x30),
(1069, 'nithin solaman', 'nithin.solaman@gmail.com', '551041753', '1', '199.0000', 'Dubai', 'Hamariya 20 burdubai', 'Any side effects?', '2019-09-28 16:44:39', 0x30),
(1071, 'Hassan Gbessay konneh', 'bintasan2014@gmail.com', '0097156160', '1', '199.0000', 'Dubai', 'Abu hail Abu Bakery ', '', '2019-09-28 23:11:56', 0x30),
(1073, '  Mohammed Alkhaaldi ', 'Banikhalidmohammad@yahoo.com', '508884311', '2', '399.0000', 'Sharjah', 'Al azra', 'Only black colour', '2019-09-29 02:43:45', 0x30),
(1075, 'Ismail salim', 'ismaeel11salem@gmail.com', '7150654654', '1', '199.0000', 'Dubai', 'Dubai Al Barsha 3 Behind the Saudi German Hospital Street No. 4 C Villa No. 24', '', '2019-09-29 04:49:32', 0x30),
(1077, 'Khalid Suliman ', 'Khalid.a.suliman@gmail.com', '527371425', '1', '199.0000', 'Dubai', 'Alghandi company Behind Tamam vehicle testing center Ras Alkhor road', 'For how long it will last for one time use', '2019-09-29 06:40:16', 0x30),
(1079, 'Renjith R', 'renjithnairad@gmail.com', '0556102475', '1', '199.0000', 'Dubai', 'Al shab colony, abu hail,  hor al naz', 'I am a hair dyes  allerge person  confome. No allerge 100%', '2019-09-30 06:57:10', 0x30),
(1081, '???? ', '0000zzzz197611@gmail.com', '558444014', '1', '199.0000', 'Abu Dhabi', 'Shawamekh 9 House No. 202', '', '2019-09-30 07:39:59', 0x30),
(1083, 'Khair ul amin', 'elegantamin@gmail.com', '508106810', '1', '199.0000', 'Dubai', 'Diera Dubai salahudin road ', 'Dork brown ', '2019-09-30 11:53:43', 0x30),
(1085, 'Ola hasan', 'Olla.hassan7@gmail.com', '555945599', '1', '199.0000', 'Abu Dhabi', 'Alkaramah', '', '2019-09-30 12:23:48', 0x30),
(1087, 'Khalid ', 'Kk3592kk@gmail.com', '556777533', '1', '199.0000', 'Dubai', 'Oud almuteenah 3, near aala almadinah supermarket ', 'Delivery time after 3pm please ', '2019-09-30 13:08:00', 0x30),
(1089, 'Vinay', 'Kvinay78618@gmail.com', '507315269', '1', '199.0000', 'Abu Dhabi', 'M15 mussafah industrial  western motors mopar', 'Natural? ', '2019-09-30 14:01:37', 0x30),
(1091, 'Nirul', 'nurul1964@yahoo.com', '0506729949', '1', '199.0000', 'Abu Dhabi', 'Electra street', 'Need to discussed for more information before delivery', '2019-09-30 15:35:57', 0x30),
(1093, 'Zeeshan Azmi', 'zeeshaan111@gmail.com', '565267349', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi National Foodstuff Company Behind Meena Cooperative ', 'It’s working ', '2019-09-30 21:43:13', 0x30),
(1095, 'Priya Tenzing ', 'Priyatenzing@hotmail.co.uk', '554683555', '1', '199.0000', 'Dubai', '7 Westar Constellations, Street 11, District 11, JVC', '', '2019-09-30 22:49:54', 0x30),
(1097, 'Sohail', 'Suhaill_khan@hotmail.com', '556100748', '1', '199.0000', 'Abu Dhabi', 'Khaleej al arabi street. ADNEC area. AbuDhabi ', 'Is this offer is buy 1 get 1 free ?', '2019-10-01 03:05:43', 0x30),
(1099, ' Sin wangchareon ', 'Sin_titi@hotmail.com', '1504214586', '1', '199.0000', 'Dubai', 'May soon Apartment 313 near lamcy car parking old Metha 2 karama ', '', '2019-10-01 03:36:15', 0x30),
(1101, '????', 'Hamboly2009@hotmail.com', '507110622', '1', '199.0000', 'Ajman', 'Horaizone tower', '', '2019-10-01 04:26:27', 0x30),
(1103, 'Eman ali', 'ALIE531@YAHOO.COM', '0504147477', '1', '199.0000', 'Abu Dhabi', '???? ??????? ????? ?????? ?????', '', '2019-10-01 07:01:13', 0x30),
(1105, 'Md mohin khan', 'Shamimkha26@yahoo.com', '563792141', '1', '199.0000', 'Abu Dhabi', 'Al ain ', '', '2019-10-01 09:14:54', 0x30),
(1107, 'zahid munir', 'zahidmunir25@yahoo.com', '559930384', '1', '199.0000', 'Abu Dhabi', 'MashaAllah M13', 'I buy you give one free ok .if not sorry ', '2019-10-01 11:34:44', 0x30),
(1109, 'Anzarul haq ', 'anzarulhaq7@gmai.com', '509094989', '1', '199.0000', 'Fujairah', 'anzarulhaq7@gmail.com', 'Black color only', '2019-10-01 11:42:16', 0x30),
(1111, 'Mohammad', 'mohd77a@yahoo.com', '506951995', '1', '199.0000', 'Dubai', 'Dubai zaabeel1- app Latifa hospital', '', '2019-10-01 16:17:10', 0x30),
(1113, 'Waleed AlZaabi ', 'alzaabi20000@gmail.com', '506275518', '1', '199.0000', 'Abu Dhabi', 'Al nhyan', '', '2019-10-01 22:23:41', 0x30),
(1115, 'Josephccherian ', 'Joseph2cherian@yahoo.coin', '502395656', '1', '199.0000', 'Dubai', 'Mariyam Khamis building 40 , Flat no -101 1st floor, Near 2 December street, Dubai ', 'I need only Natural black  Colour ', '2019-10-02 01:01:17', 0x30),
(1117, 'Ramez Mahfouz', 'ramez63@hotmail.com', '506237993', '1', '199.0000', 'Abu Dhabi', 'Al ain city center al muwaiji neardewan r/a  Al ain ', '', '2019-10-02 04:12:25', 0x30),
(1119, 'Zaheer Babar', 'zaheer@libero.it', '551117860', '1', '199.0000', 'Dubai', 'International city ', '', '2019-10-02 06:16:08', 0x30),
(1121, 'Hoda ', 'Haddwi-85@hotmail.com', '567108855', '1', '199.0000', 'Fujairah', 'Fuj', '', '2019-10-02 06:49:23', 0x30),
(1123, 'name', 'test@gmail.com', '4545454545', '1', '199.0000', 'Dubai', '5787878787', 'no', '2019-10-02 08:02:46', 0x30),
(1125, 'Kumar shah', 'greatjob@gmail.com', '0558525392', '1', '199.0000', 'Umm Al Quwain', 'Al Reef 2 Al Nadha 2 Sharjah UAE', 'hhjhjhjhj', '2019-10-02 08:03:31', 0x30),
(1127, 'Asad', 'Asadu209@gmail.com', '0505131833', '1', '199.0000', 'Dubai', 'Al ain albateen', '', '2019-10-02 09:00:24', 0x30),
(1129, 'Rashed', 'aullah81@gmail.com', '0507419161', '1', '199.0000', 'Dubai', 'Alain al wagan ', '', '2019-10-02 11:54:51', 0x30),
(1131, 'Rubyrose Vargas ', 'Rubyrosevargas123@gmail.com', '0508263112', '1', '199.0000', 'Dubai', 'Airport road Fujairah merashid near black and white laundry villa number 49/59', 'Its buy one take one right ', '2019-10-02 12:59:07', 0x30),
(1133, 'Vasundhara ', 'Vasuamitjain.jain@gmail.com', '505291194', '1', '199.0000', 'Abu Dhabi', '1506, building 7, marina square. Al Reem island. Abudhabi ', 'Do you have brown color?', '2019-10-02 15:37:51', 0x30),
(1135, 'Billy Martin', 'martenbg@yahoo.com', '0502207406', '1', '199.0000', 'Dubai', 'Flat 113, Bldg. 30, Street 2, Discovery Garden', '', '2019-10-02 21:43:22', 0x30),
(1137, 'Haytham', 'Haytham.mohamed@gmail.com', '0558147355', '1', '199.0000', 'Ajman', 'Ajman neemia thompy', 'What time yuo can com', '2019-10-03 01:11:03', 0x30),
(1139, 'Jojo', 'Salamahmedalquran5@Gmail.com', '505881666', '1', '199.0000', 'Abu Dhabi', 'Tourist club opposit sedar jaws tower ,third floor 302', '', '2019-10-03 08:13:21', 0x30),
(1141, 'Jeremias', 'jeremias_0175@hotmail.com', '506897106', '1', '199.0000', 'Abu Dhabi', 'Abu dhabi mall ', 'I need one orden white  to black shampoo, for nex saturday octubre 12 in abu dhabi mall 12:00 oclock ', '2019-10-03 23:47:19', 0x30),
(1143, 'Avtar Singh ', 'panglia13as@gmail.com', '563688213', '1', '199.0000', 'Abu Dhabi', 'M 36', '', '2019-10-04 02:02:50', 0x30),
(1145, 'Ebrahim ', 'Dam3h78@hotmail.com', '553705557', '1', '199.0000', 'Ras Al Khaimah', 'RAK', 'One free', '2019-10-04 05:08:28', 0x30),
(1147, 'Ipe', 'ipepilar@gmail.com', '1556715671', '1', '199.0000', 'Dubai', 'FedEx office, Al Twar 1, next to Terminal 2 Airport 2', 'The Buy 1 - Take 1 package, is it the same quantity in bottle?  How many liter/ml per bottle?  Pls call me before proceeding with my order.  Thank you. ', '2019-10-04 05:23:37', 0x30),
(1149, 'Abdul sikandar nadaf ', 'mohasina.mohammad2010@gmail.com', '0525307174', '1', '199.0000', 'Abu Dhabi', 'Musaffa 45 th near Emdad office ', 'If I use on my hair other black hair also convert to white hair or not   tell me sir ', '2019-10-04 06:26:03', 0x30),
(1151, 'Mariam', '1986.a.khalfan@gmail.com', '0566229091', '1', '199.0000', 'Abu Dhabi', 'Madenat zayed ', 'Dark brown ', '2019-10-04 06:49:56', 0x30),
(1153, 'Fatima', 'fatima7808@hotmail.com', '508227808', '1', '199.0000', 'Abu Dhabi', 'Western Region_Al Dhafra', '', '2019-10-04 07:54:08', 0x30),
(1155, '???? ???? ', 'mailto:qaryathiratn@yahoo.com', '0555688997', '1', '199.0000', 'Sharjah', '?????? 15', '', '2019-10-04 08:39:36', 0x30),
(1157, 'Basem', 'Basemalafkham@aol.com', '544333693', '1', '199.0000', 'Abu Dhabi', 'Alreef villas, desert village, street 6, villa 33', '', '2019-10-04 10:01:27', 0x30),
(1159, 'Smishad', 'smishad2006@gmail.com', '502124540', '1', '199.0000', 'Dubai', 'Al Khayam bakery and sweets LLC,  industrial area 3, Al qusais, Dubai, UAE', '', '2019-10-04 10:53:28', 0x30),
(1161, 'Shakir ali', 'Shakirshaadbaloch@gmail.com', '566182047', '1', '199.0000', 'Abu Dhabi', 'Alfalah Abudabi', 'We Hove Any Garintee', '2019-10-04 12:54:11', 0x30),
(1163, 'Ashraf ayoub', 'Www.Ashraf08jen@gmail.com', '565202837', '1', '199.0000', 'Abu Dhabi', 'Tourist club ', 'Do I have to use every day ', '2019-10-04 18:23:41', 0x30),
(1165, 'Aysha', 'Aysha_nida@yahoo.com', '569443685', '1', '199.0000', 'Abu Dhabi', 'Aysha_nida@yahoo.com', '', '2019-10-05 00:12:34', 0x30),
(1167, 'Aysha', 'Aysha_nida@yahoo.com', '559443685', '1', '199.0000', 'Dubai', 'House 3 compound 82  mohammad bun zayed city abu dhabi ', 'Light brown ', '2019-10-05 00:14:18', 0x30),
(1169, 'Aysha', 'Aysha_nida@yahoo.com', '559443684', '1', '199.0000', 'Abu Dhabi', 'Mohammad bin zayed city zone 19 compound 82', '', '2019-10-05 00:15:28', 0x30),
(1171, ' THILAKARAJAN', 'thilakarajan23@gmail.com', '0558410606', '1', '199.0000', 'Sharjah', 'KBFQ 1, BUILDING, MUWEILAH, SHARJAH, SAME BUILDING POLISHED SPA', 'I', '2019-10-05 00:57:45', 0x30),
(1173, 'Mehedi Hasan', 'mehedi069265@gmail.com', '0554971638', '1', '199.0000', 'Abu Dhabi', 'Hamdan', 'there is any skin problem or Allergy ?', '2019-10-05 02:39:57', 0x30),
(1175, 'Mehedi Hasan', 'mehedi069265@gmail.com', '0554971638', '1', '199.0000', 'Abu Dhabi', 'Hamdan', '', '2019-10-05 02:50:38', 0x30),
(1177, 'Khalid Chughtai ', 'chughati4@gmail.com', '506223852', '1', '199.0000', 'Abu Dhabi', 'TCA navy gate area', '', '2019-10-05 04:03:40', 0x30),
(1179, 'Alyazia Alshamsi ', 'S3ood_094@hotmail.com', '505773187', '1', '199.0000', 'Abu Dhabi', 'Alain / zakher / st 20 / home 1 ', '', '2019-10-05 05:00:42', 0x30),
(1181, 'Mirgani saleem', 'Mirgani3@hotmail.com', '507988628', '1', '199.0000', 'Dubai', 'Alhudiabha F4 flat 127', '', '2019-10-05 06:24:45', 0x30),
(1183, 'Ghazanfar', 'alijeans60@gmail.com', '502206032', '1', '199.0000', 'Ajman', 'New industry area 6', 'Color fully black', '2019-10-05 06:30:27', 0x30),
(1185, 'Abu Ahmed', 'humaid59@hotmail.com', '566947892', '1', '199.0000', 'Abu Dhabi', 'Khalifa city ', '', '2019-10-05 12:20:18', 0x30),
(1187, 'Talih', 'talih_rachid@hotmail.com', '552008033', '1', '199.0000', 'Abu Dhabi', 'Salam street , Sarieddine building ', '', '2019-10-05 14:25:40', 0x30),
(1189, 'Mohamed Sodki', 'mohamed.soudki@gmail.com', '501416926', '1', '199.0000', 'Abu Dhabi', 'City Seasons Hotel Zayed first street Abu Dhabi', '', '2019-10-05 14:41:02', 0x30),
(1191, 'Hind', 'al_maha5555@hotmail.com', '508309392', '1', '199.0000', 'Abu Dhabi', 'Zakher ', 'Kindly call me to know more information ', '2019-10-05 18:13:30', 0x30),
(1193, 'Muhammad Shabbir ', 'Muhammad.shabbir251983@gmail.com', '508560942', '1', '199.0000', 'Abu Dhabi', 'Centro al Manhal Hotel Airport Road', '', '2019-10-05 19:13:26', 0x30),
(1195, 'Saeed aldhaheri ', 'Sm_aldhaheri@hotmail.com', '504410222', '3', '599.0000', 'Abu Dhabi', 'Shama new - Al Tawqeet—st', 'No', '2019-10-05 22:57:37', 0x30),
(1197, 'iqbal khan', 'cavan123@hotmail.com', '0503538155', '1', '199.0000', 'Ras Al Khaimah', 'Cavan123@hotmail.com', '', '2019-10-05 23:17:58', 0x30),
(1199, 'saeed alghaithi ', 'saeedalghaithi@yahoo.com', '506655944', '2', '399.0000', 'Abu Dhabi', '4th street,new alsarooj, villa 12, al Ain ', '', '2019-10-06 00:35:15', 0x30),
(1201, 'Saleh', 'Sultansaleh1968@hotmail.com', '0506465458', '1', '199.0000', 'Ajman', '????? / ?????1', '?????  ????.1', '2019-10-06 03:55:38', 0x30),
(1203, 'Maryam Al Qemzi ', 'dr-alqamzi@hotmail.com', '526919442', '1', '199.0000', 'Ajman', 'Al Rashediya 3/ Al Sowan/ villa 6', '', '2019-10-06 05:15:19', 0x30),
(1205, 'murtaza ismail magsood ', 'murtaza121472@icloud.com', '504355472', '1', '199.0000', 'Dubai', 'aud Al Muteena. dubai police new colony villa no 221 ', '', '2019-10-06 13:19:18', 0x30),
(1207, 'Naeem Alhabsi ', 'Naeem1989.89@hotmail.com', '501029186', '1', '199.0000', 'Abu Dhabi', 'Alshamka ', 'Call me ', '2019-10-06 15:00:03', 0x30),
(1209, 'elawni elsiddig ', 'elawni@point2point.ae', '553827855', '1', '199.0000', 'Dubai', 'Al twar center - al Nahda street - point2point', '', '2019-10-06 17:47:53', 0x30),
(1211, 'Mourad', 'Mourad.madjid75@gmail.com', '567278957', '1', '199.0000', 'Dubai', 'Dubai', '', '2019-10-06 19:17:09', 0x30),
(1213, 'Susan Gani', 'babaaliyu@hotmail.co.uk', '528647446', '1', '199.0000', 'Dubai', 'Villa 6, 20 b street, Nadd al Sheba 2 ', '', '2019-10-07 00:10:28', 0x30),
(1215, 'Altaf ', 'hanyalt@gmail.com', '506425463', '1', '199.0000', 'Abu Dhabi', 'M-35 plot no 27 Musaffah sanaya Abu Dhabi', 'Dark Brown color only ', '2019-10-07 00:25:42', 0x30),
(1217, 'Nazeer Kaliyaragam', 'naram007@gmail.com', '585849433', '1', '199.0000', 'Dubai', 'Al Jazeera Hotel Apartment, 17-A street, Al Mankhool, Bur Dubai-Dubai', '', '2019-10-07 03:22:29', 0x30),
(1219, 'Cora Asico', 'asicordem_dmd@yahoo.com', '525719997', '1', '199.0000', 'Abu Dhabi', 'RG-23 Villa 3 Al Mustaqbal St, New Shabiyah Ghayati, AlDhafra region Abu Dhabi, Uae', '', '2019-10-07 04:03:19', 0x30),
(1221, 'Mamoon Al Ulaimi ', 'mamoonea@gmail.com', '507440649', '1', '199.0000', 'Dubai', 'Mirdif', '', '2019-10-07 04:33:49', 0x30),
(1223, 'Mohammad Islam Khan ', 'Mohammadislamkhan395@gmail.com', '9569417651', '1', '199.0000', 'Abu Dhabi', 'Room number-403, 4th floor, bldg. No.29, near madina zayed mall , abu', 'No', '2019-10-07 12:15:39', 0x30),
(1225, 'Abdulla alhameli', 'aah11111@hotmail.com', '554477852', '1', '199.0000', 'Abu Dhabi', 'Central bank of UAE', '', '2019-10-07 13:39:08', 0x30),
(1227, 'Abdulla alhameli', 'aah11111@hotmail.com', '554477852', '1', '199.0000', 'Abu Dhabi', 'Central Bank of UAE', '', '2019-10-07 13:40:43', 0x30),
(1229, '?????? ???? ????', 'jokey_598@hotmail.com', '565963928', '1', '199.0000', 'Sharjah', '????? ??????? ???? 20', NULL, '2019-10-07 16:22:27', 0x30),
(1231, 'Raed', 'ruizzmusic@hotmail.com', '562118555', '1', '199.0000', 'Dubai', 'The springs 8 villa 72 st 4', '', '2019-10-07 16:59:48', 0x30),
(1233, 'Tarig', 'Tarigmaki@gmail.com', '529789789', '1', '199.0000', 'Abu Dhabi', 'Alain city', '', '2019-10-07 19:58:07', 0x30),
(1235, 'abdul nasir ', 'nasirabdul10@gmail.com', '507361270', '1', '199.0000', 'Ajman', 'RASHDIYA TOWER B2 705', 'no ', '2019-10-07 21:47:44', 0x30),
(1237, 'Abdul', 'a3108643@gmail.com', '558005089', '1', '199.0000', 'Abu Dhabi', 'Mohd Ben Zayed Zone 17', 'I want dark brown for hair and one black for beard', '2019-10-08 03:38:59', 0x30),
(1239, 'Ahmad youssef ', 'asy.uae1982@gmail.com', '505972636', '1', '199.0000', 'Sharjah', 'Jamal abdelnaser street ', '', '2019-10-08 05:31:22', 0x30),
(1241, 'A. McNerney', 'anna@pmcgulf.com', '504591188', '1', '199.0000', 'Dubai', 'Villa 28, Street 45a, JM1', '', '2019-10-08 12:28:25', 0x30),
(1243, 'Ashraf Abdalla ', 'sirelkhatim991@hotmail.com', '504040625', '1', '199.0000', 'Ajman', 'Ajman One Towers-Tower 12-flat214', 'Color dark brown ', '2019-10-08 22:41:50', 0x30),
(1245, 'Babar', 'babarjanjua5@gmail.com', '505077196', '1', '199.0000', 'Dubai', 'Al muteena ', '', '2019-10-09 01:32:32', 0x30),
(1247, 'Noel angeles', 'jonoel2002@yahoo.com', '507149298', '1', '199.0000', 'Dubai', 'Obaidolah building 6 ,Damascus 4 Al qusais,dubai', 'Buy 1 get 1 free ', '2019-10-09 06:25:00', 0x30),
(1249, 'Ibrar', 'Expo2020dxb@aol.com', '543200802', '1', '199.0000', 'Dubai', 'Muraqabat', '', '2019-10-09 07:54:18', 0x30),
(1251, 'Vijayakumar Ch', 'vijayk2k5@gmail.com', '509053062', '1', '199.0000', 'Abu Dhabi', 'Villa no. N-186, Ruwais Housing  Complex, Al Ruwais, Abu Dhabi, UAE', 'Please deliver 2 (1 + 1free) to home address.', '2019-10-09 11:19:06', 0x30),
(1253, 'Ahmed', 'tigery2@hotmail.com', '506412498', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi/banish yas', '', '2019-10-10 00:30:09', 0x30),
(1255, 'Elsaid eldemiry ', 'dmiry.said@gmail.com', '589466188', '1', '199.0000', 'Dubai', 'Deira portsaid streat ', 'Only the order ', '2019-10-10 05:03:16', 0x30),
(1257, 'Maryam', 'Areemlimited@gmail.com', '501355991', '1', '199.0000', 'Dubai', 'Umm suqeim2 alserum street villa 79', '', '2019-10-10 07:14:43', 0x30),
(1259, 'Magdi essa', 'Magdisaadan@yahoo.com', '567067166', '1', '199.0000', 'Sharjah', 'Sharjah.majaz2 .kaloti  tower  #1501', '', '2019-10-10 12:26:28', 0x30),
(1261, 'Mamoon ', 'Mamoonea@gmail.com', '507440649', '1', '199.0000', 'Dubai', 'Mirdif ', '', '2019-10-10 23:27:55', 0x30),
(1263, 'Mangesh', 'Itzleleo@hotmail.com', '503450198', '1', '199.0000', 'Sharjah', 'Al nahda , juma Al Majid bldng , A 202', '', '2019-10-11 01:03:33', 0x30),
(1265, 'Khaled Mohamad Mohamad ', 'mohamad2010.km@gmail.com', '0509660551', '1', '199.0000', 'Abu Dhabi', 'Mohamad been Zayed city mazyad mall', 'Not ', '2019-10-11 05:46:54', 0x30),
(1267, 'Salem', 'Al.ain2632151@gmail.com', '504474060', '1', '199.0000', 'Abu Dhabi', 'Alain', '', '2019-10-11 06:19:18', 0x30),
(1269, 'Faitma', 'hhalkaabi18@hotmail.com', '506631177', '1', '199.0000', 'Abu Dhabi', '10', '', '2019-10-11 13:58:33', 0x30),
(1271, '???? ????? ??? ', 'alaadin911@gmai.com', '055779525', '1', '199.0000', 'Abu Dhabi', 'Alain ', '', '2019-10-11 16:21:32', 0x30),
(1273, 'Fatiha ', 'Haboba-98@hotmail.com', '551900011', '1', '199.0000', 'Fujairah', 'Marbah', '', '2019-10-12 04:00:24', 0x30),
(1275, 'Abdimajib said', 'ajaqanaf@gmail.com', '528113360', '1', '199.0000', 'Dubai', 'Jumeirah lakes towers cluster w jbc5 302', '', '2019-10-12 05:48:30', 0x30),
(1277, 'Harb Shihab', 'harb@sumaco.ae', '506418660', '1', '199.0000', 'Abu Dhabi', 'Flat 304, Ansam 1 ,Yas Island', '', '2019-10-12 06:11:48', 0x30),
(1279, 'Mohammed ', 'SalySmail01@gmail.com', '509393347', '1', '199.0000', 'Ras Al Khaimah', 'Almamora', '', '2019-10-12 15:00:35', 0x30),
(1281, 'Lalin de Silva', 'lalindesilva74@gmail.com', '0506074174', '1', '199.0000', 'Abu Dhabi', 'Home Center Hamdan Street', 'Its buy one get one free. So its two bottles. Any after effects?', '2019-10-12 22:24:34', 0x30),
(1283, '????', 'r7al_uae_1@hotmail.com', '504606026', '1', '199.0000', 'Dubai', '??????', '????? ????', '2019-10-12 23:14:37', 0x30),
(1285, 'Adelino Miclat', 'adelshey@gmail.com', '501982179', '1', '199.0000', 'Ras Al Khaimah', 'Rak mall Ras al kahaimah', 'No quistion', '2019-10-12 23:25:38', 0x30),
(1287, 'Mansoor saif ', 'dalw3alain@hotmail.com', '1551430919', '1', '199.0000', 'Abu Dhabi', 'Alflah B1_1012/9', '', '2019-10-13 01:56:47', 0x30),
(1289, 'Mohammad Haroon', 'rejals1@hotmail.com', '551046671', '2', '399.0000', 'Dubai', 'Inter national city Emirates Cluster Building  09. App 206', 'Both Dark Brown ', '2019-10-13 01:58:29', 0x30),
(1291, 'Gurdeep Singh', 'gurdeep45@hotmail.com', '504091475', '1', '199.0000', 'Abu Dhabi', 'Ghantoot Group Al Watbah Jail Project Abu Dhabi', 'Call me before delivery to finalize the location', '2019-10-13 05:07:33', 0x30),
(1293, '?????', 'mudheya72@gmail.com', '551318890', '1', '199.0000', 'Abu Dhabi', 'AlAin alfooah 33', '', '2019-10-13 05:49:40', 0x30),
(1295, 'Raed rizqalla', 'raedrizqalla@gmail.com', '0588316066', '1', '199.0000', 'Dubai', 'Alquz 4', '', '2019-10-13 16:31:25', 0x30),
(1297, 'jojo', 'arevalo_jojo@yahoo.com', '547320111', '1', '199.0000', 'Dubai', 'F03 201 china cluster international city warsan dubai', '', '2019-10-14 00:43:29', 0x30),
(1299, 'Kushal Singh Koranga', 'skushal847@gmail.com', '0581794490', '1', '199.0000', 'Ras Al Khaimah', 'Behind Rak bank, near nissan showroom, al dhait, ras al khimah ', '???? ?? Work ', '2019-10-14 02:16:11', 0x30),
(1301, 'Shaji', 'Shajinp2003@gmail.com', '553300889', '1', '199.0000', 'Dubai', 'Dubai', 'M.in india .now .I will be back.in dubai next weekend. Call me after 5 days ', '2019-10-14 03:06:06', 0x30),
(1303, 'Mahmoud ', 'almurched@gmail.com', '503108591', '1', '199.0000', 'Abu Dhabi', 'Khakifa street opp Russian embassy ', 'Is it guaranteed has to use regularly ', '2019-10-14 10:24:40', 0x30),
(1305, ' Abdikarim Mohamed ', 'abdikarimd@gmail.com', '554881767', '1', '199.0000', 'Ajman', 'Ajman, Rumailah1, oppst supermarket Mohamed Akter, Alhusnain Bldg 2nd floor flat no 26', '', '2019-10-15 04:21:45', 0x30),
(1307, 'Fatima attar', 'Fatima.attar@fakihivf.com', '506696675', '1', '199.0000', 'Abu Dhabi', 'Hazaa bin zayed street opposit of khalifa hospital behind Fakih medical center villa 89', '', '2019-10-15 17:32:36', 0x30),
(1309, 'Jawaher ', 'Jawaherali709@gmail.com', '1505040646', '1', '199.0000', 'Dubai', 'Al mamzar AB plaza 7', 'No\r\n', '2019-10-15 17:51:36', 0x30),
(1311, 'EMILINA', 'emsgarci@yahoo.com.ph', '0528535250', '1', '199.0000', 'Dubai', 'THE DOME TOWER, UNIT 1605, JLT CLUSTER N', '', '2019-10-16 03:08:03', 0x30),
(1313, 'Waleed', 'W_alshuibi2396@hotmail.com', '525848508', '1', '199.0000', 'Dubai', 'Dubai Deira Gold Market', '', '2019-10-16 15:28:37', 0x30),
(1315, 'Waleed', 'W_alshuibi2396@hotmail.com', '525848507', '1', '199.0000', 'Dubai', 'Dubai Deira Gold Market', '', '2019-10-16 15:30:56', 0x30),
(1317, '??? ???????', 'W.q@hotmail.co.uk', '507513311', '1', '199.0000', 'Abu Dhabi', 'Alain Aljimi', '', '2019-10-17 05:00:21', 0x30),
(1319, 'Hamdan Almazrouei ', 'h0506144409@gmail.com', '506177001', '2', '399.0000', 'Abu Dhabi', 'Aldhafra,  home 21.  Alsalsabeel st .  Badazayed ,', '', '2019-10-17 05:35:59', 0x30),
(1321, 'Suad alsumaiti', 'Sa_alsumaiti@gmail.com', '503977334', '3', '599.0000', 'Abu Dhabi', 'Cleveland hospital ', '', '2019-10-17 07:26:14', 0x30),
(1323, 'Ahmed', 'U.a.e.1@outlook.com', '501900014', '1', '199.0000', 'Abu Dhabi', 'Almaroor z35 street 31', '', '2019-10-18 01:32:43', 0x30),
(1325, 'Amal Nasser', 'Geminitrick@yahoo.com', '506464900', '1', '199.0000', 'Dubai', 'Al mamzer area134 st 4 villa 47', 'Buy 1 get 1 free', '2019-10-18 04:02:47', 0x30),
(1327, 'Mohamed Al Khumaisi ', 'Mohamed.alkhumaisi@gmail.com', '506414303', '1', '199.0000', 'Abu Dhabi', 'Al Mushref,street 5, villa 21, behind General Women ', '', '2019-10-18 06:19:05', 0x30),
(1329, 'Rashed ', 'J_4455@yahoo.com', '554477129', '1', '199.0000', 'Abu Dhabi', 'Alain ', '', '2019-10-18 06:29:15', 0x30),
(1331, 'Reem salem', 'Reem.1.1@hotmail.com', '502292240', '3', '599.0000', 'Abu Dhabi', 'Alain-ganimh home 11', 'No', '2019-10-18 07:08:51', 0x30),
(1333, 'Hamdan ', 'Uae_ad2@hotmail.com', '508131412', '1', '199.0000', 'Abu Dhabi', 'Alkarama', 'Alkarama ', '2019-10-18 09:06:35', 0x30),
(1335, 'Rajendran', 'rjd.tharayil@gmail.com', '503556716', '1', '199.0000', 'Dubai', 'Karma, wsl hub', '', '2019-10-18 09:49:03', 0x30),
(1337, 'Rajendran', 'rjd.tharayil@gmail.com', '503556716', '1', '199.0000', 'Dubai', 'Waslhub, karama', '', '2019-10-18 09:52:22', 0x30),
(1339, 'Ahmed', 'Wa@hotmail.com', '503741414', '1', '199.0000', 'Ras Al Khaimah', 'Rak', '', '2019-10-18 12:12:47', 0x30),
(1341, 'Saeed', 'asssseeee11@icloud.com', '0529666680', '1', '199.0000', 'Abu Dhabi', 'Street 11', '', '2019-10-18 12:49:24', 0x30),
(1343, 'Mohammad', 'Kashem.shah@gmail.com', '507624603', '1', '199.0000', 'Abu Dhabi', 'Electra street Abu dhabi', '1+1 bottle dark Brown.  ', '2019-10-18 14:06:55', 0x30),
(1345, 'Girish', 'padmadev.net@gmail.com', '506745412', '1', '199.0000', 'Dubai', 'Al nadha 2 , behind Carrefour , lucen 1 building Dubai', '', '2019-10-19 00:47:54', 0x30),
(1347, '???? ???? ??????', 'rashidalk33bi007@gmail.com', '502060605', '1', '199.0000', 'Abu Dhabi', '????? ????? ???? ????? 2', '', '2019-10-19 04:37:45', 0x30),
(1349, 'Rashed salem alkaabi', 'rashidalk33bi007@gmail.com', '502060605', '1', '199.0000', 'Abu Dhabi', 'Nahel city', 'On', '2019-10-19 04:40:40', 0x30),
(1351, 'Dareen ', 'Dareenfayed81@gmail.com', '543001131', '1', '199.0000', 'Abu Dhabi', 'Khalifa street', '', '2019-10-19 07:41:12', 0x30),
(1353, 'Mohamed ', 'Ad_211@hotmail.com', '506412626', '1', '199.0000', 'Dubai', 'Abu Dhabi ', '', '2019-10-19 09:02:06', 0x30),
(1355, 'Arafath Ahammed', 'aazimarafu@gmail.com', '558996136', '1', '199.0000', 'Dubai', 'Al Qusais Industrial Area-5, Dubai, U.A.E', 'Require Dark Brown color', '2019-10-19 14:11:36', 0x30),
(1357, 'Rachel A, Cada', 'popeye_ca@hotmail.cim', '0509173080', '1', '199.0000', 'Dubai', 'Al Nakheel 1 ,Dubai ,U.A.E.', 'Is there any allergy?can i try it first because i have allergy with my scalp', '2019-10-19 14:14:20', 0x30),
(1359, 'Hamouda', 'S7aayb@gmail.com', '0524111110', '1', '199.0000', 'Sharjah', 'Aldhaid', '', '2019-10-19 15:10:44', 0x30),
(1361, 'Ammar', 'A777777767@hotmail.com', '501888842', '3', '599.0000', 'Ajman', 'Ajman', '', '2019-10-19 18:30:51', 0x30),
(1363, 'Ateeq Al Mazrouei ', 'ateeq2412@hotmail.com', '506114899', '2', '399.0000', 'Abu Dhabi', 'Khalifa City - street-17 - Vella- 28', 'Thanks-and good day ', '2019-10-19 22:48:59', 0x30),
(1365, 'Inaam', 'h.inaam@yahoo.com', '506229121', '1', '199.0000', 'Dubai', 'Air port ', '', '2019-10-19 23:39:58', 0x30),
(1367, 'Amalia', 'Danadunaf@gmail.com', '552089090', '1', '199.0000', 'Dubai', 'Al Nahda 2', 'If I have blonde hair? How its will be ? Black or brown?', '2019-10-20 01:11:40', 0x30),
(1369, 'Salem ', 'Salem.alsadqi@hotmail.com', '503707571', '1', '199.0000', 'Ras Al Khaimah', 'Ras Al Khaimah -Al Karan ', '', '2019-10-20 06:37:19', 0x30),
(1371, 'Haris Moosa', 'harismoosa45@gmail.com', '504605800', '1', '199.0000', 'Dubai', 'Aweer fruit and vegetables markets ', '', '2019-10-20 09:35:11', 0x30),
(1373, 'Haris Moosa', 'harismoosa45@gmail.com', '504605800', '1', '199.0000', 'Dubai', 'Aweer fruits and vegetables markets ', '', '2019-10-20 09:37:54', 0x30),
(1375, 'Mohammad Parvez ', 'mohdparvez_mpk@yahoo.co.in', '509587981', '1', '199.0000', 'Dubai', 'Deira Naif Dubai', '', '2019-10-20 17:13:49', 0x30),
(1377, 'Fadi', 'Fadi.Qawass@gmail.com', '557952240', '1', '199.0000', 'Dubai', '706, BB1 tower, mazaya businesses Avenue, JLT ', '', '2019-10-20 18:10:35', 0x30),
(1379, 'Babar Tahir ', 'babartahir89@yahoo.com', '0508520481', '1', '199.0000', 'Abu Dhabi', 'Airport road just fresh juice shop', '', '2019-10-20 20:04:07', 0x30),
(1381, 'Collins ', 'Oshindorotunmise@yahoo.com', '554122961', '2', '399.0000', 'Sharjah', 'Bager Mohebi building ', 'I need black colours \r\n', '2019-10-20 21:33:32', 0x30),
(1383, 'Norman ahamed', 'nomanahamed72@gmail.com', '0557038080', '1', '199.0000', 'Sharjah', 'Industrial area no 6 near bangli mosque', '', '2019-10-20 21:55:24', 0x30),
(1385, 'Syed', 'khurshidsn@hotmail.com', '0505755193', '1', '199.0000', 'Sharjah', 'Near Mega Mall', 'Black color ', '2019-10-20 22:13:09', 0x30),
(1387, 'Ali saeed rashed almansoori', 'a.almansoori737@gmail.com', '0507322240', '1', '199.0000', 'Abu Dhabi', 'Abu Dhabi', '', '2019-10-20 23:40:06', 0x30),
(1389, 'Tushar Parvatkar', 'Tusharparvatkar@gmail.com', '564001423', '1', '199.0000', 'Sharjah', 'Sharq all khaleej metal industries, sajja industrial state.', '', '2019-10-21 03:47:13', 0x30),
(1391, 'Abdulla alshehhi', 'aduae77@yahoo.co.uk', '506156415', '1', '199.0000', 'Abu Dhabi', 'Mohammed Bin Zayed city. Zone 20, villa 22', 'Hi. Could you tell if this shampo Nutural 100% and no side affect.\r\nCan i us it on my beard. How many times i can use it and how long i have to keep it on my hair.', '2019-10-21 04:39:30', 0x30),
(1393, 'Vawze', 'Vawze78@gmail.com', '559350060', '1', '199.0000', 'Abu Dhabi', '?????? ????? ??????', '', '2019-10-21 14:25:49', 0x30),
(1395, 'Hamad almazrouei ', 'Hamad@iatcuae.com', '504411622', '1', '199.0000', 'Abu Dhabi', 'Bain Aljsreen villa 22 alfanos street Abudhabi ', 'I received my order today I am not happy all bottle leaking ', '2019-10-21 15:16:23', 0x30),
(1397, 'Akbarali', 'Akbarali484@gmail.com', '528925089', '1', '199.0000', 'Abu Dhabi', 'Kalidia behind baskin robins', '', '2019-10-21 19:00:13', 0x30),
(1399, 'Ali saeed rashed ', 'a.almansoori737@gmail.com', '0507322240', '1', '199.0000', 'Abu Dhabi', 'Almushrf', '', '2019-10-22 03:17:02', 0x30),
(1401, 'Khaled', 'khalid_m_alhosani@hotmail.com', '1506620505', '1', '199.0000', 'Abu Dhabi', 'Khalifa city A street 33 villa 3', '', '2019-10-22 07:46:48', 0x30),
(1403, 'Azim Shaik ', 'azim7878@hotmail.com', '555528834', '1', '199.0000', 'Dubai', 'Flat #119 building 7 Samari residence ras al khor dubai', '', '2019-10-22 12:08:38', 0x30),
(1405, 'SULTAN ALSUWAIDI ', 'Bu_hessa@hotmail.com', '0504556661', '1', '199.0000', 'Sharjah', 'Aldarary Street 44 home 33', 'Lait brawn colour ', '2019-10-22 15:00:31', 0x30),
(1407, 'Ahmad Darwish', 'darwish95@hotmail.com', '505580194', '1', '199.0000', 'Dubai', 'Dubai.-Ras Alkhor -Fruits&Vegetables market..union coop gate 3', '', '2019-10-22 16:13:25', 0x30),
(1409, 'Gowriselladurai', 'Gowriselladurai@gmail.com', '0564430374', '1', '199.0000', 'Dubai', 'Ajility logistic ', 'How you will dilivery', '2019-10-22 17:13:49', 0x30),
(1411, 'Ali Mohammed ', 'raiege1@gmail.com', '529928889', '1', '199.0000', 'Sharjah', 'Zakhir Tower 1 flat 3311', 'I want dark brown ', '2019-10-22 18:12:52', 0x30),
(1413, 'Sultan', 'Sultan.bn.abdulla@gmail.com', '501444219', '1', '199.0000', 'Abu Dhabi', 'Mohammed Bin Zayed City ', '', '2019-10-22 21:19:22', 0x30),
(1415, 'Mohamed ', 'Al3abr1977abudhabi@gamil.com', '501162264', '1', '199.0000', 'Abu Dhabi', ' ????11??? ??? ??????', '', '2019-10-22 22:20:08', 0x30),
(1417, 'Armen', 'av.simonyan@yahoo.com', '505973703', '1', '199.0000', 'Sharjah', 'Sharjah Airport Free Zone', '', '2019-10-22 22:50:35', 0x30),
(1419, 'hassan', 'hassannaser857@gmail.com', '0562011128', '1', '199.0000', 'Sharjah', 'Sharjah', '', '2019-10-23 02:50:28', 0x30),
(1421, 'Sultan', 'sultannnn.2020@gmail.com', '567006754', '1', '199.0000', 'Sharjah', 'Sgi', 'Ddd', '2019-10-23 03:20:37', 0x30),
(1423, 'mona', 'shamani00@hotmail.com', '0544041866', '1', '199.0000', 'Abu Dhabi', 'shakbot city ', '', '2019-10-23 12:40:17', 0x30),
(1425, 'Rijo sunny', 'rijosunny@voltas.com', '524347582', '1', '199.0000', 'Dubai', 'The one tower 1902 near to Mercure hotel barsha heights', '', '2019-10-23 14:20:22', 0x30),
(1427, 'Chameera ', 'Chefchameera007@gmail.com', '558596433', '1', '199.0000', 'Dubai', 'Sheratoncreek Baniyas rode dubai ', '', '2019-10-23 14:29:13', 0x30),
(1429, '??????? ????', 'King5199449@hotmail.com', '527357000', '1', '199.0000', 'Sharjah', 'Near 134 in front of Sharjah club', '', '2019-10-24 01:47:09', 0x30),
(1431, 'Emmie Rose Caro', 'babesbenguan@yahoo.com', '507968157', '1', '199.0000', 'Sharjah', 'Villa #1875 Area5 Muscat St. Al Seyouh Suburb Maleha road', 'Black color only? If brown color available I want  brown color', '2019-10-24 04:29:30', 0x30),
(1433, 'Osman ', 'Zumahassan47@gmail.com', '529502785', '1', '199.0000', 'Dubai', 'Behind Bustan Building besides Al Madina Police station Ajman ', '', '2019-10-24 14:36:48', 0x30),
(1435, 'Khalid balooshi ', 'balooshi411@gmail.com', '553155838', '1', '199.0000', 'Ajman', 'Near marhaba supermarket rashidiya 3,ajman ', '', '2019-10-24 19:23:14', 0x30),
(1437, 'Khalaf ali', 'Khalafali0073@gmail.com', '504490970', '1', '199.0000', 'Abu Dhabi', ' Alain -alsarooj-st 28 almshal  home 11', '', '2019-10-25 00:56:47', 0x30),
(1439, 'Abdulla', 'Abdulaajamal4108@gmail.com', '0555777821', '1', '199.0000', 'Dubai', 'Alrahdea', '', '2019-10-25 04:50:18', 0x30),
(1441, 'Butti Mubarak ', 'Buttimns@gmail.cim', '556221199', '1', '199.0000', 'Abu Dhabi', 'New shahama ', 'Call me 2 hours b4 delivery. ', '2019-10-25 05:05:44', 0x30),
(1443, 'Ali', 'Magsi.com@gmail.com', '509322477', '1', '199.0000', 'Dubai', 'Bur dubai ', 'No', '2019-10-25 06:00:23', 0x30),
(1445, 'Hilal Alnagbi ', 'Hilal.12@hotmail.com', '1506499930', '1', '199.0000', 'Fujairah', 'Kalba. Albateen', '', '2019-10-25 12:32:01', 0x30),
(1447, 'Khaled', 'Khaled.uae@yahoo.com', '0525000003', '1', '199.0000', 'Ajman', 'Alrawda 2', 'No', '2019-10-25 14:43:55', 0x30),
(1449, 'Anvar ', 'Anvarbronze@gmil.com', '553312010', '1', '199.0000', 'Abu Dhabi', 'Hamdaan St smat taipig ', '', '2019-10-25 15:39:29', 0x30),
(1451, 'Shamsa', 'Shamsaalfalahi1738@yahoo.com', '506151712', '1', '199.0000', 'Abu Dhabi', 'Khalifa city A', '', '2019-10-26 05:28:04', 0x30),
(1453, 'Shamsa', 'Shamsaalfalahi1738@yahoo.com', '545882448', '1', '199.0000', 'Abu Dhabi', 'Khalifa city A villa 115', '', '2019-10-26 05:40:38', 0x30),
(1455, 'shamsa', 'shamsaalfalahi1738@yahoo.com', '545882778', '1', '199.0000', 'Abu Dhabi', 'khalifa city A', '', '2019-10-26 05:42:48', 0x30),
(1457, 'Mohammed ', 'm018.jarallh@gmail.com', '558743646', '1', '199.0000', 'Abu Dhabi', 'Alshamkha', '', '2019-10-26 06:56:33', 0x30),
(1459, 'Hamad Ali ', 'Hamad.alzahmi7@gmail.com', '1507173333', '1', '199.0000', 'Dubai', 'Um sqaim1, villa 62. Um alcheuf road ', 'Call b4 delivery,, buy one get one free', '2019-10-26 09:18:15', 0x30),
(1461, 'Norul islam ', 'Norulislam82@yahoo.com', '0508770682', '1', '199.0000', 'Dubai', 'Ras al khor ', '', '2019-10-26 16:17:59', 0x30),
(1463, 'Damber Gurung', 'damz11grg@gmail.com', '558412759', '1', '199.0000', 'Dubai', 'Emirates flight catering staff accomodation,jebali industrial area-1,jebali', '', '2019-10-27 01:35:01', 0x30),
(1465, 'Dori', 'Dori.murad@ajmanded.ar', '559590444', '1', '199.0000', 'Fujairah', 'dori.murad@ajmanded.ae', '', '2019-10-27 05:07:23', 0x30),
(1467, 'Raja M', 'Kirubamurugaiyan@gmail.com', '528239779', '1', '199.0000', 'Dubai', 'AL krama post office', '', '2019-10-27 08:30:36', 0x30),
(1469, 'Raju', 'Rajuobh@gmail.com', '563311234', '1', '199.0000', 'Dubai', 'Sharjah ', '', '2019-10-27 14:25:37', 0x30);
INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `bottles`, `price`, `city`, `address`, `question`, `created_on`, `is_deleted`) VALUES
(1471, 'saeed alsereidi ', '5264442@gmail.com', '505264442', '1', '199.0000', 'Fujairah', 'Dibba', '', '2019-10-28 07:17:20', 0x30),
(1473, 'Sukhjinder singh', 'Nagrasukhi28@gmail.com', '0522935500', '1', '199.0000', 'Dubai', 'Dip2 talal Markit', 'Talal markit\r\n', '2019-10-28 08:44:52', 0x30),
(1475, 'Omar Mattar', 'af.ma11@yahoo.com', '506556678', '1', '199.0000', 'Dubai', 'Towar 3 ...street no. 11 .villa no.35', '', '2019-10-28 08:46:32', 0x30),
(1477, 'Ibrahim Noor Mohammed', 'Ibrahimmohammed1010@gmail.com', '0529111177', '1', '199.0000', 'Ajman', 'Near Academic School Ajman ', '', '2019-10-28 09:23:10', 0x30),
(1479, 'Ibrahim Noor Mohammed ', 'Ibrahimmohammed1010@gmail.com', '0529111177', '1', '199.0000', 'Ajman', 'Near Academic School Ajman', '', '2019-10-28 09:27:55', 0x30),
(1481, 'Jess', 'brojunyecla@gmail.com', '503575805', '1', '199.0000', 'Dubai', 'MFC Logistics Center, Jebel Ali Freezone near Gate 5', '', '2019-10-28 09:37:42', 0x30),
(1483, 'Saad', 'Saadyamak@hotmail.com', '554027070', '1', '199.0000', 'Abu Dhabi', 'Shahamah hydra village villa 4064', '', '2019-10-28 10:32:23', 0x30),
(1485, 'Mohammad salim dahri ', 'alansariumrah@gmail.com', '529394442', '1', '199.0000', 'Dubai', 'Deira', 'In how many days you can deliver ?', '2019-10-28 10:42:47', 0x30),
(1487, 'Saleem ', 'Saleembhutto13@gmail.com', '555546947', '1', '199.0000', 'Dubai', 'Deira ', '', '2019-10-28 10:54:05', 0x30),
(1489, 'Ishaq ', 'Muhahammadishaq204@gmail.com', '557506318', '1', '199.0000', 'Sharjah', 'Butina sharjha ', 'Any warranty nd garanty ', '2019-10-28 12:13:23', 0x30),
(1491, 'Baldev singh ', 'Baldevsinghuae@yahoo.com', '552660671', '1', '199.0000', 'Dubai', 'Cinn city', 'No', '2019-10-28 13:01:24', 0x30),
(1493, 'Karim ', 'jazli.rachid@gmail.com', '555181838', '1', '199.0000', 'Dubai', 'Amman street ', 'One light brown and one dark brown ', '2019-10-29 02:11:55', 0x30),
(1495, 'Giovanni', 'Digesugiovanni@yahoo.com', '505087640', '1', '199.0000', 'Dubai', 'Damac cour jardin 1310 flat ', '', '2019-10-29 03:38:04', 0x30),
(1497, 'Giovanni ', 'Digesugiovanni@yahok.com', '505087640', '1', '199.0000', 'Dubai', 'Damac cour jardin 1310 flat ', '', '2019-10-29 03:39:54', 0x30),
(1499, 'Marwa', 'marwanajjar2016@yahoo.com', '563170202', '1', '199.0000', 'Dubai', 'Deira ', '1- If I like the product how can I order again ?\r\n2- made in where ? ', '2019-10-29 03:50:18', 0x30),
(1501, 'Hatem', 'h.omari46@gmail.com', '508458533', '1', '199.0000', 'Dubai', 'Auris Hotel Apartments Deira ', 'natural black ', '2019-10-29 05:33:44', 0x30),
(1503, 'Tarlok singh', 'Tarloksingh1660dxb@yahho.com', '524651660', '1', '199.0000', 'Dubai', 'Musala post office ', '', '2019-10-29 05:40:36', 0x30),
(1505, 'Ali', 'Althafalikutty96@gmail.com', '1558670102', '1', '199.0000', 'Dubai', 'One&only hotel palm ', '', '2019-10-29 09:50:29', 0x30),
(1507, 'Adnan hamza ', 'Tvadnan@yahoo.com', '555565318', '2', '399.0000', 'Dubai', 'Dubai studio City- building 4 suite 504', '', '2019-10-29 11:43:23', 0x30),
(1509, 'Moza', 'Drb_alma7ba@hotmail.com', '0503035588', '1', '199.0000', 'Ras Al Khaimah', 'Al Dhait south   / block 7', '', '2019-10-29 16:55:24', 0x30),
(1511, 'Saif mosabih', 'Saif-209@live.com', '562809999', '1', '199.0000', 'Dubai', 'Um sqeem 2', '', '2019-10-29 18:12:55', 0x30),
(1513, 'Obaid Almuhairi ', 'dxbalmehairi@gmail.com', '563657788', '1', '199.0000', 'Dubai', 'Albarari.  living legend villa D83 ', '_', '2019-10-30 01:26:23', 0x30),
(1515, 'MD MAIN UDDIN ', 'smrelax@gmail.com', '509832727', '1', '199.0000', 'Dubai', 'Paloma Blanca hotel apartments llc', '', '2019-10-30 07:40:41', 0x30),
(1517, 'Heba', 'Good_a27@live.com', '558180844', '1', '199.0000', 'Dubai', 'Gragan mart dubai', 'Gearn ', '2019-10-30 07:45:20', 0x30),
(1519, 'esmaeil ', 'esmaeilas@yahoo.com', '552484664', '1', '199.0000', 'Dubai', 'dubai', '', '2019-10-30 09:53:22', 0x30),
(1521, 'Amna ateej', 'raqoy_87@icloud.com', '506646215', '3', '599.0000', 'Sharjah', 'Al Batayih, United Arab Emirates', '', '2019-10-30 10:10:20', 0x30),
(1523, 'AbdAlla Babikir', 'abd2025@gmail.com', '506258500', '1', '199.0000', 'Sharjah', 'Altawon', '', '2019-10-30 12:16:20', 0x30),
(1525, 'Ibrahim ', 'finacehone@yahoo.co.uk', '555981413', '1', '199.0000', 'Dubai', 'Ramada Jumeirah Hotel Al mina Road ', 'When are you delivering? ', '2019-10-30 13:58:11', 0x30),
(1527, 'Cheriyan ', 'Cheriyanthom@rediffmail.com', '551007519', '1', '199.0000', 'Dubai', 'Flat G29, Al Wasl building R500, Muhaisnah 4, near Indian Academy School', '', '2019-10-30 22:47:57', 0x30),
(1529, 'Cheriyan ', 'Cheriyanthom@rediffmail.com', '551007519', '1', '199.0000', 'Dubai', 'G 29, wasl 500 building,  muhaisnah 4', 'Location: near Indian Academy School \r\nMUHAISNAH ', '2019-10-30 22:50:00', 0x30),
(1531, 'Majid', 'Majidjalali@yahoo.com', '507856988', '1', '199.0000', 'Dubai', 'Villa 16a street 81 Al baada area Alwasal road ', '', '2019-10-31 01:45:18', 0x30),
(1533, 'MATHEW GEORGE', 'mathewbarjeel@gmail.com', '1505983137', '1', '199.0000', 'Dubai', 'Ummramol', '', '2019-10-31 05:32:13', 0x30),
(1535, '?????', 'Alhan.uae@gemal.com', '0507611116', '2', '399.0000', 'Dubai', '??? ??????? ??????? ??????? ????? ??', '', '2019-11-01 04:28:57', 0x30),
(1537, 'Atef', 'mohamedadcb@yahoo.com', '568880536', '1', '199.0000', 'Dubai', 'Rigga . ADCB bank', 'Black one', '2019-11-01 07:34:05', 0x30),
(1539, 'Mohammed ', 'Judahmed321@gmeil.Com', '589717607', '1', '199.0000', 'Dubai', 'Ras alhoor ', '', '2019-11-01 08:20:14', 0x30),
(1541, 'Mohammed ', 'Judahmed321@gmai.Com', '589717607', '1', '199.0000', 'Dubai', 'Ras alhor', '', '2019-11-01 10:51:32', 0x31),
(1543, 'Mohammed ', 'Judahmed321@gmai.com', '589717607', '1', '199.0000', 'Sharjah', 'Alnahda', 'Black colour ', '2019-11-01 10:56:50', 0x31),
(1545, 'Mohammed ', 'Judahmed321@gmai.com', '0589717607', '1', '199.0000', 'Sharjah', 'Alnahda', 'No', '2019-11-01 11:00:16', 0x30),
(1547, 'Sugath Perera ', 'Sugathp1980@yahoo.com', '505186344', '1', '199.0000', 'Dubai', 'Al Quoz 1 villa number 33', '', '2019-11-01 15:46:43', 0x30),
(1549, 'Saeedgulsb', 'Saeedgulab@555gmail.com', '552393940', '1', '199.0000', 'Dubai', 'Rasalkhor', '', '2019-11-03 13:53:33', 0x30),
(1551, 'Mouza', 'thuraya.alshamsi@gmail.com', '506615352', '3', '599.0000', 'Abu Dhabi', 'Abudhabi', '', '2019-11-04 08:42:42', 0x30),
(1553, 'Babar ali', 'Warraichali135@gmail.com', '561926994', '1', '199.0000', 'Dubai', 'German international school academic city dubai near Silicon dubai', '', '2019-11-05 01:49:52', 0x30),
(1555, '?? ???? ', 'Umalmur2017@gmail.com', '059341888', '1', '199.0000', 'Dubai', '???????? ??????', '??? ????', '2019-11-05 10:16:29', 0x30),
(1557, 'Musabbeh ', 'alainawi123@gmail.com', '506661052', '3', '599.0000', 'Abu Dhabi', 'Musrf', '', '2019-11-05 11:23:55', 0x30),
(1559, 'Sherif khan', 'Sherifkhan1@gmail.com', '555526412', '1', '199.0000', 'Dubai', 'Office 3808, The Citadel Tower, Business Bay', '', '2019-11-06 01:42:13', 0x30),
(1561, 'ABDULRAHMAN', 'Alkirz7@yahoo.com', '507788864', '1', '199.0000', 'Sharjah', 'Sharjah', 'Sharjah', '2019-11-07 22:18:39', 0x30),
(1563, 'Jamila mahmood ', 'queenvmax@hotmail.com', '0508062288', '1', '199.0000', 'Ajman', 'Al Jurf Ajman Hamadiya 2', 'Is this buy one and 1 is free only 199 derhams', '2019-11-08 01:06:57', 0x30),
(1565, 'Farooq', 'Muhammadjamshed8787@gamil.com', '501179667', '1', '199.0000', 'Dubai', 'Warsan3', '', '2019-11-08 03:19:21', 0x30),
(1567, '?? ???? ???????', 'alblwshyamrashd1@gmail.com', '0507575377', '1', '199.0000', 'Sharjah', '??????? ????? ????? ?????? ?? ????? ??????? ???? ?????? ??? ??? 51 ', '', '2019-11-08 04:15:04', 0x30),
(1569, 'Rashid', 'Rashidkareem08@gmail.com', '503732357', '1', '199.0000', 'Sharjah', '??????? ??????? ???? ???', '', '2019-11-08 08:05:00', 0x30),
(1571, '????', 'Notme8310@gmail.com', '0524111110', '1', '199.0000', 'Sharjah', 'Aldhaid', '', '2019-11-08 10:46:10', 0x30),
(1573, 'Jabbar', 'Jabbar1505@gmail.com', '558180515', '1', '199.0000', 'Abu Dhabi', 'Tourist club Abu Dhabi mall ', 'Dark brown ', '2019-11-09 01:37:12', 0x30),
(1575, 'Jabbar ', 'Jabbar1505@gmail.com', '558180514', '1', '199.0000', 'Abu Dhabi', 'Tourist club Abu Dhabi mall ', 'Dark brown ', '2019-11-09 01:40:21', 0x30),
(1577, 'huda juma ', 'casual.day6@gmail.com', '506742322', '1', '199.0000', 'Dubai', 'Satwa- street 11- seka 22A - house no 28', '', '2019-11-09 03:34:35', 0x30),
(1579, 'Jed', 'jad.alsakka@yahh.com', '1551385562', '1', '199.0000', 'Dubai', 'jad.alsakka@yahoo.com', '', '2019-11-09 05:15:24', 0x30),
(1581, 'Jabbar', 'Jabbar1505@gmail.com', '558180514', '1', '199.0000', 'Abu Dhabi', 'Tourist club abudhabi malls ', 'Dark brown ', '2019-11-09 05:28:22', 0x30),
(1583, 'Jabbar', 'Jabbar1505@gmail.com', '558180514', '1', '199.0000', 'Abu Dhabi', 'Tourist club abudhabi malls ', 'Dark brown ginger extract shampoo ', '2019-11-09 05:34:17', 0x30),
(1585, 'Mohamed shukoor ', 'Seenanoormahal@gmail.com', '506709644', '1', '199.0000', 'Fujairah', 'Fujiarah. Ghorfa st', '', '2019-11-09 07:52:19', 0x30),
(1587, 'Saif ', 'ad0504920209@gmail.com', '504920209', '1', '199.0000', 'Abu Dhabi', 'Al Falah Street', 'No', '2019-11-09 10:27:10', 0x30),
(1589, 'Buthaina', 'Donuae1@gmail.com', '506523535', '1', '199.0000', 'Dubai', 'Alwarqaa 2 house no.19 st.36b', '', '2019-11-09 11:24:38', 0x30),
(1591, 'Abdulaziz Saeed ', 'abdulazizsaeed40@gmail.com', '554040407', '1', '199.0000', 'Dubai', '???? ???????', '', '2019-11-09 12:37:59', 0x30),
(1593, 'Khadar', 'khadareo@gmail.com', '501106264', '1', '199.0000', 'Dubai', 'Dubai', '', '2019-11-09 12:49:30', 0x30),
(1595, 'Faisal Altaf', 'faisalaltaf@gmail.com', '0552529955', '1', '199.0000', 'Dubai', 'faisalaltaf@me.com', '', '2019-11-09 14:19:01', 0x30),
(1597, 'Muhammad', 'Miftkhar786@yahoo.com', '0545019502', '1', '199.0000', 'Dubai', 'Dubai satwa bas astasan', '', '2019-11-09 17:10:42', 0x30),
(1599, 'Muhammad', 'Miftkhar786@yahoo.com', '0545019502', '1', '199.0000', 'Dubai', 'Dubai satwa bas astasan', 'Darak baron', '2019-11-09 17:11:52', 0x30),
(1601, 'Fahim ', 'fahimshewa@gmail.com', '503797656', '1', '199.0000', 'Dubai', 'Al bayan bldg manhkool burduabi', 'Can u send me dark brown if u have ', '2019-11-09 23:22:54', 0x30),
(1603, 'Hamza Kutty', 'hamza@almariah.com', '0558802380', '1', '199.0000', 'Dubai', 'Musaffah Industrial Area, M-14', 'is this shampoo colored skin also?', '2019-11-12 03:51:46', 0x30),
(1605, 'Hamza Kutty', 'hamza@almariah.com', '0558802380', '1', '199.0000', 'Abu Dhabi', 'Musaffah Industrial Area, M-14', '', '2019-11-12 03:52:30', 0x30),
(1607, '???? ????', 'muhammedatik6363@gmail.com', '0509106363', '1', '199.0000', 'Dubai', 'Ok ', 'Ok', '2019-11-13 17:37:55', 0x30),
(1609, 'Najat Alshayji ', 'n.a.alshayji@gmail.com', '506531929', '1', '199.0000', 'Dubai', 'UAE dubai khawaneej 1 st. 158 house no.  11', 'No', '2019-11-13 18:23:02', 0x30),
(1611, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', NULL, '2019-11-14 04:22:19', 0x31),
(1613, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', NULL, '2019-11-14 04:29:34', 0x31),
(1615, 'Abdul Latif', 'latifcivil@gmail.com', '0569964761', '1', '199.0000', 'Abu Dhabi', 'New shahama opsit Deerfield Mall', 'Every day Wash or weekend', '2019-11-14 11:33:33', 0x30),
(1617, 'Muhammad ', 'Miftkhar786@yahoo.com', '0545019502', '1', '199.0000', 'Dubai', 'Satwa', 'No', '2019-11-14 13:41:08', 0x30),
(1619, 'Umsaif', 'Umsaifalzaabi782@gmail.com', '506430307', '2', '399.0000', 'Abu Dhabi', 'Alain', '', '2019-11-14 21:52:18', 0x30),
(1621, 'Khameis ', 'Milih75@hotmail.com', '506292991', '1', '199.0000', 'Fujairah', 'Dibba', '', '2019-11-14 22:42:39', 0x30),
(1623, 'Firozbabu', 'jesufiroz469@gmail.com', '0543646543', '1', '199.0000', 'Abu Dhabi', 'Alain.. meziyad. serekhat.near muroor driving school', 'Must delivery. satarday..9am to.5pm', '2019-11-14 23:53:15', 0x30),
(1625, 'Jihad Jaffar', 'Jihad.jaffar@hotmail.com', '508141814', '1', '199.0000', 'Abu Dhabi', 'Khalifa Street, cooperative society building, next to ENBD', '', '2019-11-15 02:06:57', 0x30),
(1627, 'Rafeek', 'rafeeknalak@gmail.com', '0508853853', '1', '199.0000', 'Dubai', 'AL qusais damaskes road ', 'Ane said afuct ', '2019-11-15 08:08:56', 0x30),
(1629, 'Median Alamarin', 'me.amarin@hotmail.com', '504189966', '1', '199.0000', 'Abu Dhabi', 'Musafah  M35 behaind KM', '1 ??? ???? ( ???? )\r\n1 ????', '2019-11-15 08:47:17', 0x30),
(1631, 'Gibish Chandran ', 'kkannangvr@gmail.com', '544110116', '1', '199.0000', 'Umm Al Quwain', 'Umm Al Quwain ', '', '2019-11-15 16:22:20', 0x30),
(1633, 'Adam navarra ', 'Adsmnabrra@yahoo.clm', '501620542', '3', '599.0000', 'Dubai', 'Lohta building Deira room 505', 'Please thanks ', '2019-11-16 01:19:35', 0x30),
(1635, 'Khalifa Ali', 'Khalifaa238@gmail.com', '505307975', '1', '199.0000', 'Fujairah', 'Fuj', '', '2019-11-16 01:59:47', 0x30),
(1637, 'Fatma bin tamim', 'scorpion-vip7@hotmail.com', '567891188', '1', '199.0000', 'Dubai', 'South barsha 1', '', '2019-11-16 04:32:04', 0x30),
(1639, 'Abdul hameed', 'fananabudhabi@yahoo.com', '557324620', '1', '199.0000', 'Abu Dhabi', 'Mafraq Waziristan hotel', '', '2019-11-16 10:42:46', 0x30),
(1641, 'Hameed', 'fananabudhabi@yahoo.com', '557324620', '1', '199.0000', 'Abu Dhabi', 'Mafraq Waziristan hotel', '', '2019-11-16 10:44:55', 0x30),
(1643, 'Ali', 'Alhaya6416@gmail.com', '7150611716', '1', '199.0000', 'Abu Dhabi', 'Almashrf  vill 111', 'No', '2019-11-17 09:38:41', 0x30),
(1645, 'Seblewongel ', 'Sebliy2018@gmail.com', '556196739', '1', '199.0000', 'Dubai', 'Bmtc building ', '', '2019-11-18 11:43:32', 0x30),
(1647, 'Amin', 'kook09@yahoo.com', '509018698', '1', '199.0000', 'Abu Dhabi', 'Alain sweihan', '', '2019-11-18 15:35:25', 0x30),
(1649, '????? ???? ?????', 'Girl_of_heard@hotmail.con', '505168588', '1', '199.0000', 'Ras Al Khaimah', 'Al zaith', '', '2019-11-19 06:06:04', 0x30),
(1651, 'Badria Baneyas', 'm.bbaneyas@gmail.com', '502011615', '1', '199.0000', 'Ras Al Khaimah', 'Al Mataf Rd', 'hawse', '2019-11-19 06:34:43', 0x30),
(1653, 'Farooq', 'Muhammadjamshed8787@gamil.com', '501179667', '2', '399.0000', 'Dubai', 'Warsan 3', 'I needed', '2019-11-20 00:16:25', 0x30),
(1655, 'Sivakumar', 'Shivsivakumar@yahoo.com', '506458785', '1', '199.0000', 'Dubai', 'Gs 9, bur dubai', '', '2019-11-20 14:09:28', 0x30),
(1657, 'Saleh abdulla', 'salamerf@gmail.com', '501253636', '1', '199.0000', 'Abu Dhabi', 'WTC mall Abudhabi adnovc office 38-42  ', 'Buy one get one free the sama color black is need ', '2019-11-20 16:32:34', 0x30),
(1659, 'Saleh abdulla', 'salamerf@gmail.com', '501253636', '1', '199.0000', 'Abu Dhabi', 'WTC Mall khalifah street Adnoc office 38-53 Abudhabi ', 'Buy one get one free ...need the same black color .... ', '2019-11-20 16:35:18', 0x30),
(1661, 'PARVEZ ', 'Parvezpadesi@gmali.com', '545682358', '1', '199.0000', 'Dubai', 'Al Satwa ', '', '2019-11-20 16:39:59', 0x30),
(1663, 'Osman', 'Amooooorah_111@hotmail.com', '502357700', '1', '199.0000', 'Abu Dhabi', 'Amooooorah_111@hotmail.com', '', '2019-11-21 02:01:39', 0x30),
(1665, 'Shaikha', 'Shaikha.ali.al@gmail.com', '503200310', '1', '199.0000', 'Abu Dhabi', 'Mohammed bin Zayed City ', '', '2019-11-21 11:48:24', 0x30),
(1667, '???? ??? ', 'hamda75ali@gmail.com', '506988388', '1', '199.0000', 'Abu Dhabi', 'Al Ain ', '', '2019-11-21 15:37:11', 0x30),
(1669, 'rudra prasai', 'faraqhussan@gmail.com', '545991780', '1', '199.0000', 'Abu Dhabi', 'Alain square nearby hazza bin Zayed stadium plot - 5 ', '', '2019-11-21 18:27:51', 0x30),
(1671, 'Wafa', 'Luxuryluxurywow18@gmail.com', '506666120', '1', '199.0000', 'Dubai', 'Alanara st', '', '2019-11-21 23:18:11', 0x30),
(1673, 'Al baloushi', 'Gh.baloch@icloud.com', '502727991', '1', '199.0000', 'Dubai', 'Al Asayel street villa no124', '', '2019-11-22 02:49:16', 0x30),
(1675, 'maninder singh', 'manindersingh1979@gmail.com', '553733966', '1', '199.0000', 'Dubai', 'parco', '', '2019-11-22 14:34:31', 0x30),
(1677, '???? ????', 'alwared2015@hotmail.com', '506669551', '1', '199.0000', 'Sharjah', '?????', '', '2019-11-23 04:03:34', 0x30),
(1679, 'Yashwant Negi', 'Yashnegi@hotmail.com', '505981182', '1', '199.0000', 'Dubai', 'FORTUNE PARK Hotel, Dubai Investments Park, Dubai', 'Looking to order black hair dye shampoo', '2019-11-24 23:07:42', 0x30),
(1681, 'Adnan', 'Dxb14@hotmil.com', '505020301', '1', '199.0000', 'Dubai', 'Dxb14', '', '2019-11-25 00:28:01', 0x30),
(1683, 'Latifa', 'Latifalameri321@icloud.com', '555536658', '1', '199.0000', 'Abu Dhabi', 'Alain/jabal hafait/fil10/astrat 84', '', '2019-11-25 02:13:19', 0x30),
(1685, 'Hooma Khalid ', 'Humakhalid.78@gmail.com', '502799779', '1', '199.0000', 'Dubai', 'Oud al mateena 3 villa 267 Amman Street Dubai ', 'This buy 1 get 1 free', '2019-11-25 03:08:26', 0x30),
(1687, 'Hakim', 'Hekim.nezami@hotmail.com', '585989951', '1', '199.0000', 'Dubai', 'Airport roud al naboodah building showroom 1st garhouud dubai', '', '2019-11-25 04:03:59', 0x30),
(1689, 'Yogesh ', 'jumaspareparts@gmail.com', '556031420', '1', '199.0000', 'Dubai', 'Baniyas deira opp hotel Mount Royal ', '', '2019-11-25 05:10:12', 0x30),
(1691, 'Ansar', 'Ansarrehman382@yahoo.com', '586402954', '1', '199.0000', 'Dubai', 'Dubai drydocks world', 'How many days do you want to deliver ', '2019-11-25 09:59:18', 0x30),
(1693, '???? ???????', 'ms6430000@hotmail.com', '506430000', '1', '199.0000', 'Ajman', '????? ????', '', '2019-11-25 14:53:57', 0x30),
(1695, 'Ammy', 'Amritpall@34gamil.com', '0524581981', '1', '199.0000', 'Dubai', 'Jabel Ali parko', '', '2019-11-25 19:39:43', 0x30),
(1697, 'Khalid Salha ', 'sana_mf31@yahoo.com', '506826927', '1', '199.0000', 'Abu Dhabi', 'Al falah St. Beside ware mart - Abu Dhabi ', '', '2019-11-25 23:10:13', 0x30),
(1699, 'Khalid Salha ', 'sana_mf31@yahoo.com', '506826927', '1', '199.0000', 'Abu Dhabi', 'Al Falah St. Suzuki showroom building ', '', '2019-11-25 23:11:55', 0x30),
(1701, '???? ???? ????', 'Uae2010@hotmail.com', '502828006', '3', '599.0000', 'Dubai', '?????? ', '?????? ?????? ?????? ???????', '2019-11-26 08:58:05', 0x30),
(1703, '?????? ???????', 'Salltana20020@hotmail.com', '501868289', '2', '399.0000', 'Ras Al Khaimah', '????', 'Call me', '2019-11-26 08:59:38', 0x30),
(1705, 'Yasser', 'Yasserbdm@yahoo.com', '557001200', '1', '199.0000', 'Dubai', 'Tecom , Damac smart height towers ', 'Light brown ', '2019-11-26 09:47:14', 0x30),
(1707, 'Khaled alhosani ', 'khaledalhosani1956@icloud.com', '502161414', '1', '199.0000', 'Abu Dhabi', 'Khalifa sity alforsan', '', '2019-11-26 09:58:38', 0x30),
(1709, 'Damayantha ', 'Damayanthasureth@gmail.com', '558061949', '1', '199.0000', 'Dubai', 'Albarsha 2 mall of the emirates ', 'Buy one get one free OK it mean 2 bottle', '2019-11-26 12:10:33', 0x30),
(1711, 'Muhammad ', 'Momo69993@gmail.com', '0547177177', '1', '199.0000', 'Ajman', 'Villa on 19', '', '2019-11-26 14:27:04', 0x30),
(1713, 'Haimd', 'Zainparkar1915@gmail.com', '0557863031', '1', '199.0000', 'Sharjah', 'Al nouf sharjha', 'Hi', '2019-11-26 14:41:11', 0x30),
(1715, 'Shaan', 'shaneerrm@gmail.com', '502536745', '1', '199.0000', 'Dubai', 'Arabian ranches,nearest Bab Al Shams Resort Hotel', '', '2019-11-26 22:21:36', 0x30),
(1717, ' Essa yosuf', 'essaalmarzooqi3@gmail.com', '506650155', '1', '199.0000', 'Dubai', 'Alwarqa 4 ', '', '2019-11-27 00:45:22', 0x30),
(1719, 'Sthiti Sarangi', 'sarangisthiti@gmail.com', '586178486', '1', '199.0000', 'Dubai', 'Ngi house 701 deriacity center ', '', '2019-11-27 02:35:03', 0x30),
(1721, 'Sthiti sarangi', 'sarangisthiti@gmail.com', '586178486', '1', '199.0000', 'Dubai', 'Ngi house 701 deria city center', '', '2019-11-27 02:35:58', 0x30),
(1723, 'Azad', 'Nilakashdubai@gmail.com', '558901012', '1', '199.0000', 'Sharjah', 'Maliha road industrial 3', 'Made of origin and have any discount please', '2019-11-27 02:54:21', 0x30),
(1725, 'Ayat', 'Eng_Ayatsaleh.83@yahoo.com', '569393293', '1', '199.0000', 'Ras Al Khaimah', 'Mina AL arab', 'So silly I put my email address it given not correct', '2019-11-27 03:45:24', 0x30),
(1727, 'baassoul mohamed amine', 'baassoulmohamedamine@gmail.com', '529352954', '1', '199.0000', 'Dubai', 'Jbr 2 remal 1 app 2106', '', '2019-11-27 04:26:17', 0x30),
(1729, 'Saeed ur Rehman ', 'Saeedkhandxb@gmil.com', '582070788', '1', '199.0000', 'Dubai', 'Abuhil rodvila number 136', 'Color black shampoo any side effect\r\nScalp damage ', '2019-11-27 04:30:26', 0x30),
(1731, 'Saeed ur Rehman ', 'Saeedkhandxb@gmil.com', '582070788', '1', '199.0000', 'Dubai', 'Deira Dubai abuhil road villa 136', 'Dark brown ', '2019-11-27 06:53:12', 0x30),
(1733, '???? ????????? ????? ?????', 'ghazishaalan@gmail.com', '1544910811', '1', '199.0000', 'Dubai', '???? ?? ???? ?????? ??? 2 ???? 141 ???? ??? 1 ???? ?? ???? ???', '', '2019-11-27 10:25:13', 0x30),
(1735, 'Joel del castillo', 'Joeldelcastillo81@yahoo.com', '502451480', '1', '199.0000', 'Dubai', 'Street 8,building175,flt309,discovery garden,jebel ali,dubai', '', '2019-11-28 02:41:11', 0x30),
(1737, 'Fateema', 'Blackdana531@gmail.com', '506118784', '2', '399.0000', 'Dubai', 'UAE Abu Dhabi albateen', '', '2019-11-28 12:43:47', 0x30),
(1739, 'Fateema', 'Blackdana531@gmail.com', '506118784', '2', '399.0000', 'Abu Dhabi', 'Abudhabi albateen', '', '2019-11-28 12:45:14', 0x30),
(1741, 'noushad valancheri', 'noushaddubaippp@gmail.com', '561375480', '1', '199.0000', 'Dubai', 'Dera', '', '2019-11-28 15:44:09', 0x30),
(1743, 'Abdjl jabbar kha', 'Jabbar2002pk200@yahoo.com', '561992522', '1', '199.0000', 'Abu Dhabi', 'Sanayyah ajaber base musafa', 'When deliver please call me I will collect aljaber base musaffa', '2019-11-28 22:48:52', 0x30),
(1745, 'Vijay k', 'antarvijay2@gmail.com', '565465871', '1', '199.0000', 'Sharjah', 'Abu sagara, orange building, flat no. 305', '', '2019-11-28 23:44:49', 0x30),
(1747, 'Rafiullah ', 'rafiu206@gmail.com', '0545249321', '1', '199.0000', 'Fujairah', 'Masafi ', 'if the offer is finished bay one get one free then i no need', '2019-11-29 01:39:12', 0x30),
(1749, 'Farooq', 'Muhammadjamshed8787@gmail.com', '501179667', '1', '199.0000', 'Dubai', 'Warsan3', 'No', '2019-11-29 01:45:20', 0x30),
(1751, 'Ahmed latheef ', 'vettoor.sunil@gmail.com', '582133017', '1', '199.0000', 'Dubai', 'DP WORLD CAMP,JABEL ALI FREE ZONE ,near gate no 7&8', 'I need black colour and how can I use', '2019-11-29 07:41:16', 0x30),
(1753, 'Muhammad Asif ', 'muhamasif@gmail.com', '544476145', '1', '199.0000', 'Abu Dhabi', 'Shabiya ME-10, building 138, flat 404, Mussafah ', '', '2019-11-29 11:48:59', 0x30),
(1755, 'test', 'test@gmail.com', '123456789', '1', '199.0000', 'Dubai', 'test@gmail.com', '', '2019-11-30 02:37:30', 0x31),
(1757, 'abc ', 'test@gmail.com', '234567899', '1', '199.0000', 'Dubai', 'home home', 'test', '2019-11-30 02:38:25', 0x31),
(1759, 'YASIR', 'yasirtest@gmail.com', '3322426688', '1', '199.0000', 'Dubai', '109 test address', 'NO questions test order', '2019-11-30 03:16:07', 0x31),
(1761, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', '', '2019-11-30 03:27:11', 0x31),
(1763, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', '', '2019-11-30 03:47:57', 0x31),
(1765, 'Natarajan', 'nsn.m.group@gmail.com', '544603999', '1', '199.0000', 'Dubai', 'Al nada 2, dubai', '', '2019-11-30 03:52:12', 0x30),
(1767, 'Hala el kordy', 'Hala_elkordy@yahoo.com', '504712646', '1', '199.0000', 'Abu Dhabi', 'Al ain city street 33 vila 8C al jimi al ameria', '', '2019-11-30 08:14:52', 0x30),
(1769, 'Charanjit', 'crattu21@gmail.com', '589495834', '1', '199.0000', 'Dubai', 'Krama  near green gate restaurant ', '', '2019-11-30 22:59:20', 0x30),
(1771, 'Ahmed saleh alsaeedi', 'ahmedalsaeedi4422@gmail.com', '0504451522', '1', '199.0000', 'Abu Dhabi', 'Ahamkai ', '', '2019-11-30 23:54:50', 0x30),
(1773, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', '', '2019-12-01 04:08:41', 0x31),
(1775, 'Rizwan', 'fezza6187@yahoo.com', '566953026', '1', '199.0000', 'Sharjah', 'Sharjah .  15', '', '2019-12-01 05:37:37', 0x30),
(1777, 'Khaled mohamad', 'sameera.1991jk@gmail.com', '543330053', '1', '199.0000', 'Abu Dhabi', 'Mohamad been Zayed city mazyad mazyad mall this ', 'This shampoo originall', '2019-12-01 05:38:35', 0x30),
(1779, 'Rivai', 'muhammadrivaibuginem7@gmail.com', '545108544', '1', '199.0000', 'Ajman', 'Ajman port main gate', '', '2019-12-01 15:14:02', 0x30),
(1781, 'suriya ahamed ', 'crazysuri60@gmail.com', '501281377', '1', '199.0000', 'Abu Dhabi', 'al maroon area ', '', '2019-12-02 12:51:10', 0x30),
(1783, 'suriya ahamed ', 'crazysuri60@gmail.com', '501281377', '1', '199.0000', 'Abu Dhabi', 'almazoon area', 'i need both black thanks', '2019-12-02 12:53:15', 0x30),
(1785, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', 'test\r\n', '2019-12-03 01:58:13', 0x31),
(1787, 'yasir ahmed', 'yasirahmed535@Outlook.com', '000000000', '1', '199.0000', 'Dubai', 'kfkfyukf', 'testing', '2019-12-03 02:02:14', 0x31),
(1789, 'Ahmed latheef sunil', 'vettoor.sunil@gmail.com', '582133017', '1', '199.0000', 'Dubai', 'DP WORLD CAMP,JABEL ALI FREE ZONE ,near gate no 7&8', 'This is second time sending  message you one week before order 1 bottle ', '2019-12-04 08:05:55', 0x30),
(1791, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', '', '2019-12-04 13:10:30', 0x31),
(1793, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', '', '2019-12-06 09:14:47', 0x30),
(1795, 'Lour salamoun ', 'Lour.salamoun@outlook.com', '507900555', '1', '199.0000', 'Abu Dhabi', 'Al markaziya, althoughor st villa 51 ', '', '2019-12-07 05:47:10', 0x30),
(1797, 'Theresa Tanduyan', 'theresatanduyan1968@gmail.com', '504211698', '1', '199.0000', 'Dubai', 'NAD AL SHEBA 2 STREET 19 villa 7 DUBAI. UAE', 'How many day that I have If I order now.? ', '2019-12-11 12:24:38', 0x30),
(1799, 'Ritaj', 'Dadydady20201@gmail.com', '558529007', '1', '199.0000', 'Dubai', 'Sharjah', '', '2019-12-12 01:34:34', 0x30),
(1801, 'Isacc saheb kowkrady ', 'Kowkrady@gmail.com', '553949002', '1', '199.0000', 'Ajman', '201 ishaq Mahammed building ', '', '2019-12-16 15:02:01', 0x30),
(1803, 'Prajith', 'ajileela2911@gmail.com', '0567671281', '1', '199.0000', 'Ras Al Khaimah', 'Almarai company, Al Jazeera', '', '2019-12-17 01:52:47', 0x30),
(1805, 'Khaled Mohamad ', 'greenlight.ac.e.p@gmail.com', '543330053', '1', '199.0000', 'Abu Dhabi', 'Mohamad been Zayed city mazyad mall ', 'I want this shampoo ', '2019-12-17 11:32:45', 0x30),
(1806, 'malak mohd ', 'malak28779@gmail.com', '555625550', '1', '199.0000', 'Sharjah', 'al Saad residence tower behind petrol station same building for al qantara restuarant flat number 1303', '', '2020-01-19 16:28:49', 0x30),
(1807, 'TALHA IMTIAZ', 'talha0247@gmail.com', '0509850927', '1', '199.0000', 'Dubai', 'Business Bay, Dubai', '', '2020-03-02 03:26:51', 0x30),
(1808, 'Vikram Singhe', 'vikramsinghe45@gmail.com', '527355192', '1', '199.0000', 'Dubai', 'Bye bye marasi driv', '', '2020-03-03 01:50:46', 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'NlP3xbK0xIq1LQoDHuzNde', 1268889823, 1591640021, 1, 'Admin', 'istratora', 'ADMINISTRATOR', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(9, 1, 1),
(10, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1809;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
