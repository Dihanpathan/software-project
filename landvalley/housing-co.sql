-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 10:03 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housing-co`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardrent`
-- (See below for the actual view)
--
CREATE TABLE `cardrent` (
`flat_id` int(11)
,`location` varchar(100)
,`city` varchar(100)
,`rent_amount` int(11)
,`image` varchar(500)
,`time` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardsale`
-- (See below for the actual view)
--
CREATE TABLE `cardsale` (
`flat_id` int(11)
,`location` varchar(100)
,`city` varchar(100)
,`totalcost` double
,`image` varchar(500)
,`time` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackbuilder`
--

CREATE TABLE `feedbackbuilder` (
  `val` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackbuilder`
--

INSERT INTO `feedbackbuilder` (`val`, `name`, `email`, `question`) VALUES
(1, 'abid', 'abid@gmail.com', '?????????????????');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackuser`
--

CREATE TABLE `feedbackuser` (
  `val` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackuser`
--

INSERT INTO `feedbackuser` (`val`, `name`, `email`, `question`) VALUES
(4, 'Niamul', 'niamul@gmail.com', '???????');

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `flat_id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `amenities` varchar(500) NOT NULL,
  `area` double NOT NULL,
  `image` varchar(500) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`flat_id`, `uid`, `bid`, `location`, `city`, `description`, `amenities`, `area`, `image`, `image1`, `image2`, `image3`, `time`) VALUES
(1, 1, NULL, 'Dhanmondi', 'Dhaka', 'Best flat', 'Swimming pool', 450, 'img/img5.jpg', 'img/img5.jpg', 'img/img5.jpg', 'img/img5.jpg', '2019-12-01 03:27:48'),
(2, 1, NULL, 'Gulshan', 'Dhaka', 'Near Station', 'gym and parking', 500, 'img/img10.jpg', 'img/img10.jpg', 'img/img10.jpg', 'img/img10.jpg', '2019-12-01 03:27:48'),
(3, 1, NULL, 'Kolabagan', 'Dhaka', 'Awesome', 'Best parking', 450, 'img/img16.jpg', 'img/img16.jpg', 'img/img16.jpg', 'img/img16.jpg', '2019-12-01 03:27:48'),
(4, 1, NULL, 'Azimpur', 'Dhaka', 'Near station', 'Gym and pool', 450, 'img/img18.jpg', 'img/img18.jpg', 'img/img18.jpg', 'img/img18.jpg', '2019-12-01 03:27:48'),
(6, 1, NULL, 'Badda', 'Dhaka', 'Very awesome flat', 'Swimming Pool', 550, 'img/img10.jpg', 'img/img10.jpg', 'img/img10.jpg', 'img/img10.jpg', '2019-12-01 05:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UID` int(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UID`, `username`, `password`, `name`, `surname`, `email`, `phone`) VALUES
(1, 'kamal', '1234567890', 'Kamal', 'Kamal', 'kamal@gmail.com', '1721212122'),
(2, 'nadia', '1234567890', 'Nadia', 'Golam', 'nadia@gmail.com', '1925456895'),
(3, 'asif', '1234567890', 'Asif', 'Asif', 'asif@gmail.com', '1685987652'),
(4, 'niamul', '1234567890', 'Niamul', 'Chowdhury', 'niamul@gmail.com', '1584563259');

-- --------------------------------------------------------

--
-- Table structure for table `login_builder`
--

CREATE TABLE `login_builder` (
  `BID` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `lno` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `nameorg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_builder`
--

INSERT INTO `login_builder` (`BID`, `username`, `lno`, `password`, `emailid`, `phoneno`, `nameorg`) VALUES
(1, 'abid', 12345, '1234567890', 'abid@gmail.com', '1721548639', 'AKZ'),
(2, 'sani', 56789, '1234567890', 'sani@gmail.com', '1658965412', 'APP'),
(3, 'rasel', 13579, '1234567890', 'rasel@gmail.com', '1558963254', 'PPZ');

-- --------------------------------------------------------

--
-- Table structure for table `packers_movers`
--

CREATE TABLE `packers_movers` (
  `pid` int(11) NOT NULL,
  `name_org` varchar(50) NOT NULL,
  `contact_no` decimal(11,0) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packers_movers`
--

INSERT INTO `packers_movers` (`pid`, `name_org`, `contact_no`, `email_id`) VALUES
(1, 'abcd', '9022942188', 'abcd@gmail.com'),
(2, 'pqrs', '7977261097', 'pqrs@spit.ac.in'),
(3, 'efgh', '6846565465', 'efgh@gmail.com'),
(4, 'lmno', '7208201778', 'lmno@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `UID` int(100) NOT NULL,
  `buyer` varchar(100) NOT NULL,
  `Bank_name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `Loan_details` varchar(10000) NOT NULL,
  `cheque_number` int(100) NOT NULL,
  `payment_opt` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `flat_id` int(11) NOT NULL,
  `rent_amount` int(11) NOT NULL,
  `deposit_amount` int(11) NOT NULL,
  `time_period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`flat_id`, `rent_amount`, `deposit_amount`, `time_period`) VALUES
(3, 15000, 50000, 5),
(4, 20000, 60000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `flat_id` int(11) NOT NULL,
  `totalcost` double NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`flat_id`, `totalcost`, `rate`) VALUES
(1, 3600000, 8000),
(2, 4500000, 9000),
(6, 11000000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_projects`
--

CREATE TABLE `upcoming_projects` (
  `upid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `comp_time` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming_projects`
--

INSERT INTO `upcoming_projects` (`upid`, `bid`, `location`, `city`, `comp_time`) VALUES
(1, 1, 'Dhanmondi', 'Dhaka', 6);

-- --------------------------------------------------------

--
-- Structure for view `cardrent`
--
DROP TABLE IF EXISTS `cardrent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardrent`  AS  select `flat`.`flat_id` AS `flat_id`,`flat`.`location` AS `location`,`flat`.`city` AS `city`,`rent`.`rent_amount` AS `rent_amount`,`flat`.`image` AS `image`,`flat`.`time` AS `time` from (`flat` join `rent` on(`flat`.`flat_id` = `rent`.`flat_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cardsale`
--
DROP TABLE IF EXISTS `cardsale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardsale`  AS  select `flat`.`flat_id` AS `flat_id`,`flat`.`location` AS `location`,`flat`.`city` AS `city`,`sale`.`totalcost` AS `totalcost`,`flat`.`image` AS `image`,`flat`.`time` AS `time` from (`flat` join `sale` on(`flat`.`flat_id` = `sale`.`flat_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`flat_id`),
  ADD UNIQUE KEY `address` (`location`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `login_builder`
--
ALTER TABLE `login_builder`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `packers_movers`
--
ALTER TABLE `packers_movers`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`flat_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`flat_id`);

--
-- Indexes for table `upcoming_projects`
--
ALTER TABLE `upcoming_projects`
  ADD PRIMARY KEY (`upid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flat`
--
ALTER TABLE `flat`
  MODIFY `flat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `UID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_builder`
--
ALTER TABLE `login_builder`
  MODIFY `BID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packers_movers`
--
ALTER TABLE `packers_movers`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upcoming_projects`
--
ALTER TABLE `upcoming_projects`
  MODIFY `upid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`flat_id`) REFERENCES `flat` (`flat_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`flat_id`) REFERENCES `flat` (`flat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
