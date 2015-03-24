-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2015 at 09:53 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `studentclearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `USN` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` mediumint(9) NOT NULL DEFAULT '0',
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `USN` varchar(255) DEFAULT NULL,
  `yearlevel` varchar(255) DEFAULT NULL,
  `syterm` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `age` mediumint(9) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `currentstatus` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `USN`, `yearlevel`, `syterm`, `course`, `section`, `age`, `gender`, `currentstatus`, `address`) VALUES
(1, 'Bradley', 'Warren', 'Wilder', '26553986918', 'First Year', '2013', 'BSIS', 'A4', 17, 'Male', 'Cleared', 'P.O. Box 714, 881 Phasellus Av.'),
(2, 'Yuli', 'Miles', 'Simon', '55228696361', 'Second Year', '2011', 'BSCS', 'B4', 24, 'Male', 'Not Cleared', 'Ap #911-5154 Et, Av.'),
(3, 'Hu', 'Nichols', 'Johnson', '11537904877', 'Fourth Year', '2010', 'BSCS', 'C4', 28, 'Male', 'Cleared', 'Ap #182-9077 Ornare St.'),
(4, 'Clayton', 'Mosley', 'Valdez', '75534431158', 'First Year', '2014', 'BSCS', 'B3', 21, 'Female', 'Cleared', 'P.O. Box 808, 9387 Egestas. St.'),
(5, 'Brett', 'Martinez', 'Ellison', '37167388384', 'Fourth Year', '2015', 'BSCS', 'A3', 30, 'Male', 'Cleared', '628-2649 Maecenas Rd.'),
(6, 'Nathan', 'Ayala', 'Neal', '72663399513', 'First Year', '2011', 'BSCoE', 'B3', 27, 'Female', 'Cleared', 'Ap #131-7530 Tempus, Rd.'),
(7, 'Aidan', 'Fitzgerald', 'Griffin', '54538457457', 'First Year', '2015', 'BSIT', 'A4', 28, 'Male', 'Cleared', '6721 Molestie Rd.'),
(8, 'Leo', 'Harding', 'George', '95822634014', 'Second Year', '2010', 'BSCS', 'C3', 30, 'Male', 'Cleared', 'P.O. Box 287, 6369 Aliquam Rd.'),
(9, 'Paul', 'Wheeler', 'Maxwell', '55293266100', 'Second Year', '2010', 'BSCoE', 'C3', 17, 'Male', 'Cleared', '352-9804 Felis Av.'),
(10, 'Brett', 'Hall', 'Robbins', '82237849525', 'First Year', '2012', 'BSCoE', 'A4', 27, 'Male', 'Cleared', '163-5162 Tellus. Street'),
(11, 'Tucker', 'Bowers', 'Hendricks', '71329583589', 'Fourth Year', '2013', 'BSCoE', 'B3', 21, 'Male', 'Cleared', 'P.O. Box 239, 5402 In, St.'),
(12, 'Myles', 'Compton', 'Rivas', '12727608824', 'Third Year', '2011', 'BSCS', 'C4', 29, 'Male', 'Not Cleared', 'Ap #441-8271 Fames Rd.'),
(13, 'Ahmed', 'Boone', 'Mcgowan', '71579153747', 'Fourth Year', '2016', 'BSCoE', 'B3', 21, 'Female', 'Not Cleared', 'Ap #796-5116 Libero St.'),
(14, 'Rahim', 'Gentry', 'Wilkinson', '76829303878', 'Third Year', '2011', 'BSCS', 'C4', 23, 'Female', 'Not Cleared', 'Ap #951-9005 Et Avenue'),
(15, 'Asher', 'Barton', 'Kirk', '92379874394', 'Third Year', '2016', 'BSIS', 'C4', 29, 'Male', 'Not Cleared', '1594 Vitae, Av.'),
(16, 'Barrett', 'Bass', 'Workman', '50504265407', 'Fourth Year', '2011', 'BSCoE', 'B4', 25, 'Male', 'Not Cleared', 'Ap #856-3302 Rhoncus. Street'),
(17, 'Alexander', 'Oliver', 'Torres', '27682517032', 'Second Year', '2013', 'BSIS', 'B4', 19, 'Male', 'Not Cleared', '178-8790 Quisque Road'),
(18, 'Tyler', 'Baxter', 'Sosa', '90116647708', 'Second Year', '2011', 'BSIT', 'C3', 17, 'Male', 'Cleared', '630-7502 Odio. Rd.'),
(19, 'Emerson', 'Frederick', 'Solis', '14735271569', 'Fifth Year', '2011', 'BSIT', 'C4', 29, 'Female', 'Not Cleared', '979-9879 Rhoncus. Rd.'),
(20, 'Axel', 'Sosa', 'Michael', '12580615799', 'Fourth Year', '2013', 'BSCoE', 'C4', 21, 'Male', 'Not Cleared', '146-2572 Malesuada St.'),
(21, 'Aladdin', 'Winters', 'Valenzuela', '65264483591', 'Fourth Year', '2010', 'BSIS', 'B3', 28, 'Female', 'Not Cleared', 'P.O. Box 147, 1108 Eu Rd.'),
(22, 'Christian', 'Lester', 'Martin', '23427196314', 'Fifth Year', '2013', 'BSIT', 'B4', 20, 'Male', 'Not Cleared', '1523 Mauris Av.'),
(23, 'Keefe', 'Ratliff', 'Puckett', '22323017734', 'First Year', '2014', 'BSIT', 'C4', 27, 'Male', 'Not Cleared', 'Ap #674-7460 Laoreet Road'),
(24, 'Chaney', 'Allen', 'Mcknight', '96532152788', 'Fifth Year', '2013', 'BSCS', 'B3', 20, 'Female', 'Not Cleared', '274-6756 Praesent Street'),
(25, 'Tanner', 'Barrett', 'Espinoza', '96692927624', 'Fourth Year', '2011', 'BSIT', 'B3', 23, 'Female', 'Not Cleared', 'Ap #971-259 Ultrices. St.'),
(26, 'Brandon', 'Briggs', 'Simpson', '69876323049', 'Fourth Year', '2012', 'BSIS', 'A3', 23, 'Male', 'Cleared', 'Ap #634-6640 Lorem, Avenue'),
(27, 'Branden', 'Hensley', 'Moss', '33496471495', 'Second Year', '2013', 'BSIS', 'B3', 20, 'Female', 'Cleared', 'Ap #865-3617 Cum St.'),
(28, 'Logan', 'Christensen', 'Montoya', '88415566987', 'Second Year', '2013', 'BSIT', 'A3', 20, 'Male', 'Not Cleared', 'P.O. Box 164, 2459 Euismod Av.'),
(29, 'Dexter', 'Savage', 'Matthews', '65352314060', 'First Year', '2012', 'BSIS', 'B4', 30, 'Female', 'Not Cleared', '692-3787 Ultrices St.'),
(30, 'Josiah', 'Gonzalez', 'Keller', '36891533256', 'Fourth Year', '2013', 'BSIT', 'B3', 27, 'Female', 'Not Cleared', 'P.O. Box 813, 4059 Lectus Rd.'),
(31, 'Hakeem', 'Fry', 'Mcfarland', '29911165112', 'Third Year', '2010', 'BSIS', 'C3', 24, 'Female', 'Cleared', '7050 Ridiculus Rd.'),
(32, 'David', 'Marshall', 'Goodwin', '10260409305', 'Second Year', '2016', 'BSCS', 'B4', 29, 'Male', 'Cleared', 'P.O. Box 455, 9965 Amet Av.'),
(33, 'Jelani', 'Walker', 'Kelley', '53639829497', 'First Year', '2013', 'BSIS', 'C4', 28, 'Female', 'Not Cleared', 'P.O. Box 497, 6851 Scelerisque Av.'),
(34, 'Damon', 'Bates', 'Reilly', '89446490831', 'First Year', '2013', 'BSCoE', 'A3', 23, 'Male', 'Cleared', '2602 Vitae Rd.'),
(35, 'Cruz', 'Frank', 'Gay', '63296807786', 'Third Year', '2013', 'BSCoE', 'C4', 25, 'Male', 'Not Cleared', '499-4884 Nam Avenue'),
(36, 'Yardley', 'Tanner', 'Gibson', '98094739436', 'Fourth Year', '2011', 'BSCoE', 'A4', 18, 'Female', 'Not Cleared', 'Ap #879-5204 Amet, Road'),
(37, 'Devin', 'Harper', 'Dennis', '22487547114', 'Fifth Year', '2014', 'BSIT', 'A4', 25, 'Male', 'Not Cleared', 'P.O. Box 372, 6059 Donec Street'),
(38, 'Owen', 'Bright', 'Randall', '98911980729', 'Second Year', '2011', 'BSCoE', 'B4', 20, 'Female', 'Cleared', '2525 Odio. Ave'),
(39, 'Hu', 'Hudson', 'Trevino', '16327364846', 'First Year', '2015', 'BSIS', 'C4', 23, 'Female', 'Not Cleared', 'Ap #438-8922 Aliquam Avenue'),
(40, 'Rafael', 'Roth', 'Farley', '83938962999', 'Fourth Year', '2015', 'BSCS', 'A4', 24, 'Female', 'Cleared', '9615 Neque. St.'),
(41, 'Keegan', 'Little', 'Warren', '39774155423', 'Fourth Year', '2014', 'BSCoE', 'C4', 21, 'Male', 'Not Cleared', 'Ap #905-9251 Sociosqu Avenue'),
(42, 'Jordan', 'Olson', 'Keller', '39879532586', 'Third Year', '2013', 'BSIT', 'A3', 19, 'Male', 'Cleared', 'Ap #959-5939 Aliquet St.'),
(43, 'Solomon', 'Holt', 'Delacruz', '27601799079', 'Fifth Year', '2010', 'BSIT', 'A4', 23, 'Female', 'Cleared', '959-6671 Tincidunt Avenue'),
(44, 'Keith', 'Mcfarland', 'Santana', '28360884543', 'First Year', '2015', 'BSCS', 'A3', 30, 'Female', 'Cleared', '2480 Nam Ave'),
(45, 'Ashton', 'Dickson', 'Moreno', '41550402476', 'Third Year', '2013', 'BSCS', 'B4', 28, 'Male', 'Not Cleared', '176-8979 Eget Avenue'),
(46, 'Jared', 'Davenport', 'Beasley', '45912692183', 'Fourth Year', '2013', 'BSCS', 'C3', 17, 'Female', 'Cleared', 'P.O. Box 577, 4098 Pellentesque Avenue'),
(47, 'Colby', 'Clay', 'Guthrie', '88477939139', 'Fourth Year', '2015', 'BSCoE', 'A3', 23, 'Male', 'Not Cleared', 'Ap #829-8080 Ac Rd.'),
(48, 'Julian', 'Mejia', 'Wallace', '31159199351', 'Fourth Year', '2011', 'BSIT', 'C3', 16, 'Male', 'Not Cleared', 'Ap #926-5058 Donec Street'),
(49, 'Brandon', 'Greer', 'Bradley', '11143407708', 'Fourth Year', '2016', 'BSCoE', 'B3', 17, 'Female', 'Not Cleared', '3160 Sed Street'),
(50, 'Nigel', 'Moore', 'Howell', '55787091682', 'Third Year', '2011', 'BSIT', 'B3', 24, 'Female', 'Not Cleared', '9890 Mollis. St.'),
(51, 'Cadman', 'Banks', 'Miller', '59216499764', 'Fifth Year', '2016', 'BSIT', 'B4', 25, 'Female', 'Not Cleared', 'P.O. Box 274, 1711 Vel, Ave'),
(52, 'Gage', 'Crane', 'Juarez', '37999936278', 'Second Year', '2010', 'BSCoE', 'C4', 22, 'Male', 'Not Cleared', 'P.O. Box 253, 2652 Aenean Ave'),
(53, 'Elton', 'Hahn', 'Rice', '74491275571', 'Fifth Year', '2010', 'BSCS', 'C3', 22, 'Female', 'Cleared', 'P.O. Box 310, 2842 Purus. Ave'),
(54, 'Driscoll', 'George', 'Contreras', '57842822121', 'Third Year', '2010', 'BSIS', 'A4', 22, 'Female', 'Not Cleared', '2783 Pede. Road'),
(55, 'Chandler', 'Cox', 'Wilson', '44911458110', 'First Year', '2015', 'BSCoE', 'A4', 28, 'Female', 'Cleared', 'Ap #230-6434 Vestibulum Ave'),
(56, 'Garth', 'Hughes', 'Key', '75996540488', 'Second Year', '2016', 'BSCoE', 'A4', 22, 'Male', 'Cleared', '7315 Nibh St.'),
(57, 'Thor', 'Langley', 'Malone', '26955689460', 'First Year', '2011', 'BSIT', 'B3', 21, 'Female', 'Cleared', '2043 Ante Street'),
(58, 'Zachary', 'Holden', 'Walter', '71911034146', 'Third Year', '2011', 'BSCS', 'B4', 26, 'Male', 'Cleared', 'P.O. Box 801, 766 Adipiscing Ave'),
(59, 'Clark', 'Cox', 'Mcdowell', '45786840394', 'Fourth Year', '2010', 'BSCS', 'B3', 29, 'Male', 'Not Cleared', '9694 Non Avenue'),
(60, 'Joel', 'Kirkland', 'Gentry', '69117286489', 'Second Year', '2014', 'BSCoE', 'C3', 28, 'Female', 'Cleared', '445-9320 Porttitor Road'),
(61, 'Reece', 'Love', 'Cantrell', '51858304748', 'Fourth Year', '2012', 'BSIT', 'C3', 25, 'Female', 'Cleared', 'P.O. Box 571, 7253 Et Road'),
(62, 'Davis', 'Knapp', 'Emerson', '75271823847', 'Fourth Year', '2015', 'BSCS', 'C3', 27, 'Male', 'Cleared', '1483 Odio. St.'),
(63, 'Connor', 'Curtis', 'Harrison', '68179013345', 'First Year', '2014', 'BSIT', 'A4', 19, 'Male', 'Cleared', '963-2664 Et, Ave'),
(64, 'Benjamin', 'Leon', 'Patterson', '95528327617', 'Fourth Year', '2016', 'BSIS', 'A4', 23, 'Female', 'Not Cleared', 'Ap #449-6670 Vitae St.'),
(65, 'Buckminster', 'Wagner', 'Hogan', '69760129513', 'Fourth Year', '2013', 'BSCS', 'A4', 24, 'Male', 'Not Cleared', '4438 Tellus St.'),
(66, 'Clinton', 'Ferguson', 'Jordan', '65913961542', 'First Year', '2010', 'BSIS', 'C3', 28, 'Female', 'Not Cleared', '4076 Malesuada St.'),
(67, 'Channing', 'Baker', 'Wynn', '56900174928', 'Third Year', '2011', 'BSIT', 'C3', 26, 'Female', 'Not Cleared', '766-2991 Nonummy St.'),
(68, 'Ishmael', 'Beck', 'May', '87699104271', 'Second Year', '2014', 'BSCoE', 'B3', 29, 'Female', 'Not Cleared', '5858 Eleifend, Av.'),
(69, 'Calvin', 'Wilkinson', 'Blackwell', '64351308535', 'Fourth Year', '2015', 'BSIT', 'C3', 23, 'Female', 'Cleared', 'Ap #457-3930 Eget Rd.'),
(70, 'Yasir', 'Mann', 'Randall', '38476029771', 'Second Year', '2011', 'BSCoE', 'A3', 27, 'Male', 'Cleared', 'Ap #841-1897 Pellentesque. St.'),
(71, 'Neil', 'Cook', 'Morrow', '96804152178', 'Second Year', '2012', 'BSIT', 'C4', 21, 'Male', 'Cleared', 'P.O. Box 134, 7759 Mollis. Avenue'),
(72, 'Clark', 'Weeks', 'Rose', '49066765935', 'Fifth Year', '2015', 'BSIT', 'A3', 18, 'Male', 'Cleared', '781-9924 Nulla Street'),
(73, 'Deacon', 'Dixon', 'Murray', '81828324283', 'Fourth Year', '2012', 'BSIS', 'B3', 21, 'Female', 'Cleared', 'P.O. Box 989, 8482 Quisque Ave'),
(74, 'Marvin', 'Berger', 'Harrison', '37649054648', 'Fifth Year', '2016', 'BSCS', 'C4', 28, 'Male', 'Not Cleared', 'Ap #885-5161 Id Rd.'),
(75, 'Alexander', 'Jarvis', 'Hopkins', '17538778657', 'Second Year', '2011', 'BSCoE', 'C3', 21, 'Female', 'Cleared', 'P.O. Box 236, 7934 Eu Ave'),
(76, 'Murphy', 'Sanchez', 'Fuller', '22513125436', 'First Year', '2015', 'BSIT', 'A3', 27, 'Male', 'Cleared', '1444 Libero. St.'),
(77, 'Josiah', 'Barnett', 'Rojas', '62481782962', 'Fourth Year', '2014', 'BSIT', 'A3', 28, 'Male', 'Not Cleared', '6344 Nec, St.'),
(78, 'Reece', 'Armstrong', 'Heath', '60571634414', 'Fifth Year', '2012', 'BSIS', 'B4', 24, 'Female', 'Not Cleared', '260-3106 Sed St.'),
(79, 'Hamish', 'Moody', 'Poole', '85532758548', 'Third Year', '2016', 'BSCoE', 'B3', 21, 'Male', 'Not Cleared', 'P.O. Box 638, 2862 Sed Street'),
(80, 'Addison', 'Pitts', 'Robinson', '24558124634', 'Third Year', '2015', 'BSIS', 'B4', 22, 'Female', 'Cleared', '5515 Eget Avenue'),
(81, 'Gil', 'Mcgee', 'Clay', '97476368497', 'Fourth Year', '2014', 'BSIT', 'C4', 19, 'Male', 'Cleared', 'P.O. Box 917, 7151 Nascetur Av.'),
(82, 'Aladdin', 'Villarreal', 'Reilly', '98516033232', 'First Year', '2012', 'BSCS', 'C3', 22, 'Male', 'Not Cleared', 'Ap #910-6105 Ridiculus Rd.'),
(83, 'Mannix', 'Dickson', 'Cochran', '10697840884', 'Fourth Year', '2013', 'BSCS', 'A4', 28, 'Male', 'Cleared', '245 Vulputate, Avenue'),
(84, 'Brett', 'Farley', 'Lopez', '91113034494', 'Fourth Year', '2012', 'BSCS', 'A4', 23, 'Male', 'Cleared', 'Ap #664-9581 Diam. Road'),
(85, 'Tucker', 'Boyd', 'Delacruz', '31182624812', 'Second Year', '2014', 'BSCS', 'C4', 28, 'Female', 'Cleared', 'Ap #564-6610 Lacinia Avenue'),
(86, 'Jerry', 'Tran', 'Osborne', '64213858773', 'Second Year', '2010', 'BSCS', 'A4', 19, 'Male', 'Not Cleared', '184-999 Hendrerit Street'),
(87, 'Rooney', 'Church', 'Logan', '63543041001', 'Third Year', '2013', 'BSIT', 'A4', 30, 'Male', 'Not Cleared', 'P.O. Box 669, 4305 Nam Rd.'),
(88, 'Emerson', 'Ingram', 'Riley', '79975515045', 'First Year', '2014', 'BSIT', 'C3', 27, 'Male', 'Cleared', '6018 Nonummy Road'),
(89, 'Hayes', 'Hoover', 'Landry', '17941718768', 'Fourth Year', '2010', 'BSIT', 'B4', 16, 'Female', 'Not Cleared', '813-4855 Felis. Av.'),
(90, 'Tad', 'Glass', 'Howell', '76842787473', 'Second Year', '2010', 'BSIS', 'B3', 30, 'Female', 'Not Cleared', 'Ap #584-9504 Nunc Rd.'),
(91, 'Colt', 'Carroll', 'Walsh', '72818864364', 'Fourth Year', '2016', 'BSCS', 'C4', 21, 'Male', 'Not Cleared', 'P.O. Box 983, 6672 Fames Rd.'),
(92, 'Quinn', 'Walls', 'Irwin', '93077490880', 'Third Year', '2015', 'BSIS', 'C3', 28, 'Male', 'Cleared', 'P.O. Box 915, 4264 Massa. Rd.'),
(93, 'Nathan', 'Shaffer', 'Humphrey', '81955119522', 'Third Year', '2016', 'BSCS', 'C4', 28, 'Male', 'Cleared', '928-5510 Lectus St.'),
(94, 'Ronan', 'Morrow', 'Wilkerson', '68193280995', 'First Year', '2013', 'BSCoE', 'A4', 21, 'Male', 'Not Cleared', 'P.O. Box 725, 5920 Molestie Ave'),
(95, 'Reed', 'House', 'Wilcox', '27795248094', 'Fourth Year', '2015', 'BSCoE', 'B3', 21, 'Male', 'Cleared', 'Ap #346-5795 At Rd.'),
(96, 'Tanek', 'Bright', 'Wise', '29516560907', 'Fifth Year', '2014', 'BSIS', 'B3', 30, 'Female', 'Cleared', 'Ap #510-2047 Fringilla Road'),
(97, 'Denton', 'Burch', 'Wooten', '46251410795', 'Second Year', '2015', 'BSIT', 'A3', 18, 'Female', 'Not Cleared', 'Ap #225-1152 Aliquam Av.'),
(98, 'Harrison', 'David', 'Harrington', '73343716923', 'Third Year', '2011', 'BSIS', 'C3', 19, 'Male', 'Not Cleared', 'P.O. Box 778, 1302 Sem Avenue'),
(99, 'Yuli', 'Lewis', 'Larson', '90727247242', 'Third Year', '2011', 'BSIS', 'B3', 23, 'Female', 'Cleared', 'Ap #927-2065 Nisl. Ave'),
(100, 'Daquan', 'Russo', 'Nixon', '58264707738', 'Fifth Year', '2015', 'BSIT', 'C3', 17, 'Female', 'Not Cleared', 'P.O. Box 372, 6525 Imperdiet Av.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `office` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `office`, `password`, `email_address`, `date_created`) VALUES
(1, 'cashier', 'password5baa61e45bc9b93f3f0682250b6cf8331b7ee68fd8', 'test@gmail.com', '2015-03-23 05:33:54'),
(2, 'dean', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'test@gmail.com', '2015-03-23 05:33:54'),
(5, 'ssc', 'password', 'ssc@gmail.com', '2015-03-23 05:35:10'),
(6, 'accounting', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'accounting@gmail.com', '2015-03-23 05:35:10'),
(7, 'hr', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'hr@gmail.com', '2015-03-23 05:35:48'),
(8, 'clinic', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'clinic@gmail.com', '2015-03-23 05:35:48'),
(9, 'library', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'library@gmail.com', '2015-03-23 05:36:28'),
(10, 'director', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'director@gmail.com', '2015-03-23 05:36:28'),
(11, 'property_custodian', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'property.custodian@gmail.com', '2015-03-23 05:37:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
