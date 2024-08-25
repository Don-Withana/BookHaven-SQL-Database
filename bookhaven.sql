-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 08:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookhaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `item_code` char(3) NOT NULL,
  `isbn` char(5) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `year_of_publication` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`item_code`, `isbn`, `title`, `genre`, `category`, `author`, `publisher`, `year_of_publication`) VALUES
('101', '00001', 'Introduction to Java', 'Programming', 'CS', 'Deshan Costa', 'GX Publishers', '2023'),
('102', '00002', 'Basics of Data Science', 'Data Science', 'AI', 'Harindu Peiris', 'MX Publishers', '2022'),
('103', '00003', 'Advanced SQL', 'Data Science', 'AI', 'Chathuranga Dayarathne', 'JX Publishers', '2021'),
('104', '00004', 'Database Systems', 'Database management system', 'Education', 'Ramez Elmasri', 'Springer', '2020'),
('105', '00005', 'Fundamentals of Database Systems', 'Database management system', 'Education', 'Ramez Elmasri', 'Pearson', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` char(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `address_line_1` varchar(100) DEFAULT NULL,
  `address_line_2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `postal_code` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `name`, `nic`, `contact_no`, `email_address`, `address_line_1`, `address_line_2`, `city`, `country`, `postal_code`) VALUES
('4001', 'Heshan Anthony', '199839923569', '773445876', 'anthony@gmail.com', 'Mt.Lavinia, Melford', 'NO.20', 'Callifonia', 'USA', '10000'),
('4002', 'Tishan Cristoff', '177620035689', '775679834', 'cristoff@yahoo.com', 'Dehiwala, Melbourne', 'No.30', 'Texas', 'USA', '23000'),
('4003', 'Dileesha Ann', '567920035678', '747659345', 'ann@ayahoo.com', 'Rathmalana, Grace Gardens', 'NO.15', 'Melbourne', 'Ausi', '91000'),
('4004', 'Chethana Anderson', '344677892000', '724569823', 'andreson@example.com', 'Bamba, Ann Avenue', 'No.10', 'Metro Manila', 'Philipenes', '34550'),
('4005', 'Gayan Andrew', '399099345204', '757869834', 'gayan@wtf.com', 'Wellawatta, Cristoff Gardens', 'NO.90', 'London Ontario', 'Canada', '99986');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_code` char(3) NOT NULL,
  `item_price` varchar(10) DEFAULT NULL,
  `stock_level` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_code`, `item_price`, `stock_level`) VALUES
('101', '1000.00', '100'),
('102', '1500.00', '500'),
('103', '1200.00', '0'),
('104', '1600.00', '150'),
('105', '1300.00', '200'),
('106', '100.00', '100'),
('107', '150.00', '500'),
('108', '120.00', '0'),
('109', '160.00', '150'),
('110', '130.00', '200');

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `order_id` char(4) NOT NULL,
  `quantity` char(3) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `dest_address` varchar(100) DEFAULT NULL,
  `pay_id` char(4) DEFAULT NULL,
  `cust_id` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`order_id`, `quantity`, `order_date`, `delivery_date`, `dest_address`, `pay_id`, `cust_id`) VALUES
('6001', '500', '2023-10-12', '2023-10-14', 'Bamba', '5001', '4001'),
('6002', '600', '2023-11-21', '2023-11-24', 'Wellawatte', '5002', '4002'),
('6003', '200', '2023-12-23', '2023-12-26', 'Dehiwala', '5003', '4003'),
('6004', '100', '2023-09-25', '2023-09-28', 'Mt.Lavinia', '5004', '4004'),
('6005', '700', '2023-08-31', '2023-09-02', 'Rathmalana', '5005', '4005'),
('6006', '300', '2023-11-11', '2023-11-14', 'Bamba', '5006', '4001'),
('6007', '100', '2023-12-22', '2023-12-24', 'Wellawatte', '5007', '4001'),
('6008', '900', '2023-09-23', '2023-09-26', 'Dehiwala', '5008', '4003'),
('6009', '400', '2023-08-25', '2023-08-28', 'Mt.Lavinia', '5009', '4004'),
('6010', '500', '2023-07-31', '2023-08-02', 'Rathmalana', '5010', '4004');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `item_code` char(3) NOT NULL,
  `order_id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`item_code`, `order_id`) VALUES
('101', '6001'),
('102', '6002'),
('103', '6003'),
('104', '6004'),
('105', '6005'),
('106', '6006'),
('107', '6007'),
('108', '6008'),
('109', '6009'),
('110', '6010');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` char(4) NOT NULL,
  `amount` char(10) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_time` time DEFAULT NULL,
  `pay_type_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `amount`, `pay_date`, `pay_time`, `pay_type_id`) VALUES
('5001', '2000.00', '2023-10-12', '20:10:00', 'bk01'),
('5002', '3000.00', '2023-11-21', '21:30:00', 'op02'),
('5003', '2500.00', '2023-12-23', '10:45:00', 'bk01'),
('5004', '3500.00', '2023-09-25', '12:00:00', 'op02'),
('5005', '7000.00', '2023-08-31', '08:15:00', 'op02'),
('5006', '1000.00', '2023-11-11', '20:30:00', 'bk01'),
('5007', '2000.00', '2023-12-24', '21:20:00', 'op02'),
('5008', '500.00', '2023-09-26', '10:55:00', 'bk01'),
('5009', '300.00', '2023-08-28', '12:40:00', 'op02'),
('5010', '700.00', '2023-04-02', '08:35:00', 'op02');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `pay_type_id` char(4) NOT NULL,
  `payment_method` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`pay_type_id`, `payment_method`) VALUES
('bk01', 'Bank Transfer'),
('op02', 'Online Payment');

-- --------------------------------------------------------

--
-- Table structure for table `stationary`
--

CREATE TABLE `stationary` (
  `item_code` char(3) NOT NULL,
  `stationary_type` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationary`
--

INSERT INTO `stationary` (`item_code`, `stationary_type`, `brand`) VALUES
('106', 'Pen', 'Atlas'),
('107', 'Note Book', 'Richard'),
('108', 'File Clips', 'Nataraj'),
('109', 'Sticky Notes', 'Rado'),
('110', 'Pencil', 'Speed');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `item_code` char(3) NOT NULL,
  `sup_id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`item_code`, `sup_id`) VALUES
('101', '3001'),
('102', '3002'),
('103', '3003'),
('104', '3004'),
('105', '3005'),
('106', '2001'),
('107', '2002'),
('108', '2003'),
('109', '2004'),
('110', '2005');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sup_id` char(4) NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `payment_conditions` varchar(30) DEFAULT NULL,
  `related_industry` varchar(20) DEFAULT NULL,
  `supply_quantity` char(3) DEFAULT NULL,
  `sup_type_id` char(4) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sup_id`, `f_name`, `l_name`, `contact_no`, `email_address`, `payment_conditions`, `related_industry`, `supply_quantity`, `sup_type_id`, `nic`, `branch`) VALUES
('2001', 'Rex Ltd', NULL, '0113467589', 'rex@gmail.com', 'COD', 'Book', '300', 'comp', NULL, 'Head'),
('2002', 'G Corp', NULL, '0118556789', 'g@yahoo.com', 'CND', 'Book', '400', 'comp', NULL, 'Regional'),
('2003', 'X Corp', NULL, '0114322224', 'x@example.com', 'CBS', 'Stationary', '500', 'comp', NULL, 'Sub'),
('2004', 'Max Ltd', NULL, '0112356383', 'max@iit.ac.lk', 'CIA', 'Book', '200', 'comp', NULL, 'Main'),
('2005', 'Tan Corp', NULL, '0117365656', 'tan@rgu.ac.uk', 'EOM', 'Book', '700', 'comp', NULL, 'Regional'),
('3001', 'Namal', 'Perera', '0720987654', 'namal@gmail.com', 'COD', 'Book', '400', 'indi', '200310013510', NULL),
('3002', 'Jade', 'Liyanage', '0714567894', 'jade@gmail.com', 'Credit Card', 'Book', '100', 'indi', '200210013520', NULL),
('3003', 'Gihan', 'Bandara', '0750983457', NULL, 'EOM', 'Stationary', '900', 'indi', '200120013460', NULL),
('3004', 'Johne', 'Corera', '0770945672', NULL, 'CND', 'Book', '200', 'indi', '200540065430', NULL),
('3005', 'Ruzlie', 'Hannan', '0768764560', 'ruzlie@gmailcom', 'Credit Card', 'Book', '300', 'indi', '200110013689', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_type`
--

CREATE TABLE `supplier_type` (
  `sup_type_id` char(4) NOT NULL,
  `sup_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_type`
--

INSERT INTO `supplier_type` (`sup_type_id`, `sup_type`) VALUES
('comp', 'Company Supplier'),
('indi', 'Individual Supplier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD KEY `item_code` (`item_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `pay_id` (`pay_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`item_code`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `pay_type_id` (`pay_type_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`pay_type_id`);

--
-- Indexes for table `stationary`
--
ALTER TABLE `stationary`
  ADD KEY `item_code` (`item_code`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`item_code`,`sup_id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_id`),
  ADD KEY `sup_type_id` (`sup_type_id`);

--
-- Indexes for table `supplier_type`
--
ALTER TABLE `supplier_type`
  ADD PRIMARY KEY (`sup_type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`item_code`) REFERENCES `item` (`item_code`);

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`),
  ADD CONSTRAINT `order__ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`item_code`) REFERENCES `item` (`item_code`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order_` (`order_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`pay_type_id`) REFERENCES `payment_type` (`pay_type_id`);

--
-- Constraints for table `stationary`
--
ALTER TABLE `stationary`
  ADD CONSTRAINT `stationary_ibfk_1` FOREIGN KEY (`item_code`) REFERENCES `item` (`item_code`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`item_code`) REFERENCES `item` (`item_code`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `supplier` (`sup_id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`sup_type_id`) REFERENCES `supplier_type` (`sup_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
