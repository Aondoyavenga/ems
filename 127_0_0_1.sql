-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 04:32 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountingdb`
--
CREATE DATABASE IF NOT EXISTS `accountingdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `accountingdb`;

-- --------------------------------------------------------

--
-- Table structure for table `account_accountmodel`
--

CREATE TABLE `account_accountmodel` (
  `id` int(11) NOT NULL,
  `uuid` char(32) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `acc_type` varchar(25) NOT NULL,
  `balance_type` varchar(6) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `createdBy_FK` int(11) DEFAULT NULL,
  `edited_By` varchar(200) NOT NULL,
  `cusID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_accountmodel`
--

INSERT INTO `account_accountmodel` (`id`, `uuid`, `code`, `name`, `acc_type`, `balance_type`, `slug`, `locked`, `active`, `createdAt`, `updatedAt`, `createdBy_FK`, `edited_By`, `cusID`) VALUES
(13, 'bfdbb3bc-5424-450a-812a-0ef26590', '583411', 'Bala Jane Kudu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-05-28', '2021-05-28 10:34:58.187701', 1, '', 26),
(14, '460eceb4-cabb-4a89-9e6f-74e1e72b', '4318346', 'Aliyu Ahmad Tijjani', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-05-28', '2021-05-28 11:18:43.384588', 28, '', 27),
(15, 'e4af6e17-7b30-4395-9a0c-90f6d395', '5130714', 'Nnadi Chijioke Okadili ', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-05-28', '2021-05-28 11:30:51.723243', 28, '', 28),
(16, '0a0336b1-3197-4725-9d6a-55c65abf', '136730', 'Electricity Bills', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:06:13.770666', 28, '', NULL),
(17, '795d4c4b-0ab3-4167-a447-2c953100', '415194', 'Staff Salaries', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:15:04.195560', 28, '', NULL),
(18, 'd0a4b53e-fe18-46b6-a01e-75d3cc6c', '311622', 'Internet services', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:16:31.022954', 28, '', NULL),
(19, '0e1dadc0-dd24-43a8-b8d0-3f5785e3', '3017181', 'Rent', 'ex_op', 'DR', '', 1, 0, '2021-05-28', '2021-05-28 12:17:30.181693', 28, '', NULL),
(20, 'ac2b7f20-df00-4f28-9699-e69ebc97', '3520835', 'Vehicle Running Expenses', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:20:35.837066', 28, '', NULL),
(21, 'c06a2030-d2f7-4efa-99d1-84cf9c77', '1321102', 'Staff Trainings', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:21:13.104824', 28, '', NULL),
(22, '339ce75c-74a8-4330-a72c-0ae4364b', '222456', 'Printing & Stationeries', 'ex_op', '', '', 0, 0, '2021-05-28', '2021-05-28 12:22:02.458276', 28, '', NULL),
(23, 'b56bc3a9-7193-40c4-a275-f00078cf', '5422183', 'Audit & Consultancy Fees', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:22:54.184719', 28, '', NULL),
(24, 'db7a3b8b-4c98-418b-be0c-0070eb32', '2723495', 'Bank charges', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:23:27.496100', 28, '', NULL),
(25, '281a93a1-54a7-461b-bf77-afad800b', '3727629', 'Depreciation', 'ex_other', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:27:37.632821', 28, '', NULL),
(26, '196378d2-86fb-4718-a84f-39399e10', '930555', 'Cash Account', 'asset_ca_cash', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:30:09.556499', 28, '', NULL),
(27, '466cb863-9b6a-4cbe-95df-eff85f46', '4332342', 'Bank', 'asset_ca_cash', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:32:43.344164', 28, '', NULL),
(29, '3eb9ca80-3bfb-4acc-b9dd-eb157da4', '1112720', 'Nwankwo Chukwujekwu Donatus', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-06-11', '2021-06-11 12:12:11.759912', 29, '', 29),
(30, '64415e04-6947-47f9-918f-338fe3d6', '5158546', 'Barr Peter Dandam Kefas', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-06-11', '2021-06-11 12:58:51.554712', 29, '', 30),
(34, '8223e1d7-7b9a-4933-975d-f82fa38d', '55854', 'Transportation', 'ex_op', 'DR', '', 0, 0, '2021-06-28', '2021-06-28 13:05:05.857274', 28, '', NULL),
(35, 'f16722d8-4225-4d7d-adea-f1f67ae9', '3431223', 'Imprest Account', 'ex_op', 'DR', '', 0, 0, '2021-06-28', '2021-06-28 13:31:34.234741', 28, '', NULL),
(36, '0d358906-aaa6-4611-87f3-da855e9f', '048673', 'Cleaning & Sanitation', 'ex_op', 'DR', '', 0, 0, '2021-06-28', '2021-06-28 13:48:00.675157', 28, '', NULL),
(37, 'aad2e013-008e-49b3-aedf-82b68e3a', '1850405', 'Stationeries', 'ex_op', 'DR', '', 0, 0, '2021-06-28', '2021-06-28 13:50:18.416282', 28, '', NULL),
(39, '277ec988-ad9b-4d75-b655-be3d476c', '5333859', 'AMAKOR BEDE OBIOMA', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-05', '2021-07-05 12:33:53.902441', 28, '', 32),
(40, '03ec45f5-3d59-4285-8ba9-119c3f68', '2743352', 'Maina Afakirya Gadzana', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-05', '2021-07-05 12:43:27.366815', 28, '', 33),
(42, '7d9f51ff-4735-44bc-b920-6c7571a8', '3023537', 'Asogwa Ernest Chijioke', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-08', '2021-07-08 12:23:30.578859', 28, '', 35),
(43, 'c1c7571c-2045-4091-8426-611b5530', '3721995', 'Rabiu Morgan Mariam', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-08', '2021-07-08 13:21:38.036098', 28, '', 36),
(47, '2b8ef3d2-76d7-462e-a37d-884df60a', '2810852', 'Ezire Onoriode', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-08', '2021-07-08 15:10:28.924681', 28, '', 40),
(48, 'b66b2f5a-fac1-4111-ab1a-3664c18f', '4334585', 'Nworah Okechukwu Nnadozie', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-09', '2021-07-09 11:34:43.624476', 28, '', 41),
(49, '1c73b356-a168-43e0-849f-12c472b1', '2450371', 'Odu Tony Ada', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-09', '2021-07-09 11:50:24.381736', 28, '', 42),
(51, '9bbea25a-1135-4f28-be54-8e6fdfa6', '339228', 'Okeke Christopher Ogbonna', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-09', '2021-07-09 12:09:33.240193', 28, '', 44),
(52, '8fd9904f-b361-4110-a631-352698b2', '5213280', 'Akan Pius Abank', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-09', '2021-07-09 12:13:52.297831', 28, '', 45),
(53, '37232d7c-f0c0-4593-8c35-07564827', '3538685', 'Agwandas Akawaya Andrawus', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-09', '2021-07-09 12:38:35.695715', 28, '', 46),
(54, '3f2ea133-2314-4bc0-bd46-e48a073b', '4747968', 'Ukonu Nnenna Ifendu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-09', '2021-07-09 12:47:47.984396', 28, '', 47),
(56, 'e728d1c4-d056-4d16-8941-94f19da0', '2050878', 'Bawa Abdullahi Yahaya', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 11:50:20.920319', 28, '', 49),
(57, '8fd19649-f5da-481f-88b5-f41db5c7', '1457533', 'John Adayo', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 11:57:14.542800', 28, '', 50),
(58, 'dfa3e997-fd8e-41a2-9134-99cc4d25', '286977', 'Okpara Chima Centus', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 12:06:28.982720', 28, '', 51),
(59, '1a3a581b-d89c-4302-b162-60a8511d', '2529300', 'Mrs Ifeoma Michael', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 12:29:25.325880', 28, '', 52),
(60, '4b053da7-2784-478c-a62d-2983347f', '5736744', 'Okafor Izuchukwu Columbanus', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 12:36:57.753007', 28, '', 53),
(61, 'c049011d-7b5b-4c35-ac58-5e313461', '555035', 'Mr and Mrs Julius  Nwaigwe', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 12:50:55.056802', 28, '', 54),
(62, 'b29be5c4-c472-4190-be03-c722e139', '33283', 'Omaba Roseline Anita', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 13:02:33.088475', 28, '', 55),
(63, '667c7f43-c76e-48e4-b222-6826291c', '2912804', 'Kafidipe Ebenezer Imaben Precious', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 13:12:29.814405', 28, '', 56),
(64, '4d8839ae-45b4-4a1d-8528-6299cdef', '5024716', 'Amaka Scolastica Nnamani', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-12', '2021-07-12 13:24:50.727914', 28, '', 57),
(65, 'a5478dd1-72b5-4dde-9d3e-648c180e', '3646139', 'Nnamani Nehemiah Chijioke', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-15', '2021-07-15 14:46:36.183608', 28, '', 58),
(66, '23a66fea-360e-43db-8ff8-daa768a8', '720387', 'AwaK Iniobong', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-30', '2021-07-30 11:20:07.655399', 28, '', 59),
(68, '89ab2321-d5f4-4b5e-9ba0-9a44f30e', '917140', 'Osrogu  Nigeria Limited', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-30', '2021-07-30 12:17:09.151952', 28, '', 61),
(69, 'cb5e32c3-94a4-4780-9096-740343b3', '5826673', 'Orume Esther Daniel', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-07-30', '2021-07-30 13:26:58.681251', 28, '', 62),
(70, '8330acf0-743d-4a7e-8cee-225f9581', '5626643', 'Onyema Ikenna Okechukwu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-02', '2021-08-02 13:26:56.940136', 28, '', 63),
(71, '92e43d59-e25f-4df9-a5da-0edc919f', '3119788', 'Gubo Rukaiya', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-02', '2021-08-02 14:19:31.790794', 28, '', 64),
(72, 'b628362c-0d57-4e5a-899c-d2833719', '1713166', 'Uzoigwe Obioma Helen', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-16', '2021-08-16 14:13:17.411021', 28, '', 65),
(73, '526560ce-601e-46e3-afd4-6d97c067', '857403', 'Dakoru Asekutu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-16', '2021-08-16 14:57:08.408998', 28, '', 66),
(74, '8c6ea101-d741-45d7-988d-f877a9e6', '4927928', 'Onuzulike Ugochukwu Babatunde', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-16', '2021-08-16 15:27:49.934234', 28, '', 67),
(75, '5e593366-4094-4e9a-a627-83df2236', '2739578', 'Chukwuma Celestine Obiajulu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-16', '2021-08-16 15:39:27.589457', 28, '', 68),
(76, '7e2ee57c-be94-4a3a-aa63-594bcf5d', '5535415', 'Oketta Jude Onesi', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-17', '2021-08-17 10:35:55.658301', 28, '', 69),
(78, 'db7b4f7b-e7b2-4549-9843-aacc7540', '3618691', 'Abubakar Suleiman Takoma', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-17', '2021-08-17 11:18:36.698993', 28, '', 71),
(79, '7a249e57-4671-4308-9e89-ba6093d8', '202098', 'Ramatu Bage Takuma', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-17', '2021-08-17 12:20:20.109352', 28, '', 72),
(81, '9b0d1e1c-0c77-42a2-a625-d075e5ed', '3536857', 'Emmanuel Okechukwu Ede', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-17', '2021-08-17 13:36:35.863490', 28, '', 74),
(82, '807e697b-21b3-44aa-92e3-f26ee142', '42041', 'Mbanekwe Anthony Oluchukwu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-17', '2021-08-17 14:00:42.048145', 28, '', 75),
(83, '1a14b105-2eec-4273-b62b-238ab667', '5940946', 'Igboanugo Chizoba', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 11:40:59.977860', 28, '', 76),
(84, 'bf754cb6-c7ec-4d3e-90aa-731e1349', '5956398', 'Modestus Mbaneri', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 11:56:59.410137', 28, '', 77),
(85, '3a9ebcae-87b1-4f20-912d-6ed2eed3', '25596', 'Ukachukwu Chidiebere Emmanuel', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 12:05:02.600356', 28, '', 78),
(86, '225b6925-0c76-4f07-8d36-2486ee07', '511497', 'Hussein A. Tijjani', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 12:14:51.105564', 28, '', 79),
(87, 'b17ec303-6031-4e79-b431-12f68546', '830243', 'Barrister Navati Iliya', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 12:30:08.248427', 28, '', 80),
(88, '77a673b6-0eb4-4465-87cb-3959a498', '104285', 'West Sobomabo Wariye', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 12:42:10.122903', 28, '', 81),
(89, '9c2d1884-02d1-4f59-afe8-b92829d9', '4552998', 'Mrs Gbaagileh Judith Mbananden ', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-08-19', '2021-08-19 12:52:46.050882', 28, '', 82),
(90, 'f4e16c84-fa35-439c-a75a-5787fa68', '4633712', 'Ishidi Ijudigal Pur', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-09-07', '2021-09-21 11:19:06.625609', 28, '', 83),
(91, '58079770-dddf-455f-a646-b6d936b8', '2652777', 'Ishidi Ijasini Pur', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-09-07', '2021-09-21 11:18:23.863499', 28, '', 84),
(92, '686f13eb-ddda-4afb-bf07-8a32e4c0', '385793', 'Audu Rabiu Morgan', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-09-21', '2021-09-21 10:48:21.541847', 28, '', 85),
(93, '040f9039-2031-4c98-8982-e70906a9', '2610998', 'Architechtural Design', 'ex_cap', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 10:10:27.007054', 28, '', NULL),
(94, 'bb595b68-119c-4776-a511-7645d046', '752352', 'Agency Fee', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 10:52:07.360213', 28, '', NULL),
(95, 'f623d88c-89e6-4c5a-9b2d-c929144c', '3059969', 'Sales Commission', 'ex_op', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 10:59:30.971019', 28, '', NULL),
(96, 'ecc7e618-ad3d-4fdc-9222-dc31043b', '3337366', 'Building Construction', 'ex_cap', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 12:37:33.376778', 29, '', NULL),
(97, '322026f7-b449-49ab-9827-07541077', '4235155', 'REFUND', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 13:35:42.157067', 29, '', NULL),
(98, 'c6d36ee6-2a63-4b7a-aaf6-b4676f0b', '5059655', 'Vehicle License/ Renewals', 'ex_other', 'CR', '', 0, 0, '2021-09-22', '2021-09-22 13:59:50.656999', 29, '', NULL),
(99, 'a0ad93d6-700f-4351-a518-7f9c94e7', '040977', 'Legal Fees', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 14:40:00.978617', 29, '', NULL),
(100, '6fcb4d0b-6c48-4260-ab21-214017a1', '211787', 'Interest On Loan', 'ex_interest', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:01:21.789265', 29, '', NULL),
(101, 'ba7b8608-557a-4018-95c7-2aa52563', '1820464', 'Loan Repayment', 'lia_cl_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:20:18.465576', 29, '', NULL),
(102, 'bbdd5293-75bb-476c-9d0f-3cc27ba7', '5725108', 'Compensation for Economic Trees', 'asset_adjustment', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:25:57.109582', 29, '', NULL),
(103, '27bd6431-2f09-4a15-b996-a7e65982', '373857', 'General repairs/Maintenance', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 10:03:37.869029', 29, '', NULL),
(104, '02a2d936-3398-4e85-a5b0-39d3573d', '737272', 'Public Relations (PR)', 'ex_other', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 11:37:07.277793', 29, '', NULL),
(105, '9dd68356-d3b5-4097-b945-6f80d1b8', '1853414', 'SURVEY FEE', 'ex_other', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 11:53:18.418338', 29, '', NULL),
(106, '4fc053df-6393-4531-9c45-7b5f930b', '5012311', 'MDs Account', 'ex_op', 'CR', '', 0, 0, '2021-09-23', '2021-09-23 12:12:50.312528', 29, '', NULL),
(107, 'ffcb4d54-9a77-46c8-b8f4-c2f9ddc7', '2518264', 'Sundry Operations', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:18:25.267112', 29, '', NULL),
(108, 'e82ba922-949f-4c43-8eec-6df3e4e2', '101996', 'Registration/Renewals', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:19:10.098348', 29, '', NULL),
(109, '5d8af8f9-1dc6-4447-b602-a10ccfee', '1949733', 'Training Expenses', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:49:19.734811', 29, '', NULL),
(110, '25a75095-e6cf-47ec-bd1e-a18ce10a', '380727', 'Advances', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:00:38.736448', 29, '', NULL),
(111, '2c32ccc6-2b28-427a-9285-4bc19f6a', '516181', 'Office Equipments', 'asset_adjustment', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:16:05.182160', 29, '', NULL),
(112, '9057c65d-0d66-4cc9-9a43-732cf23f', '534255', 'Purchase of properties', 'asset_ppe', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:34:05.256994', 29, '', NULL),
(113, '8f831ad6-1700-406e-a0b2-ad813914', '2931923', 'Staff Welfare', 'ex_op', 'DR', '', 0, 0, '2021-09-24', '2021-09-24 11:31:29.931471', 28, '', NULL),
(114, '3c5caa9a-6d1b-44c8-8638-a8658fc7', '2438219', 'EXCAVATION ', 'ex_other', 'DR', '', 0, 0, '2021-09-24', '2021-09-24 14:38:24.221650', 28, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` varchar(20) DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `md` varchar(50) NOT NULL,
  `entries` varchar(50) NOT NULL,
  `sales` varchar(50) NOT NULL,
  `expense` varchar(50) NOT NULL,
  `accountant` varchar(50) NOT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` date NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `edited_By` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `uuid`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `mobile`, `email`, `is_staff`, `md`, `entries`, `sales`, `expense`, `accountant`, `signature`, `avatar`, `is_active`, `date_joined`, `createdBy_FK`, `createdAt`, `updatedAt`, `edited_By`) VALUES
(1, '', '$2b$10$gwWpHzLTc82G8emlo2X.xOyZHZgFlBGX5vvNZ/W0oI68ctrA10NJS', '2021-09-24 15:28:44.760000', '1', 'SA@4523', 'Santos', 'Admin', '07000000121', 'sadmin@gmail.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', NULL, NULL, 1, '2021-04-15', 0, NULL, '2021-09-24 14:31:47', ''),
(28, 'ad7729cb-bd67-4d20-a5a6-2fb3c2b75599', '$2b$10$yOlNrwETrKE9QPt8oeWmluwb.ZInUGxiBt0s.kOwdHyLzoXZUDk2G', '2021-09-24 14:32:00.042000', '1', 'GC@550', 'Grace', 'Young', '08035605424', 'gracechinyere.gce@gmail.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', 'http://192.168.0.101:5000/public\\upload\\photo_1631709449588_blob', NULL, 1, '2021-05-28', 1, '2021-05-28', '2021-09-24 13:32:00', 'GC@550'),
(29, 'ace4cf92-b071-429b-ba2b-af8b135461f5', '$2b$10$C9NY7qhyUgvifNmdijEHmuSlx.gICBXpKOk4tOKvEcutEt0HRz52.', '2021-09-24 14:49:06.846000', NULL, 'NO@550', 'Ngozi', 'Oche', '07064590086', 'ngozichukwung@yahoo.com', 0, '', 'entries', 'sales', 'expense', 'accountant', 'http://192.168.0.101:5000/public\\upload\\photo_1623406810150_blob', NULL, 1, '2021-05-28', 1, '2021-05-28', '2021-09-24 14:31:55', ''),
(30, '137182bd-d8ff-4adf-8745-800c993f9654', '$2b$10$/GkKbFUbc2NG1jIzUQ5cbOzoVUGHJZ7Du7HqqFBy./zO2Vgy8L5ZW', NULL, NULL, 'AC@514', 'Augustine', 'Chime', '08023058629', 'ifeanyi25a0@yahoo.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', NULL, NULL, 1, '2021-06-11', 28, '2021-06-11', '2021-07-16 23:11:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `bill_category`
--

CREATE TABLE `bill_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `vendor_FK` int(11) DEFAULT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_itemsmodel`
--

CREATE TABLE `bill_itemsmodel` (
  `id` int(11) NOT NULL,
  `bill_FK` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `bill_ID` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_model`
--

CREATE TABLE `bill_model` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `bill_term` int(11) NOT NULL,
  `vendor_FK` int(11) NOT NULL,
  `bill_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `amount_paid` decimal(10,0) DEFAULT 0,
  `account_FK` int(11) DEFAULT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_category`
--

CREATE TABLE `building_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building_category`
--

INSERT INTO `building_category` (`id`, `name`, `createdAt`, `updatedAt`, `createdBy_FK`) VALUES
(4, '4 Bedroom fully detached', '2021-05-31', '2021-05-31 09:58:50', 29),
(5, '4 Bedroom Semi detached', '2021-05-31', '2021-05-31 10:03:45', 29),
(6, '5 Bedroom Fully Detached Duplex', '2021-07-05', '2021-07-05 12:05:22', 28),
(7, '3 Bedroom terraced Duplex', '2021-07-05', '2021-07-05 12:06:09', 28),
(8, '3 Bedroom Semi - Detached Dulex', '2021-07-07', '2021-07-07 11:08:56', 28),
(9, '3 Bedroom Bungalow (Carcass)', '2021-08-16', '2021-08-16 11:40:12', 28),
(10, '4 Bedroom Duplex (Decked only)', '2021-08-16', '2021-08-16 11:41:22', 28),
(11, '5 Bedroom Duplex (Partial Development)', '2021-08-16', '2021-08-16 11:42:00', 28);

-- --------------------------------------------------------

--
-- Table structure for table `customer_customermodel`
--

CREATE TABLE `customer_customermodel` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `address_1` varchar(500) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_sex` varchar(50) NOT NULL,
  `customer_marital` varchar(50) NOT NULL,
  `country` varchar(200) NOT NULL,
  `customer_state` varchar(200) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `postal_address` varchar(500) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `place_work` varchar(200) NOT NULL,
  `rm` int(11) NOT NULL,
  `business_employer_name` longtext NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `next_kin_name` varchar(200) NOT NULL,
  `next_kin_addrss` varchar(500) NOT NULL,
  `next_kin_relate` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `hidden` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `createdBy_FK` int(11) DEFAULT NULL,
  `tx_date` date DEFAULT NULL,
  `edited_By` varchar(200) NOT NULL,
  `slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_customermodel`
--

INSERT INTO `customer_customermodel` (`id`, `uuid`, `customer_name`, `address_1`, `phone_no`, `customer_email`, `customer_sex`, `customer_marital`, `country`, `customer_state`, `customer_address`, `postal_address`, `occupation`, `place_work`, `rm`, `business_employer_name`, `avatar`, `next_kin_name`, `next_kin_addrss`, `next_kin_relate`, `active`, `hidden`, `createdAt`, `updatedAt`, `createdBy_FK`, `tx_date`, `edited_By`, `slug`) VALUES
(26, '19eb4e2d-703d-48f8-8406-2482b6cd8514', 'Bala Jane Kudu', 'No Gindiri Street Garki 2', '08036581010', 'janeawulobala@yahoo.com', 'Female', 'Married', 'Nigeria', 'Plateau', 'No Gindiri Street Garki 2', 'No 42 Durban Street, Wuse 2, Abuja', 'Public Servant', 'Highfield Stronghold Limited', 28, 'Mr. Femi Oye, No 42 Durban Street Wuse 2, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1624877449598_blob', 'Mr, Bala Kudu', 'No Gindiri Street Garki 2', 'Husband', 1, 0, '2021-05-28', '2021-05-28 09:34:57.935287', 1, '2021-07-13', 'SA@4523', NULL),
(27, '917c58e8-3148-4d28-8b63-c8c7081ebc5d', 'Aliyu Ahmad Tijjani', 'Block D8, Flat 2, Same Global Estate, Dakwo District, FCT, Abuja', '08035889521', 'ataliyu@gmail.com', 'Male', 'Married', 'Nigeria', 'Kaduna', 'Block D8, Flat 2, Same Global Estate, Dakwo District, FCT, Abuja', 'Block D8, Flat 2, Same Global Estate, Dakwo District, FCT, Abuja', 'Medical practice (Public Health)', 'Institute of Human Virology, Nigeria', 28, 'IHVN, Plot 253, Herbert McCaulay Way, Central Business District, Garki, Abuja - FCT', 'http://192.168.0.101:5000/public\\upload\\photo_1624877483791_blob', 'Mrs. Zainab Tijjani Aliyu', 'Block D8, Flat 2, Same Global Estate, Dakwo District, FCT, Abuja', 'Wife', 1, 0, '2021-05-28', '2021-05-28 10:18:43.059488', 28, '2021-07-13', '', NULL),
(28, 'f8a61bc4-fdb3-49d4-bd4c-a48e7a2b9e42', 'Nnadi Chijioke Okadili ', 'No 33 Ogbodo Road, Opposite Dr Okwesili Eze Nwodo House Ukehe,Igbo etititi', '08069507371', 'chijioke.nnadi@yahoo.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'No 33 Ogbodo Road, Opposite Dr Okwesili Eze Nwodo House Ukehe,Igbo etititi', 'No 33 Ogbodo Road, Opposite Dr Okwesili Eze Nwodo House Ukehe,Igbo etititi', 'Electrical Engr', 'Fianza Electrical Ltd', 29, 'Fianza Electrical Ltd', NULL, 'Nnadi Helen Ifeanyi', 'Block 2400, Santos Estate , Abuja', 'Wife', 1, 0, '2021-05-28', '2021-05-28 10:30:51.279102', 28, '2019-10-31', 'GC@550', NULL),
(29, '602a0486-e876-4f59-b722-0280dda04d9d', 'Nwankwo Chukwujekwu Donatus', 'Suite B7 Ajb mall 1126 Oladipo Diya Way Gudu Disrict Abuja', '08037192865', 'jekwuauto@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'House RVSD 26  4 All Housing  Estate Wumba  District Abuja', 'Suite B7 Ajb mall 1126 Oladipo Diya Way Gudu Disrict Abuja', 'Business', 'Suite B7 Ajb mall 1126 Oladipo Diya Way Gudu Disrict Abuja', 29, 'Jekwu Auto Ventures Ltd', 'http://192.168.0.101:5000/public\\upload\\photo_1624877582360_blob', 'Ebere Nwankwo', 'Appo Mechanical Centre', 'Brother', 1, 0, '2021-06-11', '2021-06-11 11:12:11.664666', 29, '2021-07-13', '', NULL),
(30, 'c0e2bfb1-e0b7-42fd-9954-825dfbc01391', 'Barr Peter Dandam Kefas', 'plot 8, Alexandria cresent wuse2 behind Banex plaza Abujax', '0803392140,08093921340', 'pdkefas@yahoo.com', 'Male', 'Married', 'Nigeria', 'FCT', '', 'plot 8, Alexandria cresent wuse2 behind Banex plaza Abuja (08069666966)', 'Legal Practitioner', 'Suite 8B, Glory Mojec plaza Wuse 2 Abuja', 29, 'Suite 8B, Glory Mojec plaza Wuse 2 Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1624877821475_blob', 'Rabi J Kefas  ', 'plot 8, Alexandria cresent wuse2 behind Banex plaza Abuja (08069666966)', 'Wife', 1, 0, '2021-06-11', '2021-06-11 11:58:51.505627', 29, '2021-07-13', 'GC@550', NULL),
(32, '83879243-4fed-490d-be3a-f1aece04cd11', 'AMAKOR BEDE OBIOMA', 'House 10 Main stream, Santos Estate, Dakwo District, Abuja', '07038070792', 'bedeobioma@gmail.com', 'Male', 'Married', 'Nigerian', 'Imo', 'Umuokwaradim - Nnerim - Ndugba Isu LGA, Imo state', 'House 10 Main stream, Santos Estate, Dakwo District, Abuja', 'Public servant (Soldier)', 'Nigerian Army', 30, 'Headquarters Nigerian Army, Garki Area 7, Abuja', NULL, 'Mrs Amakor Justina C.', 'House 10 Main stream, Santos Estate, Dakwo District, Abuja', 'Wife', 1, 0, '2021-07-05', '2021-07-05 11:33:53.812069', 28, '2021-07-13', '', NULL),
(33, '2423b192-c5c5-497c-bc17-410cd38a5a58', 'Maina Afakirya Gadzana', '9 Haile Selessie Street, Asokoro, Abuja', '07032275656', 'maina4mi@gmail.com', 'Male', 'Married', 'Nigeria', 'Borno', '9 Haile Selessie Street, Asokoro, Abuja', '9 Haile Selessie Street, Asokoro, Abuja', 'Business', 'Self Employed', 30, 'Business', 'http://192.168.0.101:5000/public\\upload\\photo_1626176169367_blob', 'Bukar Afakirya Gadzama', 'A69,Ehdterview Estate, Lokogoma, Abuja', 'Brother', 1, 0, '2021-07-05', '2021-07-05 11:43:27.316915', 28, '2021-07-13', '', NULL),
(35, 'ffeeb67a-ee88-4c8f-b052-d1b133a7c5ad', 'Asogwa Ernest Chijioke', 'No 7, Stephen Keshi Street, Off Chika Okpalla, off 69 Road, 6th Avenue, Gwarimpa, Abuja', '08037792978', 'cjeski@yahoo.com', 'Male', 'Married', 'Niegrian', 'Enugu', 'co Community Primary School, Akpa - Edem, Edem, Nsukka LGA, Enugu State', 'No 7, Stephen Keshi Street, Off Chika Okpalla, off 69 Road, 6th Avenue, Gwarimpa, Abuja', 'Public Servant', 'NNPC', 28, 'Integrated Data services ltd. (IDSL), a subsidiary of NNPC; No 36, Ogba Road, Oko, Benin city', 'http://192.168.0.101:5000/public\\upload\\photo_1625743564140_blob', 'Dr. Asogwa Amarachi Lynn', 'National Hospital, Abuja', 'Wife', 1, 0, '2021-07-08', '2021-07-08 11:23:30.495759', 28, '2021-07-13', '', NULL),
(36, '4faf80e3-dcb9-4a1e-ad7a-413812e2343c', 'Rabiu Morgan Mariam', 'Plot 64A, Golden spring Estate, Duboyi District Ring road II, Abuja FCT', '08023123729', 'mariamsambo@yahoo.com', 'Female', 'Married', 'Nigeria', 'Kaduna', 'Chief of Morias Palace, Manchok Kaura LGA, Kaduna State', 'P.O Box 4541 Garki Abuja', 'Public Servant', 'Petroleum Equallization Fund (MGT) Board', 30, 'Plot 542, Cadatral zone B09 Shehu YarAdua Way, Kado District Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1625746969456_blob', 'Morgan Rabiu Audu', 'Plot 64A, Golden spring Estate, Duboyi District Ring road II, Abuja FCT', 'Husband', 1, 0, '2021-07-08', '2021-07-08 12:21:37.947446', 28, '2021-07-13', '', NULL),
(37, '99bb6d38-63c4-461a-9fe0-55368f04973f', 'Alozie Alphonsus', 'Ibeku Okwuato Mbaise, Aboh Mbaise LGA, Imo State', '08023443074', 'acalozie@yahoo.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Ibeku Okwuato Mbaise, Aboh Mbaise LGA, Imo State', 'Box 6044 Ikeja, Lagos State', 'Civil Servant', 'INEC Head Quarters, Abuja', 30, 'INEC Head Quarters Zambezi Crescent Maitama, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1625751487928_blob', 'Alozie Stella', 'Ibeku Okwuato Mbaise, Aboh Mbaise LGA, Imo State', 'Wife', 1, 0, '2021-07-08', '2021-07-08 13:36:55.614924', 28, '2021-07-13', '', NULL),
(40, '4b2d291a-6a70-4707-8d71-50abde80db1b', 'Ezire Onoriode', 'Ivo zo, Uniport street, Brains and Harmers Estate Galadimawa, Abuja', '08060087524', 'oeziree@yahoo.com', 'Male', 'Married', 'Nigeria', 'Delta', 'Ezire s Compound Ubini Ata St. Uruwre quarters, Igbidi Isoke south LGA', 'Ivo zo, Uniport street, Brains and Harmers Estate Galadimawa, Abuja', 'Public Servant', 'World Bank Abuja', 30, 'Asokoro, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1629112953488_blob', 'Mrs Ruth Ezire', 'Ivo zo, Uniport street, Brains and Harmers Estate Galadimawa, Abuja', 'Wife', 1, 0, '2021-07-08', '2021-07-08 14:10:28.818706', 28, '2021-07-13', '', NULL),
(41, '9806bce2-ed4c-43d9-a02e-fd2f78973bc1', 'Nworah Okechukwu Nnadozie', 'No 1 jasper close, Wuye Abuja FCT', '08163481699', '', 'Male', 'Married', 'Nigeria', 'Anambra', 'No 7 Ide Cane, off Court Road, Awka, Anambra State', 'No 1 jasper close, Wuye Abuja FCT', 'Self Employed', 'Avaunt Technical Solution', 30, 'Block 157B, Plot 1 Cadestral zone, D04, Idu Sabo District', 'http://192.168.0.101:5000/public\\upload\\photo_1631533633387_blob', 'Nworah Nkemdilim (Mrs)', 'No 1 jasper close, Wuye Abuja FCT', 'Wife', 1, 0, '2021-07-09', '2021-07-09 10:34:43.541457', 28, '2021-07-13', '', NULL),
(42, 'de60ef08-9501-4bcb-aee1-faf2d065620d', 'Odu Tony Ada', 'No 7, Martins Oriere Drive, Shraha 2 Estate, Lokogoma Abuja, FCT', '07069293796', 'oduadatony@gmail.com', 'Male', 'Single', 'Nigeria', 'Benue', 'No 45 Modern Market Road Makurdi Benue State', 'No 7, Martins Oriere Drive, Shraha 2 Estate, Lokogoma Abuja, FCT', 'Civil Servant', 'CBN Head quarters, Plot 33 Abubakar Tafawa Balewa Way, CBD, Abuja FCT', 30, 'Central Bank of Nigeria', 'http://192.168.0.101:5000/public\\upload\\photo_1625834101741_blob', 'Ofu Joshua Odu', 'No 45 Modern Market Road Makurdi Benue State', 'Brother', 1, 0, '2021-07-09', '2021-07-09 10:50:24.328591', 28, '2021-07-13', '', NULL),
(44, 'f0c76393-bab8-4b10-aaff-2f69aae3ba7f', 'Okeke Christopher Ogbonna', 'Plot 15, Nujoma Estate, Galadimawa, Abuja', '07068834900', 'xristokeke@gmail.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'Plot 15, Nujoma Estate, Galadimawa, Abuja', 'Plot 15, Nujoma Estate, Galadimawa, Abuja', 'Retired Civil Servant', 'Retired', 30, 'Retired', NULL, 'Mrs Nkechi Okeke', 'Plot 15, Nujoma Estate, Galadimawa, Abuja', 'Wife', 1, 0, '2021-07-09', '2021-07-09 11:09:33.055248', 28, '2021-07-13', '', NULL),
(45, 'e19a4afd-f731-41d6-8df1-60cb41ec4444', 'Akan Pius Abank', 'Plot 2360 David Ejoor Creascent Durumi Abuja', '080956776678', 'akpanpius@yahoo.com', 'Male', 'Single', 'Nigeria', 'Cross Rive', 'Okundi Boki, Cross River State, Nigeria', 'Plot 2360 David Ejoor Creascent Durumi Abuja', 'Business', 'SilverBird Abuja', 30, 'Sir P collection Enterprises', 'http://192.168.0.101:5000/public\\upload\\photo_1625829382453_blob', 'Lawlence Obi Akan', 'Plot 2360 David Ejoor Creascent Durumi Abuja', 'Brother', 1, 0, '2021-07-09', '2021-07-09 11:13:52.244095', 28, '2021-07-13', '', NULL),
(46, 'd28fec43-1c01-47ce-941e-edcfc8ce206a', 'Agwandas Akawaya Andrawus', 'AB 12A Sunnyvale Homes, Dakwo District, Abuja', '080758449007', 'agwandas@yahoo.com', 'Male', 'Married', 'Nigeria', 'Adamawa', 'Gidan Mission Uding Hong, LGA, Adamawa State', 'AB 12A Sunnyvale Homes, Dakwo District, Abuja', 'Engineering', 'Gas and Power Directorate', 30, 'Oil and Gas, Gas and power, NNPC Towers, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1625830834787_blob', 'Mrs Maria Agwanda Abiza', 'AB 12A Sunnyvale Homes, Dakwo District, Abuja', 'Wife', 1, 0, '2021-07-09', '2021-07-09 11:38:35.639394', 28, '2021-07-13', '', NULL),
(47, '599e5abd-0cec-4492-9da4-7082478a0930', 'Ukonu Nnenna Ifendu', 'No 10, Yashim Dogara Crescent, Dawaki, Abuja, FCT', '08037168138', 'ifendiukonu@gmail.com', 'Female', 'Married', 'Nigeria', 'Abia', 'No 27. Ezera Road, Asaga, Ohafia LGA, Abia State', 'No 5, Boke Close, Wuse II, Abuja', 'Bussiness', 'No 10, Yashim Dogara Crescent, Dawaki, Abuja, FCT', 30, 'Self Employed', 'http://192.168.0.101:5000/public\\upload\\photo_1625831356929_blob', 'Ifendu Agwu Ukonu', 'No 10, Yashim Dogara Crescent, Dawaki, Abuja, FCT', 'Husband', 1, 0, '2021-07-09', '2021-07-09 11:47:47.934358', 28, '2021-07-13', '', NULL),
(49, '3e7f8781-990a-4195-a533-adbd079944ca', 'Bawa Abdullahi Yahaya', 'Plot Y15 Sunnyvale Estate, Dakwo District, FCT, Abuja', '08066201215', 'audunboya@gmail.com', 'Male', 'Married', 'Nigeria', 'Kebbi', 'No 5A Court road, Sabon Gari, Jega, Kebbi State', 'P.O.Box 10976 Garki, Abuja', 'Public Servant', 'Nigerian Ports Authority ', 30, 'No 26/28 Marina Lagos', 'http://192.168.0.101:5000/public\\upload\\photo_1626087124212_blob', 'Binta Shehu Jega', 'Plot Y15 Sunnyvale Estate, Dakwo District, FCT, Abuja', 'Wife', 1, 0, '2021-07-12', '2021-07-12 10:50:20.839090', 28, '2021-07-13', '', NULL),
(50, '30d592ae-fb2f-4d63-8744-716b2a66d937', 'John Adayu', 'No 10 Odo Udana Street, Asokoro, Abuja', '07038335952', 'adayo124@gmail.com', 'Female', 'Married', 'Nigeria', 'Borno', 'No 10 Odo Udana Street, Asokoro, Abuja', 'No 10 Odo Udana Street, Asokoro, Abuja', 'Business', 'Business', 30, 'Business', 'http://192.168.0.101:5000/public\\upload\\photo_1626087511560_blob', 'Jayden Alakiya', 'No 10 Odo Udana Street, Asokoro, Abuja', 'Son', 1, 0, '2021-07-12', '2021-07-12 10:57:14.467796', 28, '2021-07-12', 'GC@550', NULL),
(51, 'dde66210-4fbc-494e-a172-069dd04713f4', 'Okpara Chima Centus', 'Jesus Avenue, Royal Street, Apo FCT Abuja', '08098801157', 'chimaokpara2016@gmail.com', 'Male', 'Single', 'Nigeria', 'Imo', 'Jesus Avenue, Royal Street, Apo FCT Abuja', 'Jesus Avenue, Royal Street, Apo FCT Abuja', 'Business', 'Gudu', 30, 'Business', 'http://192.168.0.101:5000/public\\upload\\photo_1626088029494_blob', 'Okpara Chinedu Jane', 'Uhuala Ihitenasa Osu LGA, Imo State', 'Brother', 1, 0, '2021-07-12', '2021-07-12 11:06:28.937871', 28, '2021-07-13', '', NULL),
(52, 'a6227faf-c60d-49ba-87b6-bc98096de4c6', 'Mrs Ifeoma Michael', 'Block 10, Flat 3, Games village, FCT ABuja', '08068439399', 'ifypyno@gmail.com', 'Female', 'Married', 'Nigeria', 'Enugu', 'No 33 Ogbodo Road, Igbo Etiti, Enugu State, Nigeria', 'Block 10, Flat 3, Games village, FCT ABuja', 'Civil Servant', 'FCDA', 30, 'FCDA ', NULL, 'Kaima Michael', 'Block 10, Flat 3, Games village, FCT ABuja', 'Daughter', 1, 0, '2021-07-12', '2021-07-12 11:29:25.266129', 28, '2021-07-13', '', NULL),
(53, '2f941903-c917-46be-91f0-01c5c4fecc14', 'Okafor Izuchukwu Columbanus', 'Plot 21A Kugbo Extension Layout FCT Abuja', '08034517161', 'izok.ng@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Umunze, Umudim Imenyi, Ihitenasa Orsu LGA, Imo State', 'P.O. Box 1774 Garki Abuja', 'Business', 'Cizuu Electrics Ltd', 30, 'Suite 5 AJB Mall, Gudu District, Abuja', NULL, 'Izuchukwu Chidubem Zeal', 'Plot 21A Kugbo Extension Layout FCT Abuja', 'Son', 1, 0, '2021-07-12', '2021-07-12 11:36:57.704329', 28, '2021-07-13', '', NULL),
(54, '3950ca94-c7ac-4822-bf0d-b0dd55cdc45c', 'Mr and Mrs Julius  Nwaigwe', '27A, Drive, Prince and Princess Estate, Abuja', '08051141831', '@gmail.com', 'Male', 'Married', 'Nigeria', 'Abia', 'Umuojima Ogbu Village, Osisioma, Abia State', 'NIL', 'Pharmacist', 'SCI International Pharmacy and stores Ltd, Apo Legislative Quarters, Abuja', 30, 'SCI International Pharmacy and stores Ltd', 'http://192.168.0.101:5000/public\\upload\\photo_1626090767642_blob', 'Mrs Victoria Nwigwe', '27A, Drive, Prince and Princess Estate, Abuja', 'Wife', 1, 0, '2021-07-12', '2021-07-12 11:50:54.999711', 28, '2021-07-13', '', NULL),
(55, '26788b13-2c2f-4623-bdb9-5e8333503842', 'Omaba Roseline Anita', 'Plot 49A Golden Spring Estate, Duboyi District, Ring road two, Abuja FCT', '07081333001', 'anitaroseomaba@gmail.com', 'Female', 'Single', 'Nigeria', 'Benue', 'Plot 49A Golden Spring Estate, Duboyi District, Ring road two Abuja FCT', 'Plot 49A Golden Spring Estate, Duboyi District, Ring road two Abuja FCT', 'Public Servant', 'Petroleum Equalization Fund Management Board', 1, 'Plot 542 Cadastral zone B09 Shehu Yaradua way, Kado District Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1626091396187_blob', 'Okida Kaka', 'Plot 49A Golden Spring Estate, Duboyi District, Ring road II Abuja FCT', 'Brother', 1, 0, '2021-07-12', '2021-07-12 12:02:33.045609', 28, '2021-07-13', '', NULL),
(56, '3d287e3a-6270-4565-be3f-b717c1ac37ff', 'Kafidipe Ebenezer Imaben Precious', 'Plot 190, Kubuwa pipeline', '08058538212', 'pkafidipe@yahoo.com', 'Female', 'Married', 'Nigeria', 'Kogi', 'Qua Iboe Mission Idah Kogi State', 'Plot 190, Kubuwa pipeline', 'Public Servant', 'PEF M B, Abuja', 30, 'PEF M B, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1626092068909_blob', 'Oluwaseyi Favour Ebenezer', 'Plot 190, Kubuwa pipeline', 'Son', 1, 0, '2021-07-12', '2021-07-12 12:12:29.743398', 28, '2021-07-13', '', NULL),
(57, 'c2802298-b921-4dd6-ac01-f87207216b01', 'Amaka Scolastica Nnamani', 'No 17, Massenya Street Wuse zone 6, Abuja', '08186025178', 'amasun20@yahoo.com', 'Female', 'Single', 'Nigeria', 'Enugu', 'No 17, Massenya Street Wuse zone 6,Abuja', 'No 17, Massenya Street Wuse zone 6, Abuja', 'Self Employed', 'No 17, Massenya Street Wuse zone 6, Abuja', 30, 'No 17, Massenya Street Wuse zone 6, Abuja', NULL, 'Amaka Scolastica Nnamani', 'No 17, Massenya Street Wuse zone 6, Abuja', 'Brother', 1, 0, '2021-07-12', '2021-07-12 12:24:50.680398', 28, '2021-07-13', '', NULL),
(58, '42a63243-a5a4-4007-8c80-58c5817b3824', 'Nnamani Nehemiah Chijioke', 'Plot 152 Solomon Drive Nzube Estate, Lokogoma FCT, Abuja', '08033163095', 'celticchacha2@gmail.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'Plot 152 Solomon Drive Nzube Estate, Lokogoma FCT, Abuja', 'Plot 152 Solomon Drive Nzube Estate, Lokogoma FCT, Abuja', 'Business', 'Gudu Market, FCT, Abuja', 29, 'Celtic Global Enterprises; Shop 45 - R386 Gudu Market FCT, Abuja', NULL, 'Nehemiah SomtoChukwu Nnamani', 'Plot 152 Solomon Drive Nzube Estate, Lokogoma FCT, Abuja', 'Son', 1, 0, '2021-07-15', '2021-07-15 13:46:36.033589', 28, '2020-06-24', '', NULL),
(59, '3a26d64b-b009-42c2-9d5b-ef7a674e94d1', 'AwaK Iniobong', '16 Kolda street, Wuse 2, Abuja', '0708661780', 'iniobongawak@yahoo.com', 'Male', 'Married', 'Nigeria', 'Akwa Ibom', '16 Kolda street, Wuse 2, Abuja', '16 Kolda street, Wuse 2, Abuja', 'Business', '16 Kolda street, Wuse 2, Abuja', 30, '16 Kolda street, Wuse 2, Abuja', NULL, 'Mrs  chidinma Iniobong Awak', '16 Kolda street, Wuse 2, Abuja', 'Wife', 1, 0, '2021-07-30', '2021-07-30 10:20:07.327518', 28, '2017-01-03', '', NULL),
(60, 'c8396405-957c-4a72-877a-e01bb3d1dc0b', 'Dilioha Ikenna Collins', 'House 8, Trademore Avenue, Trademore Estate Lugbe, Abuja, FCT', '0703293660', 'dilicoll@gmail.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'Eke Udi LGA, Enugu State', 'House 8, Trademore Avenue, Trademore Estate Lugbe, Abuja, FCT', 'Business ', 'Pasty Plaza Jabi, District, Abuja', 30, 'Pasty Plaza Jabi District, Abuja', NULL, 'Mrs Angela Dilioha', 'House 8, Trademore Avenue, Trademore Estate Lugbe, Abuja, FCT', 'Wife', 1, 0, '2021-07-30', '2021-07-30 11:01:52.704851', 28, '2016-06-08', '', NULL),
(61, '9bdcf0d7-dc2e-4bcf-945a-37212a2f706b', 'Osrogu  Nigeria Limited', 'House A64 Maccido Estate, Galadimawa District, Abuja', '08055105320', 'rhosam74@yahoo.com', 'Male', 'Married', 'Nigeria', 'Benue', 'House A64 Maccido Estate, Galadimawa District, Abuja', 'House A64 Maccido Estate, Galadimawa District, Abuja', 'Business', 'House A64 Maccido Estate, Galadimawa District, Abuja', 30, 'House A64 Maccido Estate, Galadimawa District, Abuja', NULL, 'Mrs Rhoda Ojo Ocholi', 'House A64 Maccido Estate, Galadimawa District, Abuja', 'Wife', 1, 0, '2021-07-30', '2021-07-30 11:17:09.074955', 28, '2015-10-02', '', NULL),
(62, 'be5c7da6-37f9-4210-9a0c-d4d781a724d3', 'Orume Esther Daniel', 'No 46B Golden Spring Estate, Lokogoma, Abuja', '0803602054', 'estherdjorume@yahoo.com', 'Female', 'Married', 'Nigeria', 'Delta', 'No 46B Golden Spring Estate Abuja', 'No 46B Golden Spring Estate, Lokogoma, Abuja', 'Public Servant', 'No 46B Golden Spring Estate Abuja', 30, 'No 46B Golden Spring Estate Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1629112815718_blob', 'Daniel John Orume', 'No 46B Golden Spring Estate, Duboyi Abuja', 'Husband', 1, 0, '2021-07-30', '2021-07-30 12:26:58.639929', 28, '2016-07-29', '', NULL),
(63, '756f018a-ab6e-4feb-8cdf-847695cd2d6c', 'Onyema Ikenna Okechukwu', '48A Golden Spring Estate, Duboyi, Abuja', '08168674240', 'ikenna.onyema@gmail.com', 'Male', 'Married', 'Nigeria', 'Abia', '48A Golden Spring Estate, Duboyi, Abuja', '48A Golden Spring Estate, Duboyi, Abuja', 'Public Servant', 'Petroleum Equalization Fund MGT Board ', 30, 'PEF M B Plot 542 Cadastral zone, B09, Shehu YarAdua Way, Kado District, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1629110362877_blob', 'Louisa Onyema', '48A Golden Spring Estate, Duboyi, Abuja', 'Wife', 1, 0, '2021-08-02', '2021-08-02 12:26:56.601172', 28, '2020-10-05', '', NULL),
(64, '60cc060b-78bb-4e22-bdea-a2dfe37f0386', 'Gubio Rukaiyah', 'Plot 64B Golden Spring Estate, Duboyi District, Abuja', '08032907292', 'hajjatinmami@yahoo.com', 'Female', 'Married', 'Nigeria', 'Adamawa', 'Plot 64B Golden Spring Estate, Duboyi District, Abuja', 'Plot 64B Golden Spring Estate, Duboyi District, Abuja', 'Public Servant', 'Petroleum Equalization fund Mgt. Board', 30, 'Plot 542 Cadastral zone, B09, Shehu Yar Adua Way, Gubio, Plot 64B', 'http://192.168.0.101:5000/public\\upload\\photo_1629112711697_blob', 'Usman Gubio', 'Plot 64B Golden Spring Estate, Duboyi District, Abuja', 'Husband', 1, 0, '2021-08-02', '2021-08-02 13:19:31.740721', 28, '2020-10-04', 'GC@550', NULL),
(65, '40513f50-3404-4848-b22e-0bde2bd03c85', 'Uzoigwe Obioma Helen', 'House 9D, Drive 3, Prince & Princess Estate, Kaura District, Abuja', '08036010652', 'henchukx@yahoo.com', 'Female', 'Married', 'Nigeria', 'Abia', 'House 9D, Drive 3, Prince & Princess Estate, Kaura District, Abuja', 'House 9D, Drive 3, Prince & Princess Estate, Kaura District, Abuja', 'Public Servant', 'Ministry Of Petroleum', 30, 'No 7 Sylvester Ugoh Jabi, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1629120945868_blob', 'Uzoigwe Chidiebere', 'House 9D, Drive 3, Prince & Princess Estate, Kaura District, Abuja', 'Son', 1, 0, '2021-08-16', '2021-08-16 13:13:17.114325', 28, '2020-07-13', '', NULL),
(66, '116c60c0-acd9-4ea3-8f7b-638c480f2169', 'Dakoru Asekutu', 'Flat 6 Jorany II Estate, Utako, Abuja', '08037147467', 'daksdikibo@yahoo.com', 'Female', 'Married', 'Nigeria', 'Ondo', 'Flat 6 Jorany II Estate, Utako, Abuja', 'Flat 6 Jorany II Estate, Utako, Abuja', 'Self Employed', 'Flat 6 Jorany II Estate, Utako, Abuja', 30, 'Flat 6 Jorany II Estate, Utako, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1629122292146_blob', 'Smart Olorunnyomi Asekutu', 'Flat 6 Jorany II Estate, Utako, Abuja', 'Husband', 1, 0, '2021-08-16', '2021-08-16 13:57:08.352381', 28, '2017-10-27', '', NULL),
(67, 'bfa45fbe-be40-48e5-b512-6afba0bec27e', 'Onuzulike Ugochukwu Babatunde', 'Plot 11, Phase 4,T Pumpy Estate, CRD Lugbe FHA', '07062759826', 'babatundeonuzuluike@gmail.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'Obodongwu Enugu Achi, Ezi Edwin Family', 'Plot 11, Phase 4,T Pumpy Estate, CRD Lugbe FHA', 'Civil Servant', 'Ministry of Foreign Affairs', 1, 'Ministry of foreign Affairs, Central Area, Abuja', NULL, 'Jidechukwu Onuzuluike Emmanuel', 'Plot 11, Phase 4,T Pumpy Estate, CRD Lugbe FHA', 'Son', 1, 0, '2021-08-16', '2021-08-16 14:27:49.875905', 28, '2021-07-23', '', NULL),
(68, 'fd0e57bc-0a8d-406c-bcfe-59b7b2fac7bd', 'Chukwuma Celestine Obiajulu', '19 Uche Secondus Crescent, Wuye, Abuja', '08039754977', 'chuks1742004@yahoo.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'No 98A Ugbo Oyibo Road, Ngene Ugbo, Awgwu, LGA', '191 Uche Secondus Crescent, Wuye, Abuja', 'Civil Servant', 'NNPC Towers, Abuja', 30, 'NNPC', 'http://192.168.0.101:5000/public\\upload\\photo_1629125578895_blob', 'Mr Edozie Chukwuma', '191 Uche Secondus Crescent, Wuye, Abuja', 'Son', 1, 0, '2021-08-16', '2021-08-16 14:39:27.530440', 28, '2021-05-19', '', NULL),
(69, '1f6bef66-9655-4fa1-9bf0-972df83379d2', 'Oketta Jude Onesi', 'No 1 pent 5 Estate, Lokogoma, Abuja', '08069076873', 'barisadre@gmail.com', 'Male', 'Married', 'Nigeria', 'Edo', 'No 1 pent 5 Estate, Lokogoma, Abuja', 'No 1 pent 5 Estate, Lokogoma, Abuja', 'Enterpreneur', 'No 6 Abak close, Area 3, Garki - Abuja', 29, 'Self Employed', NULL, 'Obiageli Oketta', 'No 1 pent 5 Estate, Lokogoma, Abuja', 'Wife', 1, 0, '2021-08-17', '2021-08-17 09:35:55.373412', 28, '2021-04-29', '', NULL),
(71, '96206119-73f0-4165-8a7a-64aacd068721', 'Abubakar Suleiman Takuma', 'No 8 Ibrahim Alli Close, zone D, 2nd gate, Apo', '08033143880', 'abutalkuma@yahoo.com', 'Male', 'Married', 'Nigeria', 'Niger', 'No 8 Ibrahim Alli Close, zone D, 2nd gate, Apo', 'No 8 Ibrahim Alli Close, zone D, 2nd gate, Apo', 'Civil Servant', 'Ecological fund office', 30, 'Ecological fund office,Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1629195853099_blob', 'Ramatu Bage Takoma', 'No 8 Ibrahim Alli Close, zone D, 2nd gate, Apo', 'Wife', 1, 0, '2021-08-17', '2021-08-17 10:18:36.642294', 28, '2020-11-25', 'GC@550', NULL),
(72, '72d88a62-9032-46cb-ae3f-fa20ef21e505', 'Ramatu Bage Takuma', 'No 8 Ibrahim Alli Close, zone D, 2nd Gate, Apo Quarters', '08033288656', 'ramatubage@yahoo.com', 'Female', 'Married', 'Nigeria', 'Niger', 'No 8 Ibrahim Alli Close, zone D, 2nd Gate, Apo Quarters, Apo', 'No 8 Ibrahim Alli Close, zone D, 2nd Gate, Apo Quarters, Apo', 'Public Servant', 'PEF Management B', 30, 'PEF Management B', 'http://192.168.0.101:5000/public\\upload\\photo_1629199259570_blob', 'Abubakar S. Takuma', 'No 8 Ibrahim Alli Close, zone D, 2nd Gate, Apo Quarters, Apo', 'Husband', 1, 0, '2021-08-17', '2021-08-17 11:20:20.040004', 28, '2020-11-26', '', NULL),
(74, '1fc0ee98-a635-43db-9456-5951ebf4828c', 'Emmanuel Okechukwu Ede', 'Plot 1223 Pasali E4t Layout, Kuje Abuja', '08037869411', 'madac_ventures@gmail.com', 'Male', 'Married', 'Nigeria', 'Enugu', 'Ogu Iheaka, Igbo Eze South LGA, Enugu state', 'Plot 1223 Pasali Extention Layout, Kuje Abuja', 'Business', 'Lugbe Building Material, Market Avenue', 30, 'Business', NULL, 'Emmanuel Ede Chukwujekwu Junior', 'Plot 1223 Pasali Extention Layout, Kuje Abuja', 'Son', 1, 0, '2021-08-17', '2021-08-17 12:36:35.816903', 28, '2020-12-15', '', NULL),
(75, '177553ca-3816-4ef2-822f-c296b6e3451f', 'Mbanekwe Anthony Oluchukwu', 'Plot 1680 Zone E, Apo Resettlement, Abuja', '07057401749', 'tomjessy23@gmail.com', 'Male', 'Married', 'Nigeria', 'Anambra', 'Plot 1680 Zone E, Apo Resettlement, Abuja', 'Plot 1680 Zone E, Apo Resettlement, Abuja', 'Business', 'Gudu Market', 30, 'Business', NULL, 'Mbanekwe Anthony Oluchukwu', 'Plot 1680 Zone E, Apo Resettlement, Abuja', 'Wife', 1, 0, '2021-08-17', '2021-08-17 13:00:41.987221', 28, '2021-07-29', '', NULL),
(76, 'd4657b90-5235-455a-b9ac-f2620e7a8852', 'Igboanugo Chizoba', 'R399 Gudu Market', '07032843914', 'igboanugochizoba@yahoo.com', 'Male', 'Married', 'Nigeria', 'Imo', 'R399 Gudu Market', 'R399 Gudu Market', 'Business', 'R399 Gudu Market', 30, 'R399 Gudu Market', 'http://192.168.0.101:5000/public\\upload\\photo_1629369722131_blob', 'Igboanugo Chinonye', 'R399 Gudu Market, 07038579232', 'Wife', 1, 0, '2021-08-19', '2021-08-19 10:40:59.906753', 28, '2021-06-10', '', NULL),
(77, 'b5daf67c-35db-40fc-bb4c-ac965a9f4b42', 'Modestus Mbaneri', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', '08023439191', 'moorelinks2000@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', 'moorelinks2000@gmail.com', 'Business', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', 30, 'More Links Electrical Engineering Ltd.', 'http://192.168.0.101:5000/public\\upload\\photo_1629370668141_blob', 'Mrs Ifeoma Mbaneri', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja, 08124251085', 'Wife', 1, 0, '2021-08-19', '2021-08-19 10:56:59.350748', 28, '2019-11-06', '', NULL),
(78, '0cbfe04c-bc9e-4f60-a368-3c2c79273ca5', 'Ukachukwu Chidiebere Emmanuel', 'Plot 348, Honda Spents, Apo New site, Abuja', '08066413223', 'chidiakachuks@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Plot 348, Honda Spents, Apo New site, Abuja', 'Police Sign Board, Apo', 'Business', 'Lakecity Plaza', 30, 'Police Sign Board, Apo', 'http://192.168.0.101:5000/public\\upload\\photo_1629371147206_blob', 'Chiamaka Lulian Emmanuel Ukachukwu', 'Plot 348, Honda Spents, Apo New site, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:05:02.552463', 28, '2020-06-29', '', NULL),
(79, 'd704088d-6035-4fc4-b4f9-95f1a487476b', 'Hussein A. Tijjani', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', '08035894885', 'ahmedtijjanihussein@gmail.com', 'Male', 'Married', 'Nigeria', 'Kogi', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Civil Servant', 'NSITF', 30, 'NSITF', 'http://192.168.0.101:5000/public\\upload\\photo_1629371712853_blob', 'Hadiza Jibril', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:14:51.058935', 28, '2020-10-05', '', NULL),
(80, '092eb36e-c762-4ca6-b3b9-8a8a8788608c', 'Barrister Navati Iliya', 'No 10, Pretorial Close, wuse Zone 6, Abuja', '0802313755', 'navatiliya@yahoo.com', 'Female', 'Married', 'Nigeria', 'Bauchi', 'No 10, Pretorial Close, wuse Zone 6, Abuja', 'No 10, Pretorial Close, wuse Zone 6, Abuja', 'civil Servant', 'Ministry', 30, 'Civil Servant', 'http://192.168.0.101:5000/public\\upload\\photo_1629372704717_blob', 'Kiwulma Iliya', 'Bauchi State Ministry of Education, Bauchi', 'Husband', 1, 0, '2021-08-19', '2021-08-19 11:30:08.199863', 28, '2016-12-20', '', NULL),
(81, '9ee2d41c-5356-427b-ae83-fb9ee802ba70', 'West Sobomabo Wariye', '48B Golden Spring Estate, Duboyi District, Abuja', '07039603545', 'sowarwest@yahoo.com', 'Male', 'Married', 'Nigeria', 'Rivers', '48B Golden Spring Estate, Duboyi District, Abuja', 'sowarwest@yahoo.com', 'Public Servant', 'PTDF', 30, 'PTDF', 'http://192.168.0.101:5000/public\\upload\\photo_1629373351392_blob', 'Pamela West', '48B Golden Spring Estate, Duboyi District, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:42:10.008449', 28, '0021-03-29', '', NULL),
(82, '272be562-869f-479f-b402-da52cbb5915f', 'Mrs Gbaagileh Judith Mbananden ', 'Plot III Kaura District', '08061271004', 'jgbaagileh@yahoo.com', 'Female', 'Married', 'Nigeria', 'Benue', 'Ate Gbaaegileh Villa, Nyihemba IA TO AKA', 'jgbaagileh@yahoo.com', 'Retired Civil Servant', 'Ministry', 30, 'Ministry', NULL, 'Charles Terkimbi Ate', 'Plot III Kaura District', 'Son', 1, 0, '2021-08-19', '2021-08-19 11:52:45.909416', 28, '2021-04-22', '', NULL),
(83, 'fe12dbb8-ad94-41dd-8a96-a1887e02af1e', 'Ishidi Ijudigal Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', '08167637648', 'ishidp.@gmail.com', 'Male', 'Single', 'Nigeria', 'Adamawa', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Business', 'Suite No 15C, Platinum Plaza', 30, 'saltagu Graphic Designs, Platinum Plaza, No 15C, Mabushi, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1631008675750_blob', 'Mr. Ijasini P. Ishidi', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Brother', 1, 0, '2021-09-07', '2021-09-07 09:57:22.858532', 28, '2021-03-25', '', NULL),
(84, '400bf7d0-33e1-42a4-af05-92a519f11763', 'Ishidi Ijasini Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', '07031899986', 'ijasinipur@gmail.com', 'Male', 'Married', 'Nigeria', 'Adamawa', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Business', 'Suite C16A, Platinum Plaza, Mabushi, Abuja', 30, 'Saltagu Global Graphic Services', 'http://192.168.0.101:5000/public\\upload\\photo_1631010092050_blob', 'Mr Ishidi Ijudigal Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Brother', 1, 0, '2021-09-07', '2021-09-07 10:09:52.724473', 28, '2021-02-25', '', NULL),
(85, 'c4e6f2a4-00c4-4b35-bc11-30a5e35fa16e', 'Audu Rabiu Morgan', 'Plot 64A Golden Spring Estate, Duboyi District Ring road II Abuja FCT', '08057272808', 'morganaudu@gmail.com', 'Male', 'Married', 'Nigeria', 'Kaduna', 'Chief of Moroas Palace Manchok Kaura L.G.A Kaduna', 'P.O.Box 4541 Garki Abuja', 'Public Servant', 'Nigerian Deposit Insurance Corporation (NDIC), Beside Unity Bank Bauchi, Bauchi State', 30, 'No 3 Bank road, Beside Unity Bank Bauchi, Bauchi state', NULL, 'Mariam Morgan Rabiu', 'Plot 64A Golden Spring Estate, Duboyi District Ring road II Abuja FCT', 'Wife', 1, 0, '2021-09-21', '2021-09-21 09:43:06.899417', 28, '2020-10-05', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_itemsmodel`
--

CREATE TABLE `estimate_itemsmodel` (
  `id` int(11) NOT NULL,
  `item_FK` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rate` decimal(10,0) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `estimate_ID` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_model`
--

CREATE TABLE `estimate_model` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `customer_FK` int(11) NOT NULL,
  `estimate_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `name`, `createdBy_FK`, `createdAt`, `updatedAt`) VALUES
(6, 'Office Rent', 28, '2021-05-28', '2021-05-28 11:33:50'),
(7, 'Fuel - Gen set', 28, '2021-05-28', '2021-05-28 11:38:52'),
(8, 'Fuel for pick-up vehicle', 28, '2021-05-28', '2021-05-28 11:39:32'),
(9, 'Fuel for Venza & Highlander', 28, '2021-05-28', '2021-05-28 11:40:10'),
(10, 'Vehicle repairs for Pick-up', 28, '2021-05-28', '2021-05-28 11:40:47'),
(11, 'Vehicle repairs for Venza/Highlander', 28, '2021-05-28', '2021-05-28 11:41:15'),
(12, 'General Office Repairs', 28, '2021-05-28', '2021-05-28 11:41:55'),
(13, 'Office Renovation', 28, '2021-05-28', '2021-05-28 11:42:17'),
(14, 'Electricity bills', 28, '2021-05-28', '2021-05-28 11:43:25'),
(15, 'Water for office', 28, '2021-05-28', '2021-05-28 11:43:56'),
(16, 'Miscellaneous Expenses', 28, '2021-05-28', '2021-05-28 11:44:49'),
(17, 'Directors Expenses', 28, '2021-05-28', '2021-05-28 11:46:43'),
(18, 'Household Expenses', 28, '2021-05-28', '2021-05-28 11:47:17'),
(19, 'Gift/Charity', 28, '2021-05-28', '2021-05-28 11:47:33'),
(20, 'Tax Liabilities', 28, '2021-05-28', '2021-05-28 11:47:53'),
(21, 'Local Transport', 28, '2021-05-28', '2021-05-28 11:48:07'),
(22, 'Travelling Expenses', 28, '2021-05-28', '2021-05-28 11:48:31'),
(23, 'Travelling Allowance', 28, '2021-05-28', '2021-05-28 11:51:34'),
(24, 'Educational', 28, '2021-05-28', '2021-05-28 11:52:02'),
(25, 'Air Freshner', 28, '2021-06-28', '2021-06-28 13:07:12'),
(26, 'Tissue Papers', 28, '2021-06-28', '2021-06-28 13:07:39'),
(27, 'Saviet Papers', 28, '2021-06-28', '2021-06-28 13:08:07'),
(28, 'Disposable cups', 28, '2021-06-28', '2021-06-28 13:08:28'),
(29, 'Omo/Detergent', 28, '2021-06-28', '2021-06-28 13:08:51'),
(30, 'Liquid soap', 28, '2021-06-28', '2021-06-28 13:09:12'),
(31, 'Stationeries', 28, '2021-06-28', '2021-06-28 13:10:11'),
(32, 'Cleaning & Sanitation', 28, '2021-06-29', '2021-06-29 09:40:36'),
(34, 'TEA for the office', 28, '2021-06-29', '2021-06-29 10:40:41'),
(35, 'General office repairs & Maintenance', 28, '2021-07-01', '2021-07-01 12:10:13'),
(36, 'Security Services', 28, '2021-07-02', '2021-07-02 11:39:06'),
(37, 'Agency Fee', 28, '2021-09-22', '2021-09-22 10:08:13'),
(38, 'Interlock for road work/Dakwo', 29, '2021-09-22', '2021-09-22 11:43:38'),
(39, 'Architectural Design', 29, '2021-09-22', '2021-09-22 11:46:30'),
(40, 'Internet Subscription', 29, '2021-09-22', '2021-09-22 12:19:06'),
(41, 'Refund', 29, '2021-09-22', '2021-09-22 12:37:20'),
(42, 'Vehicle License/Renewals', 29, '2021-09-22', '2021-09-22 12:58:06'),
(43, 'Building/Construction Work', 29, '2021-09-22', '2021-09-22 13:36:03'),
(44, 'Fencing work', 29, '2021-09-22', '2021-09-22 13:37:47'),
(45, 'Legal Fees', 29, '2021-09-22', '2021-09-22 13:41:36'),
(46, 'Laon Interest ', 29, '2021-09-22', '2021-09-22 14:02:18'),
(47, 'Economic Trees', 29, '2021-09-22', '2021-09-22 14:27:06'),
(48, 'Public Relations', 29, '2021-09-23', '2021-09-23 10:40:13'),
(49, 'Printing', 29, '2021-09-23', '2021-09-23 10:43:59'),
(50, 'Printing Press', 29, '2021-09-23', '2021-09-23 10:46:22'),
(51, 'Survey', 29, '2021-09-23', '2021-09-23 11:05:26'),
(52, 'Sundry', 29, '2021-09-23', '2021-09-23 11:21:12'),
(53, 'NSITF', 29, '2021-09-23', '2021-09-23 11:22:59'),
(54, 'Staff Trainings', 29, '2021-09-23', '2021-09-23 11:50:31'),
(55, 'Advances', 29, '2021-09-23', '2021-09-23 12:02:53'),
(56, 'Office Equipments', 29, '2021-09-23', '2021-09-23 12:17:28'),
(57, 'Purchases', 29, '2021-09-23', '2021-09-23 12:34:41'),
(58, 'Staff Welfare/Support', 28, '2021-09-24', '2021-09-24 10:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `expense_itemsmodel`
--

CREATE TABLE `expense_itemsmodel` (
  `id` int(11) NOT NULL,
  `expense_FK` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `expense_ID` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_itemsmodel`
--

INSERT INTO `expense_itemsmodel` (`id`, `expense_FK`, `description`, `amount`, `expense_ID`, `createdAt`, `updatedAt`) VALUES
(12, 6, 'Being payment for office space B22', 410000, 1724355, '2014-09-30', '2021-06-28 11:31:55'),
(13, 6, 'Being payment for  office space B22 for the period of July 2014 - June 2015', 410000, 132446, '2014-07-02', '2021-06-28 11:39:23'),
(14, 6, 'Being payment for  office space B23 for the period of July 2014 - June 2015', 410000, 132446, '2014-07-02', '2021-06-28 11:39:23'),
(15, 21, 'Being transport fare to Garki market to buy stationeries &Sanitation items', 500, 4431475, '2018-07-30', '2021-06-28 12:41:29'),
(16, 15, 'Being amount used for C-Way water dispenser', 2000, 193865, '2021-06-30', '2021-06-28 13:16:54'),
(17, 25, 'Being amount used to purchase Air-freshner for office', 650, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(18, 26, 'Payment for Tissue', 480, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(19, 27, 'Amount for saviet papers', 100, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(20, 28, 'Amount paid for D. cups', 300, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(21, 29, 'Payment for omo', 500, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(22, 30, 'Amount for L. Soap', 300, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(23, 31, 'Amount paid for one Umbrella', 800, 1710417, '2021-06-30', '2021-06-28 13:16:54'),
(24, 15, 'Amount paid for water Dispenser', 2000, 51580, '2018-08-31', '2021-06-29 09:37:48'),
(25, 15, 'payment for water dispenser', 2400, 5932679, '2020-09-25', '2021-06-29 09:46:38'),
(26, 26, 'payment for omo', 800, 5932679, '2020-09-25', '2021-06-29 09:46:38'),
(27, 29, 'payment for omo', 600, 5932679, '2020-09-25', '2021-06-29 09:46:38'),
(28, 32, 'payment for hypo', 600, 3356219, '2020-09-25', '2021-06-29 09:46:38'),
(29, 21, 'being payment for transportation', 500, 3356219, '2020-09-25', '2021-06-29 09:46:38'),
(30, 25, 'Payment for Air freshner', 1300, 4121487, '0000-00-00', '2021-06-29 10:10:55'),
(31, 26, 'Amount paid for tissue papers', 480, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(32, 32, 'Payment for izal', 300, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(33, 31, 'payment for steple pins', 300, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(34, 25, 'Payment for air freshner', 1300, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(35, 21, 'Amount paid for Transport to market', 500, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(36, 28, 'Payment for disposable cups', 300, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(37, 14, 'Amount paid for electric bulb', 300, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(38, 14, 'Amount paid for electric bulb', 300, 942544, '2018-08-31', '2021-06-29 10:18:44'),
(39, 15, 'Payment for water dispenser', 2000, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(40, 25, 'Payment for air freshner', 1300, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(41, 30, 'Amount paid for liquid soap', 300, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(42, 28, 'Amount paid for disposable cups', 300, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(43, 31, 'Payment for celotape', 300, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(44, 26, 'Payment for tissue papers', 480, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(45, 21, 'Being transport fare to market', 500, 5724871, '2018-05-31', '2021-06-29 10:29:18'),
(46, 15, 'payment for c way.', 2400, 225990, '2020-10-01', '2021-06-29 10:33:14'),
(47, 26, 'payment for tissue paper', 800, 225990, '2020-10-01', '2021-06-29 10:33:14'),
(48, 32, 'payment for Izal', 300, 225990, '2020-10-01', '2021-06-29 10:33:14'),
(49, 25, 'payment for Airfreshner', 1300, 225990, '2020-10-01', '2021-06-29 10:33:14'),
(50, 28, 'payment for disposable cups', 300, 225990, '2020-10-01', '2021-06-29 10:33:14'),
(51, 21, 'payment  for transportation', 500, 225990, '2020-10-01', '2021-06-29 10:33:14'),
(52, 14, 'Being Amount paid for light/units', 7500, 1533225, '2018-09-24', '2021-06-29 10:35:17'),
(53, 15, 'Payment for bottled water', 1000, 1533225, '2018-09-24', '2021-06-29 10:35:17'),
(54, 15, 'Payment for dispenser water', 2000, 2336103, '2018-01-30', '2021-06-29 10:44:53'),
(55, 26, 'Amount paid for tissue papers', 480, 2336103, '2018-01-30', '2021-06-29 10:44:53'),
(56, 28, 'Amount used to purchase disposable cups', 300, 2336103, '2018-01-30', '2021-06-29 10:44:53'),
(57, 34, 'Being the total amount used to buy Lipton & Milk for office use', 1250, 484079, '2018-01-30', '2021-06-29 10:44:53'),
(58, 30, 'Amount used to purchase soap & liquid soap', 700, 484079, '2018-01-30', '2021-06-29 10:44:53'),
(59, 21, 'Transport fare to market', 500, 484079, '2018-01-30', '2021-06-29 10:44:53'),
(60, 15, 'payment for C way', 2400, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(61, 25, 'payment for airfreshner', 1300, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(62, 26, 'payment for tissue paper', 800, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(63, 30, 'payment for liquid soap', 700, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(64, 29, ' payment for omo', 600, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(65, 32, 'payment for hypo', 600, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(66, 21, 'payment for transportation', 500, 224730, '2020-10-28', '2021-06-29 10:52:22'),
(67, 15, 'Payment for dispenser water', 2200, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(68, 32, 'Payment for Izal', 300, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(69, 26, 'Payment for tissue papers', 480, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(70, 25, 'Amount paid for airfreshner', 650, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(71, 28, 'Amount paid for D/cups =300; Amount for battery=300', 600, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(72, 30, 'Payment for liquid soap', 300, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(73, 21, 'Transport fare to Market', 500, 5445793, '2018-10-26', '2021-06-29 10:54:44'),
(74, 15, 'payment for C way', 2400, 224730, '2020-10-28', '2021-06-29 11:05:06'),
(75, 26, 'payment for tissue paper', 800, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(76, 32, 'payment for Izal', 300, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(77, 29, 'payment for omo', 600, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(78, 32, ' payment for hypo', 600, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(79, 27, 'payment for saviet', 200, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(80, 25, 'payment for Airfresher', 1300, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(81, 28, 'payment for disposable cup', 300, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(82, 21, 'payment for he transportation', 500, 306310, '2020-11-24', '2021-06-29 11:05:06'),
(83, 15, 'Being amount used to purchase dispenser water', 3300, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(84, 26, 'Amount paid for tissue', 640, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(85, 29, 'Amount paid for omo', 500, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(86, 25, 'Payment for air freshner', 1950, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(87, 32, 'payment for Izal', 300, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(88, 28, 'Payment for D/cups', 600, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(89, 21, 'Being transport fare to market', 500, 1424763, '2018-11-26', '2021-06-30 14:45:51'),
(90, 15, 'payment for c way water', 2400, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(91, 26, 'payment for tissue paper', 850, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(92, 30, 'payment for liquid soap', 300, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(93, 32, 'payment for Izal', 300, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(94, 32, 'being payment for Hypo', 600, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(95, 31, 'being payment for battery', 300, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(96, 29, 'being payment for omo', 600, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(97, 25, 'Being payment for Airfreshner', 1300, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(98, 27, 'being payment for saviet', 200, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(99, 28, 'Being payment for disposable cup', 300, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(100, 21, 'Being payment for transport', 500, 5631836, '2021-01-22', '2021-07-01 09:11:31'),
(101, 15, 'being payment for 5 cway gallon of water', 3000, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(102, 26, 'Being payment for 2 rolls of tissue paper', 900, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(103, 25, 'being payment for two Airfreshner', 1300, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(104, 32, 'Being payment for One Izal', 300, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(105, 32, 'Being Payment for 1 bottle of Hypo', 700, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(106, 31, 'being money used for battery purchase', 300, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(107, 21, 'being money for transport', 500, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(108, 32, 'Being money used to purchase mopping rubber.', 1300, 243493, '2021-02-24', '2021-07-01 09:31:57'),
(109, 15, 'Amount paid for dispenser water', 2200, 28554, '2019-06-25', '2021-07-01 10:16:56'),
(110, 26, 'Amount paid for tissue papers', 480, 28554, '2019-06-25', '2021-07-01 10:16:56'),
(111, 30, 'paid for liquid soap', 300, 28554, '2019-06-25', '2021-07-01 10:16:56'),
(112, 25, 'amount used to purchase air freshner', 150, 28554, '2019-06-25', '2021-07-01 10:16:56'),
(113, 32, 'money paid for izal', 300, 28554, '2019-06-25', '2021-07-01 10:16:56'),
(114, 21, 'Being transport fare to market', 500, 28554, '2019-06-25', '2021-07-01 10:16:56'),
(115, 15, 'Payment for dispenser water', 2200, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(116, 26, 'payment for Tissue', 480, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(117, 29, 'Being amount used to purchase Omo', 500, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(118, 25, 'Amount used to purchase airfrehsner', 1300, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(119, 21, 'Transport fare to market', 500, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(120, 31, 'Amount used to purchase biro/pen', 300, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(121, 14, 'Amount paid for electric bulbs', 300, 355565, '2019-05-01', '2021-07-01 11:16:37'),
(122, 15, 'Payment for dispenser water', 2200, 1018182, '2019-07-01', '2021-07-01 11:24:00'),
(123, 26, 'payment for tissue papers', 640, 1018182, '2019-07-01', '2021-07-01 11:24:00'),
(124, 27, 'Amount used to purchase saviet papers', 200, 1018182, '2019-07-01', '2021-07-01 11:24:00'),
(125, 25, 'Payment for air freshner', 300, 1018182, '2019-07-01', '2021-07-01 11:24:00'),
(126, 29, 'Amount used to purchase Omo', 500, 1018182, '2019-07-01', '2021-07-01 11:24:00'),
(127, 21, 'Transport fare to market', 500, 1018182, '2019-07-01', '2021-07-01 11:24:00'),
(128, 15, 'being payment for 3 cane of water dispencer', 1800, 2129311, '2021-04-28', '2021-07-01 11:33:24'),
(129, 25, 'Being payment for two Airfreshner', 1300, 2129311, '2021-04-28', '2021-07-01 11:33:24'),
(130, 30, 'payment for liquid soap', 300, 2129311, '2021-04-28', '2021-07-01 11:33:24'),
(131, 26, ' being payment for one pack of tissue paper', 400, 2129311, '2021-04-28', '2021-07-01 11:33:24'),
(132, 21, 'payment for transportation', 500, 2129311, '2021-04-28', '2021-07-01 11:33:24'),
(133, 31, 'payment for for sissors', 300, 2129311, '2021-04-28', '2021-07-01 11:33:24'),
(134, 15, 'Payment for dispenser water', 2200, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(135, 26, 'Amount paid for tissue papers', 640, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(136, 28, 'Amount paid for D/cups', 300, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(137, 31, 'Being amount used to purchase bullet batteries ', 300, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(138, 14, 'Amount paid for office bulb', 300, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(139, 25, 'Payment for ', 650, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(140, 31, 'Being amount used to purchase wall clock for the office', 1500, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(141, 32, 'Amount paid for Izal', 300, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(142, 25, 'Amount paid for two small air freshners', 300, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(143, 21, 'Transport fare to Market', 500, 492455, '2019-05-21', '2021-07-01 12:11:29'),
(144, 35, 'Amount used to purchase items for Generator repairs', 800, 2010590, '2019-05-21', '2021-07-01 12:11:29'),
(145, 26, 'Being payment for two packs of tissue', 900, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(146, 15, 'being payment for 5 cane of cway water at the rate of 650', 3250, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(147, 29, 'Being payment for one medium size of omo', 550, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(148, 27, 'payment for saviet', 200, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(149, 25, 'being payment for two Airfreshner', 1300, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(150, 32, 'payment for two Izal', 600, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(151, 32, 'payment for hypo', 600, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(152, 21, 'being money for transportation', 500, 1943548, '2021-05-25', '2021-07-01 12:14:59'),
(153, 15, 'being payment for 5 cane of c way water at the rate of  650', 3250, 625771, '2021-06-24', '2021-07-01 12:34:49'),
(154, 26, 'being payment for 2 pack of tissue', 900, 625771, '2021-06-24', '2021-07-01 12:34:49'),
(155, 32, 'being payment for one Izal ', 300, 625771, '2021-06-24', '2021-07-01 12:34:49'),
(156, 25, 'being payment for 3 Airfreshner', 1300, 625771, '2021-06-24', '2021-07-01 12:34:49'),
(157, 28, 'being payment for disposable cup', 350, 625771, '2021-06-24', '2021-07-01 12:34:49'),
(158, 21, 'money for transportation', 500, 625771, '2021-06-24', '2021-07-01 12:34:49'),
(159, 15, 'Payment for dispenser water', 2200, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(160, 26, 'Amount used for purchase of tissue', 700, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(161, 29, 'For the purchase of soap', 500, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(162, 30, 'For the purchase of liquid soap', 300, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(163, 32, 'Payment for small air freshners', 300, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(164, 25, 'Amount paid for air freshner', 600, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(165, 31, 'Amount paid for envelopes', 500, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(166, 21, 'Transport fare to market', 500, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(167, 32, 'Payment for izal', 300, 5714411, '2019-09-24', '2021-07-01 12:49:03'),
(168, 15, 'Payment for dispenser water', 2000, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(169, 32, 'Payment for izal', 300, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(170, 32, 'Payment for Hypo/Bleach', 600, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(171, 31, 'Amount paid for batteries', 300, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(172, 32, 'Amount paid for tissue papers', 700, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(173, 25, 'Payment for three small air freshners', 600, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(174, 21, 'Transport fare to market', 500, 850586, '2020-05-30', '2021-07-01 12:55:52'),
(175, 15, 'Payment for dispenser water', 2320, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(176, 26, 'Amount paid for Tissue', 750, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(177, 32, 'Hypo/Bleach', 600, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(178, 25, 'Amount paid for airfreshners', 1300, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(179, 32, 'Amount used to purchase a mobbing stick', 800, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(180, 29, 'Amount  paid for omo', 500, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(181, 21, 'Transport fare to market', 500, 957130, '2020-03-24', '2021-07-01 13:02:59'),
(182, 15, 'Payment for dispenser water', 2320, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(183, 26, 'Amount used to purchase Tissue papers', 700, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(184, 14, 'Payment for electric bulb', 600, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(185, 25, 'Payment for small sized air freshners', 300, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(186, 31, 'Payment for office envelops', 250, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(187, 28, 'Amount paid for D/cups', 300, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(188, 21, 'Transport fare to the market', 500, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(189, 31, 'Payment for Nylon bags', 500, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(190, 25, 'payment for big air freshner', 650, 5541974, '2019-10-28', '2021-07-02 09:51:59'),
(191, 15, 'Payment for dispenser water', 2320, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(192, 26, 'Payment for two packs of tissue papers', 750, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(193, 27, 'Amount paid for Saviet papers', 400, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(194, 25, 'Payment for two air freshners', 1300, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(195, 25, 'payment for small air freshner', 300, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(196, 29, 'Amount paid for Omo', 500, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(197, 30, 'Amount paid for liquid soap', 300, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(198, 32, 'Amount paid for Izal', 300, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(199, 17, 'Being money paid at the saloon by Md\'s children', 800, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(200, 21, 'Transport fare to market', 500, 4213466, '2020-03-03', '2021-07-02 11:04:47'),
(201, 15, 'Payment for dispenser water', 2400, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(202, 26, 'Amount paid for Tissue', 750, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(203, 32, 'Amount paid for Hypo/Detergent', 600, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(204, 25, 'Amount paid for air freshner', 650, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(205, 29, 'Amount paid for omo detergent', 550, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(206, 21, 'Transport fare to Garki market', 500, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(207, 25, 'Small air freshners', 300, 526395, '2020-06-24', '2021-07-02 11:16:40'),
(208, 15, 'Payment for dispenser water', 2400, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(209, 25, 'Amount paid for 2 air freshners', 1300, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(210, 26, 'Amount paid for tissue papers', 750, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(211, 32, 'payment for izal', 300, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(212, 18, 'Amount paid for izal', 600, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(213, 30, 'Amount paid for liquid soap', 300, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(214, 28, 'Amount paid for D/cups', 300, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(215, 21, 'Transport fare to garki market', 500, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(216, 27, 'Amount paid for saviet papers', 200, 5817290, '2020-07-23', '2021-07-02 11:26:58'),
(217, 15, 'Payment for dispenser water', 2200, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(218, 26, 'Payment for tissue papers', 480, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(219, 27, 'Being payment for  Saviet papers', 200, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(220, 29, 'Amount paid for Omo/Detergent', 500, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(221, 30, 'Payment for liquid soap', 300, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(222, 25, 'Payment for Air freshners', 1300, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(223, 21, 'Transport to Market', 500, 227141, '2019-01-25', '2021-07-02 11:31:10'),
(224, 15, 'Payment for dispenser water', 2200, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(225, 25, 'Payment for Air frehner', 1300, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(226, 26, 'Payment for tissue papers', 480, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(227, 32, 'Payment for izal', 300, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(228, 32, 'Payment for cleaning agent', 300, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(229, 31, 'Payment for batteries', 300, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(230, 21, 'Transport to market', 500, 423137, '2019-02-27', '2021-07-02 11:35:39'),
(231, 36, 'Being payment made to MACMORE SECURITY SERVICES LTD for provision of security services', 50000, 1239357, '2019-02-26', '2021-07-02 11:40:31'),
(232, 15, 'Payment for dispenser water', 2200, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(233, 26, 'Amount paid for tissue papers', 480, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(234, 25, 'Payment for air freshner', 1300, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(235, 14, 'Payment for electric bulb', 600, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(236, 29, 'Payment for Omo', 500, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(237, 28, 'Payment for D/cups', 300, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(238, 21, 'Transport fare to market', 500, 3740239, '2019-03-27', '2021-07-02 11:44:53'),
(239, 15, 'Payment for dispenser water', 2200, 1545734, '2019-04-25', '2021-07-02 11:48:27'),
(240, 26, 'Payment for tissues', 480, 1545734, '2019-04-25', '2021-07-02 11:48:27'),
(241, 30, 'amount paid for liquid soap', 300, 1545734, '2019-04-25', '2021-07-02 11:48:27'),
(242, 25, 'payment for air fresher', 1300, 1545734, '2019-04-25', '2021-07-02 11:48:27'),
(243, 32, 'Amount paid for izal', 300, 1545734, '2019-04-25', '2021-07-02 11:48:27'),
(244, 21, 'Transport fare to market', 500, 1545734, '2019-04-25', '2021-07-02 11:48:27'),
(245, 26, 'Amount used to purchase tissue papers', 900, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(246, 15, 'Being amount used to buy dispenser water', 3250, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(247, 29, 'Amount paid for Omo/Detergent', 550, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(248, 27, 'For Saviet papers', 200, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(249, 25, 'Amount used to purchase air freshener for office', 1300, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(250, 32, 'Amount used to purchase Izal', 600, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(251, 32, 'Amount paid for Hypo detergent', 600, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(252, 21, 'Transport fare to the market', 500, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(253, 16, 'Additional money approved by MD', 100, 303918, '2021-05-25', '2021-09-15 12:47:50'),
(254, 15, 'Being amount used to purchase dispenser water for the office', 3250, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(255, 26, 'Amount paid for tissue papers', 900, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(256, 25, 'Amount paid for airfreshner', 1300, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(257, 31, 'Amount used to buy Red biro for the office', 200, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(258, 31, 'Amount used to purchase calculator for the office', 2000, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(259, 31, 'Amount paid for correction fluid', 300, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(260, 31, 'Being amount used to purchase two steppling machine for the office', 3000, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(261, 32, 'Amount use to purchase Hypo detergent', 650, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(262, 32, 'Amount paid for Izal', 300, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(263, 32, 'Amount used to purchase dustbin basket', 500, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(264, 30, 'Payment for liquid soap', 300, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(265, 29, 'Amount paid for Omo', 600, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(266, 31, 'Amount paid for Wall-clock battery', 300, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(267, 21, 'Being Transport fare to the market', 500, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(268, 16, 'one hundred naira was subtracted from transport fare to balance the amount approved by MD', -100, 265174, '2021-07-26', '2021-09-15 13:12:31'),
(269, 14, 'Being amount used to recharge for electricity', 20000, 3016698, '2021-08-12', '2021-09-15 13:17:34'),
(270, 37, 'Being 2% Agency fee paid to ZUMNAN Maxwell (Mr. Chidi Abba Ali)', 100000, 138545, '2020-07-02', '2021-09-22 10:24:34'),
(271, 37, 'Being 3% Agency fee paid to Collectable Marks Associates Ltd/Collings C. Ogbonna', 210000, 138545, '2020-07-03', '2021-09-22 10:28:39'),
(272, 38, 'Being payment for Interlock for road work/Dakwo District', 500000, 3843850, '2020-07-03', '2021-09-22 11:44:33'),
(273, 39, 'Being payment for Architectural Design for Oxford Homes ', 500000, 3046660, '2020-07-03', '2021-09-22 11:47:40'),
(274, 37, 'Being payment of 3% Agency fee to Engr. Chijioke Nnadi (Mr. Ukachukwu)', 285000, 2532, '2020-07-03', '2021-09-22 11:56:32'),
(275, 37, 'Being payment of Agency fee to Mr. Lawrence Emusa', 155000, 550218, '2020-07-05', '2021-09-22 12:01:42'),
(276, 40, 'Being payment made made for internet services', 19000, 1622690, '2020-05-06', '2021-09-22 12:23:12'),
(277, 41, 'Being amount refunded to Mr. Musa from the deposit he made for a property', 250000, 213752, '2020-07-03', '2021-09-22 12:38:55'),
(278, 41, 'Being amount Refunded to Barr. Peter D. Kefas from the Deposit he made on a property', 5000000, 1739883, '2020-07-03', '2021-09-22 12:41:30'),
(279, 41, 'Being amount refunded to Okwudili Okoli from the deposit he made on a property', 900000, 4747660, '2020-06-27', '2021-09-22 12:48:39'),
(280, 42, 'Being payment made for Toyota Corolla papers Renewals/maintenance', 178000, 545953, '2020-06-17', '2021-09-22 13:02:24'),
(281, 41, 'Being Loan Refund made to Felicia Iloegbunam', 2000000, 123235, '2020-07-06', '2021-09-22 13:04:40'),
(282, 31, 'Being payment made to IT Hunters Ltd for office stationeries', 90100, 215581, '2020-07-06', '2021-09-22 13:08:37'),
(283, 37, 'Being Agency fee paid to Mr. Lawrence Emusa/Karshi Development Area, Nasarawa state', 200000, 4812522, '2020-07-07', '2021-09-22 13:13:26'),
(284, 37, 'Being 3% Agency fee paid to Mr. Barka Ambuno Barka ', 15000, 1932498, '2020-07-01', '2021-09-22 13:33:48'),
(285, 43, 'Payment for Fencing work @ Gaduwa District to Collectable Marks Associates Ltd', 200000, 336475, '2020-07-08', '2021-09-22 13:37:52'),
(286, 45, 'Being legal fees paid to  Bani Law Consulting', 300000, 3641981, '2020-07-08', '2021-09-22 13:42:31'),
(287, 46, 'Being Interest paid to Betterment Investment Nig. Ltd ', 210000, 182820, '2020-07-08', '2021-09-22 14:03:43'),
(288, 44, 'Payment to Sophie Pius for Fencing work at Gaduwa', 100000, 474699, '2020-07-09', '2021-09-22 14:06:00'),
(289, 10, 'Payment for Vehicle repairs - Pickup', 48000, 37816, '2020-07-08', '2021-09-22 14:09:42'),
(290, 41, 'Being loan amount refunded to Felicia Ikegbulam', 1500000, 2220374, '2020-07-09', '2021-09-22 14:23:44'),
(291, 47, 'Being payment for Economic Tree Compensation', 250000, 627261, '2020-07-16', '2021-09-22 14:27:52'),
(292, 41, 'Being refund made to Uju Madueke from deposit made ', 2000000, 2332139, '2020-07-17', '2021-09-22 14:34:32'),
(293, 12, 'Being payment made to Sophie Pius for Repair Servicing', 75000, 413438, '2020-07-20', '2021-09-23 09:39:23'),
(294, 44, 'Being payment made to Sophie Pius for Gaduwa Fencing', 100000, 3342674, '2020-07-23', '2021-09-23 09:44:15'),
(295, 43, 'Being payment made to Collectable Marks Associates Ltd. for Road construction/Dakwo District, Abuja', 70000, 145891, '2020-07-23', '2021-09-23 10:01:36'),
(296, 37, 'Being agency fee paid to Faith Peter: (Nosa=20250, Chibuzor=15000))', 35250, 174981, '2020-07-24', '2021-09-23 10:13:14'),
(297, 35, 'Being payment made to Sophie PIUS for House repairs', 50000, 4413197, '2020-07-24', '2021-09-23 10:20:16'),
(298, 46, 'Being Loan interest paid to Okwudili Okoli', 450000, 4320114, '2020-07-24', '2021-09-23 10:25:16'),
(299, 41, 'Being loan refund to Consynergy Ltd', 1274583, 5125627, '2020-07-24', '2021-09-23 10:28:31'),
(300, 41, 'Being Loan Refund to Felicia Ikegbulam', 1000000, 829607, '2020-07-24', '2021-09-23 10:30:14'),
(301, 48, 'Being PR given for Gaduwa/Oxford Homes', 150000, 1340598, '2020-07-27', '2021-09-23 10:41:05'),
(302, 50, 'Being Printing Charges paid at UTC ', 25000, 4448, '2020-07-27', '2021-09-23 10:46:59'),
(303, 37, 'Being 3% Agency fee paid to Zunman Maxwell (Mr. Emmanuel Aduda)', 60000, 5447860, '2020-07-28', '2021-09-23 10:50:50'),
(304, 41, 'Being Loan refund to Felicia Ikegbulam', 1200000, 2453733, '2020-07-29', '2021-09-23 11:04:00'),
(305, 51, 'Being Survey fee paid to Emusa Lawrence', 300000, 265613, '2020-07-29', '2021-09-23 11:06:28'),
(306, 17, 'Being Director\'s Allowance paid', 100000, 5312545, '2020-07-29', '2021-09-23 11:14:02'),
(307, 51, 'Survey fee for Oxford homes paid to Mr. Salihu Suleiman', 25000, 3614585, '2020-07-29', '2021-09-23 11:16:58'),
(308, 52, 'Sundry Operational expenses', 114000, 1221820, '2020-08-03', '2021-09-23 11:21:47'),
(309, 53, 'Payment made to NSITF', 36000, 5922418, '2020-08-03', '2021-09-23 11:23:20'),
(310, 41, 'being amount refunded to Hauwa Sambo from property deposit ', 750000, 4323172, '2020-08-04', '2021-09-23 11:25:24'),
(311, 46, 'Being loan interest paid to Collins okafor', 225000, 4925251, '2020-08-04', '2021-09-23 11:27:53'),
(312, 41, 'Being amount refunded to Felicia Ikegbulam ', 3600000, 429916, '2020-08-04', '2021-09-23 11:31:32'),
(313, 37, 'Being amount paid to Akwarandu Arthur', 300000, 4931438, '2020-08-04', '2021-09-23 11:33:49'),
(314, 54, 'Being training expenses paid for Mrs Athonia Chime', 200000, 3150122, '2020-08-03', '2021-09-23 11:51:44'),
(315, 46, 'Loan Interest oaid to Abba Chisoma', 350000, 2352563, '2020-08-03', '2021-09-23 11:53:59'),
(316, 43, 'Being payment for Road work at Dakwo District', 200000, 4954945, '2020-08-03', '2021-09-23 11:57:31'),
(317, 55, 'Being rent advance to Mr. Rowland Ikechukwu Okorie ', 45000, 532300, '2020-08-03', '2021-09-23 12:04:21'),
(318, 37, 'Being 3% Agency fee paid to ZUNMAN Maxwel', 60000, 594225, '2020-08-04', '2021-09-23 12:06:17'),
(319, 17, 'Being registration with Alliance in motion Global by MD', 304000, 107434, '2020-08-05', '2021-09-23 12:12:27'),
(320, 56, 'Being amount  paid to Ochelle Michael for Office computers and PR', 280000, 2817396, '2020-08-05', '2021-09-23 12:18:26'),
(321, 54, 'Being paid to Cecilia Madueke for Training', 300000, 5019920, '2020-08-05', '2021-09-23 12:21:18'),
(322, 17, 'Being amount paid to Alliance in motion Global by MD', 114000, 5121340, '2020-08-05', '2021-09-23 12:23:07'),
(323, 17, 'Being into Alliance In Motion Global Account by MD', 304000, 1227280, '2020-08-05', '2021-09-23 12:29:05'),
(324, 57, 'Being made to Sunday Ernest Ede for the purchase of KYAMI District Green areas', 2000000, 3254601, '2020-08-05', '2021-09-23 12:56:38'),
(325, 41, 'Being refund of Deposit made on property', 3000000, 3957556, '2020-08-06', '2021-09-23 13:00:35'),
(326, 43, 'Being payment to Collectable Marks Associate Ltd.  for Road work at at Dakwo district', 100000, 543190, '2020-08-10', '2021-09-23 13:06:21'),
(327, 41, 'Being loan refunded to Betterment Investment Nig. Ltd', 2210000, 224204, '2020-08-10', '2021-09-23 13:24:41'),
(328, 11, 'Being payment for Vehicle repairs - Toyota corolla', 22800, 3125501, '2020-08-12', '2021-09-23 13:28:12'),
(329, 48, 'Being amount given as PR through Sophie Pius', 100000, 5130772, '2020-08-12', '2021-09-23 13:31:42'),
(330, 43, 'Being amount paid for Construction materials & water supply through Sophie', 150000, 3632809, '2020-08-18', '2021-09-23 13:38:08'),
(331, 41, 'Being Refund from deposit for property to Mr Okewo Bababunmi Michael', 270000, 2459820, '2020-08-21', '2021-09-24 10:02:57'),
(332, 48, 'Being PR given at FCDA through Sophie Pius', 150000, 614834, '2020-08-24', '2021-09-24 10:23:42'),
(333, 43, 'Being payment to Collectable Marks Associates for Road work at Dakwo District ', 100000, 4823290, '2020-08-24', '2021-09-24 10:26:49'),
(334, 37, 'Being agency fee paid to Godwin Stephen-Kings', 700000, 5526544, '2020-08-25', '2021-09-24 10:29:02'),
(335, 58, 'Being Surgery fee/Hospital bill paid for Sophie Pius', 150000, 1332127, '2020-08-26', '2021-09-24 10:33:20'),
(336, 41, 'Being Loan refund to Consinergy limited', 1272000, 5233604, '2020-08-25', '2021-09-24 10:36:01'),
(337, 41, 'Being loan refund to Felicia Ikegbulam', 5000000, 2936579, '2020-08-25', '2021-09-24 10:37:50'),
(338, 46, 'Being interest on Loan paid to Okwudili Okoli', 450000, 1238553, '2020-08-25', '2021-09-24 10:40:18'),
(339, 43, 'Being payment for Container', 600000, 4640176, '2020-08-25', '2021-09-24 10:57:44'),
(340, 57, 'Being part payment for plot 740B, Cadestral zone B12, Duboyi District, Abuja', 500000, 1658497, '2020-08-26', '2021-09-24 11:11:04'),
(341, 41, 'Being loan refunded to Collins Okoroafor', 4000000, 2111794, '2020-08-26', '2021-09-24 11:27:22'),
(342, 45, 'Being legal fee paid to Bani Law Consulting', 200000, 2828714, '2020-08-27', '2021-09-24 11:29:44'),
(343, 41, 'Being refund made to Uju Madueke', 200000, 203087, '2020-08-27', '2021-09-24 11:31:08'),
(344, 41, 'Being loan refund to Okoroafor Collins', 250000, 2231872, '2020-08-27', '2021-09-24 11:32:35'),
(345, 37, 'Being 3% Agency fee paid to Iveren Alegh', 9000, 5132459, '2020-08-28', '2021-09-24 11:34:29'),
(346, 41, 'Being loan refund through MD', 250000, 5234292, '2020-08-31', '2021-09-24 11:36:04'),
(347, 41, 'Being loan refund through MD', 250000, 2936375, '2020-08-31', '2021-09-24 11:38:18'),
(348, 46, 'Being Loan Interest paid', 350000, 53222, '2020-09-01', '2021-09-24 13:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `expense_model`
--

CREATE TABLE `expense_model` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `expense_date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `payee_account` int(11) DEFAULT NULL,
  `payment_account` int(11) DEFAULT NULL,
  `pay_method` varchar(100) DEFAULT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_model`
--

INSERT INTO `expense_model` (`id`, `uuid`, `expense_date`, `amount`, `payee_account`, `payment_account`, `pay_method`, `createdBy_FK`, `createdAt`, `updatedAt`) VALUES
(9, '1724355', '2014-09-30', '410000', 3017181, 4332342, 'cheque', 28, '2021-06-28', '2021-06-28 11:31:55'),
(10, '132446', '2014-07-02', '820000', 3017181, 4332342, 'cheque', 28, '2021-06-28', '2021-06-28 11:39:23'),
(11, '4431475', '2018-07-30', '500', 55854, 3431223, 'cash', 28, '2021-06-28', '2021-06-28 12:41:29'),
(12, '1710417', '2021-06-30', '5130', 48673, 3431223, 'cash', 28, '2021-06-28', '2021-06-28 13:16:54'),
(13, '51580', '2018-08-31', '2000', 3431223, 4332342, '', 28, '2021-06-29', '2021-06-29 09:37:48'),
(14, '3356219', '2020-08-25', '4900', 3431223, 4332342, 'cash', 29, '2021-06-29', '2021-06-29 09:46:38'),
(15, '450876', '0000-00-00', '4900', 0, 0, '', 29, '2021-06-29', '2021-06-29 09:47:35'),
(16, '4121487', '2020-08-25', '1300', 3431223, 4332342, 'cash', 29, '2021-06-29', '2021-06-29 10:10:55'),
(17, '942544', '2018-08-31', '3780', 3431223, 4332342, 'cash', 28, '2021-06-29', '2021-06-29 10:18:44'),
(18, '5724871', '2018-05-31', '5180', 3431223, 4332342, '', 28, '2021-06-29', '2021-06-29 10:29:18'),
(19, '222953', '0000-00-00', '5180', 0, 0, '', 28, '2021-06-29', '2021-06-29 10:29:37'),
(20, '225990', '2020-10-01', '5600', 3431223, 4332342, 'cash', 29, '2021-06-29', '2021-06-29 10:33:14'),
(21, '1533225', '2018-09-24', '8500', 3431223, 4332342, '', 28, '2021-06-29', '2021-06-29 10:35:17'),
(22, '484079', '2018-01-30', '5230', 3431223, 4332342, '', 28, '2021-06-29', '2021-06-29 10:44:53'),
(23, '224730', '2020-10-28', '6900', 3431223, 4332342, 'cash', 29, '2021-06-29', '2021-06-29 10:52:22'),
(24, '5445793', '2018-10-26', '5030', 3431223, 4332342, 'cash', 28, '2021-06-29', '2021-06-29 10:54:44'),
(25, '306310', '2020-11-24', '7000', 3431223, 4332342, 'cash', 29, '2021-06-29', '2021-06-29 11:05:06'),
(26, '1424763', '2018-11-26', '7790', 3431223, 4332342, 'cash', 28, '2021-06-30', '2021-06-30 14:45:51'),
(27, '5631836', '2021-01-22', '7650', 3431223, 4332342, 'cash', 29, '2021-07-01', '2021-07-01 09:11:31'),
(28, '243493', '2021-02-24', '8300', 3431223, 4332342, 'cash', 29, '2021-07-01', '2021-07-01 09:31:57'),
(29, '13942', '2021-04-28', '8300', 3431223, 4332342, 'cash', 29, '2021-07-01', '2021-07-01 09:44:48'),
(30, '28554', '2019-06-25', '3930', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 10:16:56'),
(31, '355565', '2019-05-01', '5580', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 11:16:37'),
(32, '1018182', '2019-07-01', '4340', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 11:24:00'),
(33, '2129311', '2021-04-28', '4600', 3431223, 4332342, 'cash', 29, '2021-07-01', '2021-07-01 11:33:24'),
(34, '2010590', '2019-05-21', '7790', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 12:11:28'),
(35, '351175', '0000-00-00', '7790', 0, 0, '', 28, '2021-07-01', '2021-07-01 12:12:52'),
(36, '1943548', '2021-05-25', '7900', 3431223, 4332342, 'cash', 29, '2021-07-01', '2021-07-01 12:14:59'),
(37, '625771', '2021-06-24', '6600', 3431223, 4332342, 'cash', 29, '2021-07-01', '2021-07-01 12:34:49'),
(38, '5714411', '2019-09-24', '5900', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 12:49:02'),
(39, '850586', '2020-05-30', '5000', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 12:55:52'),
(40, '957130', '2020-03-24', '6770', 3431223, 4332342, 'cash', 28, '2021-07-01', '2021-07-01 13:02:59'),
(41, '5541974', '2019-10-28', '6120', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 09:51:59'),
(42, '4213466', '2020-03-03', '7470', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:04:47'),
(43, '526395', '2020-06-24', '5750', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:16:40'),
(44, '5817290', '2020-07-23', '6650', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:26:58'),
(45, '227141', '2019-01-25', '5480', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:31:10'),
(46, '423137', '2019-02-27', '5380', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:35:39'),
(47, '1239357', '2019-02-26', '50000', 930555, 4332342, 'cheque', 28, '2021-07-02', '2021-07-02 11:40:31'),
(48, '3740239', '2019-03-27', '5880', 55854, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:44:53'),
(49, '1545734', '2019-04-25', '5080', 3431223, 4332342, 'cash', 28, '2021-07-02', '2021-07-02 11:48:26'),
(50, '303918', '2021-05-25', '8000', 3431223, 4332342, 'cheque', 28, '2021-09-15', '2021-09-15 12:47:50'),
(51, '265174', '2021-07-26', '14000', 3431223, 4332342, 'cheque', 28, '2021-09-15', '2021-09-15 13:12:31'),
(52, '3016698', '2021-08-12', '20000', 3431223, 4332342, 'cheque', 28, '2021-09-15', '2021-09-15 13:17:34'),
(53, '138545', '2020-07-02', '100000', 3059969, 4332342, 'cheque', 28, '2021-09-22', '2021-09-22 10:24:34'),
(54, '138545', '2020-07-03', '210000', 3059969, 4332342, 'cheque', 28, '2021-09-22', '2021-09-22 10:28:39'),
(55, '3843850', '2020-07-03', '500000', 3337366, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 11:44:33'),
(56, '3046660', '2020-07-03', '500000', 2610998, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 11:47:40'),
(57, '2532', '2020-07-03', '285000', 3059969, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 11:56:32'),
(58, '550218', '2020-07-05', '155000', 3059969, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 12:01:42'),
(59, '1622690', '2020-05-06', '19000', 311622, 4332342, 'transfer', 29, '2021-09-22', '2021-09-22 12:23:12'),
(60, '213752', '2020-07-03', '250000', 4235155, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 12:38:55'),
(61, '1739883', '2020-07-03', '5000000', 5158546, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 12:41:30'),
(62, '4747660', '2020-06-27', '900000', 4235155, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 12:48:39'),
(63, '545953', '2020-06-17', '178000', 5059655, 4332342, 'cash', 29, '2021-09-22', '2021-09-22 13:02:24'),
(64, '123235', '2020-07-06', '2000000', 4235155, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 13:04:40'),
(65, '215581', '2020-07-06', '90100', 1850405, 4332342, 'transfer', 29, '2021-09-22', '2021-09-22 13:08:36'),
(66, '4812522', '2020-07-07', '200000', 3059969, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 13:13:26'),
(67, '1932498', '2020-07-01', '15000', 3059969, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 13:33:48'),
(68, '336475', '2020-07-08', '200000', 3337366, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 13:37:52'),
(69, '3641981', '2020-07-08', '300000', 40977, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 13:42:31'),
(70, '182820', '2020-07-08', '210000', 211787, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 14:03:43'),
(71, '474699', '2020-07-09', '100000', 3337366, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 14:06:00'),
(72, '37816', '2020-07-08', '48000', 3520835, 4332342, 'transfer', 29, '2021-09-22', '2021-09-22 14:09:42'),
(73, '2220374', '2020-07-09', '1500000', 1820464, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 14:23:44'),
(74, '627261', '2020-07-16', '250000', 5725108, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 14:27:52'),
(75, '2332139', '2020-07-17', '2000000', 4235155, 4332342, 'cheque', 29, '2021-09-22', '2021-09-22 14:34:32'),
(76, '413438', '2020-07-20', '75000', 373857, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 09:39:23'),
(77, '3342674', '2020-07-23', '100000', 3337366, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 09:44:15'),
(78, '145891', '2020-07-23', '70000', 3337366, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:01:36'),
(79, '174981', '2020-07-24', '35250', 3059969, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:13:14'),
(80, '4413197', '2020-07-24', '50000', 373857, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:20:16'),
(81, '4320114', '2020-07-24', '450000', 211787, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:25:16'),
(82, '5125627', '2020-07-24', '1274583', 1820464, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:28:31'),
(83, '829607', '2020-07-24', '1000000', 1820464, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:30:14'),
(84, '1340598', '2020-07-27', '150000', 737272, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:41:05'),
(85, '04448', '2020-07-27', '25000', 222456, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:46:59'),
(86, '5447860', '2020-07-28', '60000', 3059969, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 10:50:50'),
(87, '2453733', '2020-07-29', '1200000', 1820464, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 11:04:00'),
(88, '265613', '2020-07-29', '300000', 1853414, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 11:06:28'),
(89, '5312545', '2020-07-29', '100000', 5012311, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:14:02'),
(90, '3614585', '2020-07-29', '25000', 1853414, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:16:58'),
(91, '1221820', '2020-08-03', '114000', 2518264, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:21:47'),
(92, '5922418', '2020-08-03', '36000', 101996, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:23:20'),
(93, '4323172', '2020-08-04', '750000', 4235155, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:25:24'),
(94, '4925251', '2020-08-04', '225000', 211787, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:27:53'),
(95, '429916', '2020-08-04', '3600000', 1820464, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 11:31:32'),
(96, '4931438', '2020-08-04', '300000', 3059969, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 11:33:49'),
(97, '3150122', '2020-08-03', '200000', 1949733, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:51:44'),
(98, '2352563', '2020-08-03', '350000', 211787, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:53:59'),
(99, '4954945', '2020-08-03', '200000', 3337366, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 11:57:31'),
(100, '532300', '2020-08-03', '45000', 380727, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 12:04:21'),
(101, '594225', '2020-08-04', '60000', 3059969, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 12:06:17'),
(102, '107434', '2020-08-05', '304000', 5012311, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 12:12:27'),
(103, '2817396', '2020-08-05', '280000', 516181, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 12:18:26'),
(104, '5019920', '2020-08-05', '300000', 1949733, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 12:21:18'),
(105, '5121340', '2020-08-05', '114000', 5012311, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 12:23:07'),
(106, '1227280', '2020-08-05', '304000', 5012311, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 12:29:05'),
(107, '3254601', '2020-08-05', '2000000', 534255, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 12:56:38'),
(108, '3957556', '2020-08-06', '3000000', 4235155, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 13:00:35'),
(109, '543190', '2020-08-10', '100000', 3337366, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 13:06:21'),
(110, '224204', '2020-08-10', '2210000', 1820464, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 13:24:41'),
(111, '3125501', '2020-08-12', '22800', 3520835, 4332342, 'transfer', 29, '2021-09-23', '2021-09-23 13:28:12'),
(112, '5130772', '2020-08-12', '100000', 737272, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 13:31:42'),
(113, '3632809', '2020-08-18', '150000', 3337366, 4332342, 'cheque', 29, '2021-09-23', '2021-09-23 13:38:08'),
(114, '2459820', '2020-08-21', '270000', 4235155, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:02:57'),
(115, '614834', '2020-08-24', '150000', 737272, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:23:42'),
(116, '4823290', '2020-08-24', '100000', 3337366, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:26:49'),
(117, '5526544', '2020-08-25', '700000', 3059969, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:29:02'),
(118, '1332127', '2020-08-26', '150000', 2931923, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:33:20'),
(119, '5233604', '2020-08-25', '1272000', 1820464, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:36:01'),
(120, '2936579', '2020-08-25', '5000000', 1820464, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:37:50'),
(121, '1238553', '2020-08-25', '450000', 211787, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:40:18'),
(122, '4640176', '2020-08-25', '600000', 3337366, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 10:57:44'),
(123, '1658497', '2020-08-26', '500000', 534255, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:11:04'),
(124, '2111794', '2020-08-26', '4000000', 1820464, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:27:22'),
(125, '2828714', '2020-08-27', '200000', 40977, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:29:44'),
(126, '203087', '2020-08-27', '200000', 4235155, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:31:08'),
(127, '2231872', '2020-08-27', '250000', 1820464, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:32:35'),
(128, '5132459', '2020-08-28', '9000', 3059969, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:34:29'),
(129, '5234292', '2020-08-31', '250000', 1820464, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:36:04'),
(130, '2936375', '2020-08-31', '250000', 1820464, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 11:38:18'),
(131, '53222', '2020-09-01', '350000', 211787, 4332342, 'cheque', 28, '2021-09-24', '2021-09-24 13:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_itemsmodel`
--

CREATE TABLE `invoice_itemsmodel` (
  `id` int(11) NOT NULL,
  `item_FK` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rate` decimal(10,0) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `invoice_ID` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_model`
--

CREATE TABLE `invoice_model` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `invoice_term` int(11) NOT NULL,
  `customer_FK` int(11) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `amount_paid` decimal(10,0) DEFAULT 0,
  `asset_account_FK` int(11) DEFAULT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `estimate_ID` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journal_model`
--

CREATE TABLE `journal_model` (
  `id` int(11) NOT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `je_ID` varchar(100) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `je_date` date DEFAULT NULL,
  `postedBy` varchar(100) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journal_model`
--

INSERT INTO `journal_model` (`id`, `uuid`, `je_ID`, `name`, `amount`, `je_date`, `postedBy`, `createdAt`, `updatedAt`) VALUES
(0, '279b10d3-b592-4c54-904d-f6687256d622', 'je-5321920', 'Application fee', '20000', '2020-06-23', 'NO@550', '2021-05-31', '2021-05-31 10:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `createdAt`, `updatedAt`, `createdBy_FK`) VALUES
(4, 'Gaduwa (Oxford Homes)', '2021-05-31', '2021-05-31 08:34:55', 28),
(5, 'Dakwo District', '2021-05-31', '2021-05-31 08:37:45', 28),
(6, 'Karshi (Varsity Garden Estate)', '2021-05-31', '2021-05-31 08:51:49', 29),
(7, 'Life Camp(Kyami District)', '2021-05-31', '2021-05-31 08:55:50', 29),
(8, 'ABACHA ROAD', '2021-07-13', '2021-07-13 10:54:24', 28);

-- --------------------------------------------------------

--
-- Table structure for table `prop_servicemodel`
--

CREATE TABLE `prop_servicemodel` (
  `id` int(11) NOT NULL,
  `uuid` char(32) NOT NULL,
  `ps_type` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sku` varchar(200) DEFAULT NULL,
  `category` varchar(200) NOT NULL,
  `product_class` varchar(200) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `qty_athDate` date DEFAULT NULL,
  `reorder_point` int(11) DEFAULT NULL,
  `purchase_info` varchar(300) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `sale_options` tinyint(1) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `purchase_option` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `edited_By` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `asset_account_FK` int(11) DEFAULT NULL,
  `createdBy_FK` int(11) DEFAULT NULL,
  `expense_acc_FK` int(11) DEFAULT NULL,
  `income_acc_FK` int(11) DEFAULT NULL,
  `vendor_FK` int(11) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prop_servicemodel`
--

INSERT INTO `prop_servicemodel` (`id`, `uuid`, `ps_type`, `name`, `sku`, `category`, `product_class`, `quantity`, `qty_athDate`, `reorder_point`, `purchase_info`, `cost`, `description`, `sale_options`, `sale_price`, `purchase_option`, `createdAt`, `updatedAt`, `edited_By`, `active`, `asset_account_FK`, `createdBy_FK`, `expense_acc_FK`, `income_acc_FK`, `vendor_FK`, `location`, `status`) VALUES
(12, 'acfd8cda-1b40-4b87-b7f2-3c4d3618', 'property', '700 SQ M (4 Bedroom Fully Detached Duplex)', '', '', '', 18, '0000-00-00', 0, '', 23000000, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0, 23000000, 0, '2021-07-13', '2021-09-21 10:05:16', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(13, '296905bc-7abf-4cde-ada7-a471f330', 'property', '900 SQ M (5 Bedroom Fully Detached Duplex)', '', '', '', 50, '0000-00-00', 0, '', 30000000, '900 SQ M (5 Bedroom Fully Detached Duplex)', 0, 30000000, 0, '2021-07-13', '2021-09-07 12:26:13', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(14, '530d5146-1343-45b3-b926-50374ce1', 'property', '800 SQ M (4 Bedroom Semi Detached Duplex)', '', '', '', 42, '0000-00-00', 0, '', 30000000, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0, 30000000, 0, '2021-07-13', '2021-09-21 09:02:03', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(15, '2c04575f-6173-4fc2-ba90-8ad57450', 'property', '1000 SQ M (4 Bedroom Terrace Duplex)', '', '', '', 31, '0000-00-00', 0, '', 36000000, '1000 SQ M (4 Bedroom Terrace Duplex)', 0, 36000000, 0, '2021-07-13', '2021-09-21 09:54:54', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(16, '2ddc1598-2264-494b-9ee4-4c9a076f', 'property', '550 SQ M (3 Bedroom Bungalow) Carcass', '', '', '', 4, '0000-00-00', 0, '', 25000000, '550 SQ M (3 Bedroom Bungalow) Carcass', 0, 25000000, 0, '2021-07-13', '2021-09-13 13:06:01', 'GC@550', 0, 0, 28, 0, 0, 0, 5, 0),
(17, '5229f1f5-87cc-4f59-83b4-fefcb74c', 'property', '700 SQ M (4 Bedroom Duplex) Decked Only', '', '', '', 1, '0000-00-00', 0, '', 30000000, '700 SQ M (4 Bedroom Duplex) Decked Only', 0, 30000000, 0, '2021-07-13', '2021-07-13 10:41:45', '', 0, 0, 28, 0, 0, 0, 5, 0),
(18, 'b2d712ef-e962-4da3-814f-37471d6b', 'property', '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', '', '', '', 29, '0000-00-00', 0, '', 30000000, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0, 30000000, 0, '2021-07-13', '2021-09-09 10:23:17', 'GC@550', 0, 0, 28, 0, 0, 0, 5, 0),
(19, 'a30c2a90-74d5-4125-b61d-d7d7d6e5', 'property', '500 SQ M (Land Only)', '', '', '', 1, '0000-00-00', 0, '', 2500000, '500 SQ M (Land Only)', 0, 2500000, 0, '2021-07-13', '2021-07-13 10:44:48', '', 0, 0, 28, 0, 0, 0, 6, 0),
(20, '111bc94a-b46d-4e80-a863-e2cf1ce3', 'property', '600SQ M (3 bedroom Bungalow) DPC, Completed', '', '', '', 1, '0000-00-00', 0, '', 5000000, '600SQ M (3 bedroom Bungalow) DPC, Completed', 0, 5000000, 0, '2021-07-13', '2021-07-13 10:47:39', '', 0, 0, 28, 0, 0, 0, 6, 0),
(21, '2eddedef-1749-482a-bc74-69ad254d', 'property', '600 SQ (Land Only)', '', '', '', 0, '0000-00-00', 0, '', 12000000, '600 SQ (Land Only)', 0, 12000000, 0, '2021-07-13', '2021-09-13 13:08:55', '', 0, 0, 28, 0, 0, 0, 7, 0),
(22, 'bd75dabb-9d24-4a2d-8bf7-7ff526c3', 'property', '10000 SQ M ( Recreational Land)', '', '', '', 2, '0000-00-00', 0, '', 150000000, '10000 SQ M ( Recreational Land)', 0, 150000000, 0, '2021-07-13', '2021-09-06 15:45:15', '', 0, 0, 28, 0, 0, 0, 7, 0),
(23, 'd5c0f041-9c45-438f-bae5-0e82ca2f', 'property', 'A Mini Estate (43 Flats) Lot', '', '', '', 43, '0000-00-00', 0, '', 600000000, 'A Mini Estate (43 Flats) Lot', 0, 600000000, 0, '2021-07-13', '2021-07-13 11:12:03', '', 0, 0, 28, 0, 0, 0, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_items_model`
--

CREATE TABLE `sales_items_model` (
  `id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `sale_ID` varchar(50) DEFAULT NULL,
  `property` int(11) DEFAULT NULL,
  `plot_number` varchar(200) NOT NULL,
  `location` int(11) DEFAULT NULL,
  `building_category` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_items_model`
--

INSERT INTO `sales_items_model` (`id`, `qty`, `amount`, `sale_ID`, `property`, `plot_number`, `location`, `building_category`, `createdAt`, `updatedAt`) VALUES
(1, 1, '23000000', '1052211', 15, '118', 4, 6, '2020-11-25', '2021-09-08 10:52:59'),
(2, 1, '8000000', '4114681', 18, '2363', 5, 11, '2017-01-09', '2021-09-08 11:31:16'),
(3, 1, '44500000', '4114681', 12, '1946', 4, 4, '2017-01-09', '2021-09-08 11:31:16'),
(4, 1, '21000000', '4114681', 15, '0014', 4, 6, '2017-01-09', '2021-09-08 11:31:16'),
(5, 1, '20000000', '5737627', 12, '120', 4, 4, '2021-06-04', '2021-09-09 09:41:56'),
(6, 1, '27000000', '5737627', 15, '407', 4, 7, '2021-06-04', '2021-09-09 09:41:56'),
(7, 1, '25000000', '1045676', 15, '310', 4, 7, '2020-05-15', '2021-09-09 09:47:12'),
(8, 1, '20000000', '1847189', 15, '31', 4, 7, '2020-08-04', '2021-09-09 09:51:12'),
(10, 1, '39000000', '5421450', 18, '2365', 5, 11, '2016-01-03', '2021-09-09 10:23:17'),
(11, 1, '10000000', '2323463', 14, '35', 4, 5, '2020-06-23', '2021-09-09 10:26:22'),
(12, 3, '45000000', '2826105', 12, '1946A', 4, 4, '2019-12-05', '2021-09-09 10:32:10'),
(13, 1, '11000000', '2236623', 16, '2415', 5, 9, '2016-12-20', '2021-09-09 10:40:02'),
(17, 1, '17000000', '1016829', 14, '309', 4, 8, '2020-12-15', '2021-09-09 13:22:51'),
(19, 1, '23000000', '127925', 15, '113', 4, 6, '2020-10-05', '2021-09-09 13:36:32'),
(20, 1, '17000000', '3836362', 12, '108', 4, 4, '2020-10-05', '2021-09-09 13:45:30'),
(21, 1, '12500000', '3645275', 14, '124', 4, 5, '2021-06-14', '2021-09-09 13:50:11'),
(22, 1, '20000000', '1457478', 15, '244', 4, 4, '2021-02-25', '2021-09-09 13:58:48'),
(23, 1, '15000000', '5458637', 15, '245', 4, 4, '2021-03-25', '2021-09-09 14:00:22'),
(24, 1, '17000000', '1448', 12, '44', 4, 4, '2020-09-29', '2021-09-09 14:06:14'),
(25, 1, '18000000', '206750', 12, '212', 4, 4, '2020-10-05', '2021-09-09 14:08:48'),
(26, 1, '17000000', '548691', 12, '21', 4, 4, '2020-09-29', '2021-09-09 14:10:49'),
(28, 1, '17000000', '1213457', 12, '017', 4, 4, '2020-07-08', '2021-09-09 14:15:00'),
(30, 1, '18000000', '5319786', 12, '201', 4, 4, '2021-04-22', '2021-09-13 10:22:46'),
(33, 1, '10000000', '4429533', 12, '0016', 4, 4, '2020-06-23', '2021-09-13 10:32:46'),
(38, 1, '17000000', '5750425', 12, '121', 4, 4, '2021-06-04', '2021-09-13 12:53:26'),
(39, 1, '23000000', '3253584', 15, '119', 4, 6, '2021-04-29', '2021-09-13 12:55:23'),
(40, 1, '8500000', '2955700', 14, '122', 4, 4, '2021-06-09', '2021-09-13 12:57:27'),
(41, 1, '18000000', '3357762', 12, '112', 4, 4, '2020-10-05', '2021-09-13 12:58:57'),
(42, 1, '23000000', '359226', 12, '126', 4, 4, '2021-07-23', '2021-09-13 13:00:04'),
(43, 1, '23000000', '100685', 15, '115', 4, 6, '2020-10-05', '2021-09-13 13:01:24'),
(44, 1, '6000000', '504432', 16, 'B-96', 5, 9, '2016-07-27', '2021-09-13 13:06:01'),
(45, 1, '5000000', '76939', 21, 'KY-13', 7, 10, '2015-10-05', '2021-09-13 13:08:55'),
(46, 1, '23000000', '19431', 15, '213', 4, 6, '2020-10-05', '2021-09-13 13:11:09'),
(47, 1, '23000000', '151160', 15, '117', 4, 6, '2020-11-25', '2021-09-13 13:15:00'),
(48, 1, '13000000', '615124', 12, '004', 4, 4, '2020-06-29', '2021-09-13 13:17:29'),
(49, 1, '25000000', '3517706', 15, '215', 4, 6, '2020-10-06', '2021-09-13 13:19:09'),
(51, 1, '23000000', '2221260', 15, '246', 4, 6, '2021-03-29', '2021-09-13 13:22:48'),
(54, 1, '23000000', '1144510', 15, '214', 4, 6, '2020-10-05', '2021-09-21 09:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `sales_model`
--

CREATE TABLE `sales_model` (
  `id` int(11) NOT NULL,
  `uuid` int(11) DEFAULT NULL,
  `property_name` varchar(200) DEFAULT NULL,
  `property` int(11) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `amount_paid` int(11) NOT NULL DEFAULT 0,
  `period` int(11) DEFAULT NULL,
  `applicant` int(11) NOT NULL,
  `applicant_name` varchar(200) DEFAULT NULL,
  `build_category` int(11) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `createdBy_FK` int(11) DEFAULT NULL,
  `edited_By` varchar(100) NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `md_date` date DEFAULT NULL,
  `md_status` int(11) NOT NULL DEFAULT 0,
  `md_session` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_model`
--

INSERT INTO `sales_model` (`id`, `uuid`, `property_name`, `property`, `amount`, `amount_paid`, `period`, `applicant`, `applicant_name`, `build_category`, `sale_date`, `due_date`, `createdAt`, `createdBy_FK`, `edited_By`, `updatedAt`, `status`, `md_date`, `md_status`, `md_session`) VALUES
(1, 1052211, NULL, 0, '23000000', 0, 360, 71, 'Abubakar Suleiman Takuma', NULL, '2020-11-25', '2022-09-03', '2021-09-08', 28, '', '2021-09-08 10:52:59', 0, NULL, 0, NULL),
(2, 4114681, NULL, 0, '73500000', 0, 360, 46, 'Agwandas Akawaya Andrawus', NULL, '2017-01-09', '2022-09-03', '2021-09-08', 28, '', '2021-09-08 11:31:16', 0, NULL, 0, NULL),
(3, 5737627, NULL, 0, '47000000', 0, 360, 45, 'Akan Pius Abank', NULL, '2021-06-04', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 09:41:56', 0, NULL, 0, NULL),
(4, 1045676, NULL, 0, '25000000', 0, 360, 27, 'Aliyu Ahmad Tijjani', NULL, '2020-05-15', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 09:47:12', 0, NULL, 0, NULL),
(5, 1847189, NULL, 0, '20000000', 0, 360, 32, 'AMAKOR BEDE OBIOMA', NULL, '2020-08-04', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 09:51:12', 0, NULL, 0, NULL),
(7, 5421450, NULL, 0, '39000000', 0, 360, 59, 'AwaK Iniobong', NULL, '2016-01-03', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:23:17', 0, NULL, 0, NULL),
(8, 2323463, NULL, 0, '10000000', 0, 360, 26, 'Bala Jane Kudu', NULL, '2020-06-23', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:26:22', 0, NULL, 0, NULL),
(9, 2826105, NULL, 0, '45000000', 0, 360, 30, 'Barr Peter Dandam Kefas', NULL, '2019-12-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:32:10', 0, NULL, 0, NULL),
(10, 2236623, NULL, 0, '11000000', 0, 360, 80, 'Barrister Navati Iliya', NULL, '2016-12-20', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:40:02', 0, NULL, 0, NULL),
(12, 4410743, NULL, 0, '22000000', 0, 360, 68, 'Chukwuma Celestine Obiajulu', NULL, '2021-05-19', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 11:12:37', 0, NULL, 0, NULL),
(13, 4312810, NULL, 0, '44500000', 0, 360, 66, 'Dakoru Asekutu', NULL, '2017-11-09', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 11:16:04', 0, NULL, 0, NULL),
(14, 1016829, NULL, 0, '17000000', 0, 360, 74, 'Emmanuel Okechukwu Ede', NULL, '2020-12-15', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:22:51', 0, NULL, 0, NULL),
(15, 5722468, NULL, 0, '23000000', 12000000, 360, 40, 'Ezire Onoriode', NULL, '2020-12-30', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:26:55', 0, NULL, 0, NULL),
(16, 127925, NULL, 0, '23000000', 0, 360, 64, 'Gubio Rukaiyah', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:36:32', 0, NULL, 0, NULL),
(17, 3836362, NULL, 0, '17000000', 0, 360, 79, 'Hussein A. Tijjani', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:45:30', 0, NULL, 0, NULL),
(18, 3645275, NULL, 0, '12500000', 0, 360, 76, 'Igboanugo Chizoba', NULL, '2021-06-14', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:50:11', 0, NULL, 0, NULL),
(19, 1457478, NULL, 0, '20000000', 0, 360, 84, 'Ishidi Ijasini Pur', NULL, '2021-02-25', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:58:48', 0, NULL, 0, NULL),
(20, 5458637, NULL, 0, '15000000', 0, 360, 83, 'Ishidi Ijudigal Pur', NULL, '2021-03-25', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:00:22', 0, NULL, 0, NULL),
(21, 1448, NULL, 0, '17000000', 0, 360, 50, 'John Adayu', NULL, '2020-09-29', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:06:14', 0, NULL, 0, NULL),
(22, 206750, NULL, 0, '18000000', 0, 360, 56, 'Kafidipe Ebenezer Imaben Precious', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:08:48', 0, NULL, 0, NULL),
(23, 548691, NULL, 0, '17000000', 0, 360, 33, 'Maina Afakirya Gadzana', NULL, '2020-09-29', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:10:49', 0, NULL, 0, NULL),
(24, 5510981, NULL, 0, '20000000', 0, 360, 75, 'Mbanekwe Anthony Oluchukwu', NULL, '2021-07-12', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:13:06', 0, NULL, 0, NULL),
(25, 1213457, NULL, 0, '17000000', 0, 360, 77, 'Modestus Mbaneri', NULL, '2020-07-08', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:15:00', 0, NULL, 0, NULL),
(26, 2415197, NULL, 0, '44500000', 0, 360, 54, 'Mr and Mrs Julius  Nwaigwe', NULL, '2017-03-21', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:19:47', 0, NULL, 0, NULL),
(27, 5319786, NULL, 0, '18000000', 0, 360, 82, 'Mrs Gbaagileh Judith Mbananden ', NULL, '2021-04-22', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:22:46', 0, NULL, 0, NULL),
(28, 5222190, NULL, 0, '44600000', 0, 360, 52, 'Mrs Ifeoma Michael', NULL, '2018-11-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:24:58', 0, NULL, 0, NULL),
(29, 425773, NULL, 0, '8000000', 0, 360, 28, 'Nnadi Chijioke Okadili ', NULL, '2018-11-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:29:40', 0, NULL, 0, NULL),
(30, 4429533, NULL, 0, '10000000', 0, 360, 58, 'Nnamani Nehemiah Chijioke', NULL, '2020-06-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:32:46', 0, NULL, 0, NULL),
(31, 5232985, NULL, 0, '16000000', 0, 360, 29, 'Nwankwo Chukwujekwu Donatus', NULL, '2020-06-02', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 11:37:34', 0, NULL, 0, NULL),
(32, 2249512, NULL, 0, '8000000', 0, 360, 41, 'Nworah Okechukwu Nnadozie', NULL, '2020-06-02', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 11:51:05', 0, NULL, 0, NULL),
(33, 2046949, NULL, 0, '22000000', 0, 360, 42, 'Odu Tony Ada', NULL, '2019-08-30', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:47:32', 0, NULL, 0, NULL),
(34, 3847528, NULL, 0, '45000000', 0, 360, 53, 'Okafor Izuchukwu Columbanus', NULL, '2018-11-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:50:51', 0, NULL, 0, NULL),
(35, 5750425, NULL, 0, '17000000', 0, 360, 44, 'Okeke Christopher Ogbonna', NULL, '2021-06-04', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:53:26', 0, NULL, 0, NULL),
(36, 3253584, NULL, 0, '23000000', 0, 360, 69, 'Oketta Jude Onesi', NULL, '2021-04-29', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:55:23', 0, NULL, 0, NULL),
(37, 2955700, NULL, 0, '8500000', 0, 360, 51, 'Okpara Chima Centus', NULL, '2021-06-09', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:57:27', 0, NULL, 0, NULL),
(38, 3357762, NULL, 0, '18000000', 0, 360, 55, 'Omaba Roseline Anita', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:58:57', 0, NULL, 0, NULL),
(39, 359226, NULL, 0, '23000000', 0, 360, 67, 'Onuzulike Ugochukwu Babatunde', NULL, '2021-07-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:00:04', 0, NULL, 0, NULL),
(40, 100685, NULL, 0, '23000000', 0, 360, 63, 'Onyema Ikenna Okechukwu', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:01:24', 0, NULL, 0, NULL),
(41, 504432, NULL, 0, '6000000', 0, 360, 62, 'Orume Esther Daniel', NULL, '2016-07-27', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:06:01', 0, NULL, 0, NULL),
(42, 76939, NULL, 0, '5000000', 0, 360, 61, 'Osrogu  Nigeria Limited', NULL, '2015-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:08:55', 0, NULL, 0, NULL),
(43, 19431, NULL, 0, '23000000', 0, 360, 36, 'Rabiu Morgan Mariam', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:11:08', 0, NULL, 0, NULL),
(44, 151160, NULL, 0, '23000000', 0, 360, 72, 'Ramatu Bage Takuma', NULL, '2020-11-25', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:15:00', 0, NULL, 0, NULL),
(45, 615124, NULL, 0, '13000000', 0, 360, 78, 'Ukachukwu Chidiebere Emmanuel', NULL, '2020-06-29', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:17:29', 0, NULL, 0, NULL),
(46, 3517706, NULL, 0, '25000000', 0, 360, 47, 'Ukonu Nnenna Ifendu', NULL, '2020-10-06', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:19:09', 0, NULL, 0, NULL),
(47, 1519539, NULL, 0, '17000000', 0, 360, 65, 'Uzoigwe Obioma Helen', NULL, '2021-04-27', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:21:16', 0, NULL, 0, NULL),
(48, 2221260, NULL, 0, '23000000', 0, 360, 81, 'West Sobomabo Wariye', NULL, '2021-03-29', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:22:48', 0, NULL, 0, NULL),
(49, 1151590, NULL, 0, '64500000', 0, 360, 49, 'Bawa Abdullahi Yahaya', NULL, '2020-06-23', '2022-09-16', '2021-09-21', 28, '', '2021-09-21 09:02:03', 0, NULL, 0, NULL),
(50, 1144510, NULL, 0, '23000000', 4000000, 360, 85, 'Audu Rabiu Morgan', NULL, '2020-10-05', '2022-09-16', '2021-09-21', 28, '', '2021-09-21 09:54:54', 0, NULL, 0, NULL),
(51, 134, NULL, 0, '30000000', 0, 360, 35, 'Asogwa Ernest Chijioke', NULL, '2020-07-06', '2022-09-16', '2021-09-21', 28, '', '2021-09-21 10:05:16', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_scheldule_model`
--

CREATE TABLE `sales_scheldule_model` (
  `id` int(11) NOT NULL,
  `sale_uuid` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `applicant_name` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `property_name` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_scheldule_model`
--

INSERT INTO `sales_scheldule_model` (`id`, `sale_uuid`, `amount`, `applicant_name`, `date`, `period`, `property_name`, `status`) VALUES
(1, 2536678, '1916667', 'Bala Jane Kudu', '2020-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(2, 2536678, '1916667', 'Bala Jane Kudu', '2020-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(3, 2536678, '1916667', 'Bala Jane Kudu', '2021-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(4, 2536678, '1916667', 'Bala Jane Kudu', '2021-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(5, 2536678, '1916667', 'Bala Jane Kudu', '2021-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(6, 2536678, '1916667', 'Bala Jane Kudu', '2021-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(7, 2536678, '1916667', 'Bala Jane Kudu', '2021-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(8, 2536678, '1916667', 'Bala Jane Kudu', '2021-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(9, 2536678, '1916667', 'Bala Jane Kudu', '2021-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(10, 2536678, '1916667', 'Bala Jane Kudu', '2021-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(11, 2536678, '1916667', 'Bala Jane Kudu', '2021-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(12, 2536678, '1916667', 'Bala Jane Kudu', '2021-10-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(13, 2536678, '1916667', 'Bala Jane Kudu', '2021-11-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(14, 2536678, '1916667', 'Bala Jane Kudu', '2021-12-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(15, 2536678, '1916667', 'Bala Jane Kudu', '2022-01-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(16, 2536678, '1916667', 'Bala Jane Kudu', '2022-02-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(17, 2536678, '1916667', 'Bala Jane Kudu', '2022-03-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(18, 2536678, '1916667', 'Bala Jane Kudu', '2022-04-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(19, 2536678, '1916667', 'Bala Jane Kudu', '2022-05-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(20, 2536678, '1916667', 'Bala Jane Kudu', '2022-06-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(21, 2536678, '1916667', 'Bala Jane Kudu', '2022-07-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(22, 2536678, '1916667', 'Bala Jane Kudu', '2022-08-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(23, 2040316, '9166667', 'Odu Tony Ada', '2019-09-05', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(24, 2040316, '9166667', 'Odu Tony Ada', '2019-10-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(25, 2040316, '9166667', 'Odu Tony Ada', '2019-11-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(26, 2040316, '9166667', 'Odu Tony Ada', '2019-12-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(27, 2040316, '9166667', 'Odu Tony Ada', '2020-01-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(28, 2040316, '9166667', 'Odu Tony Ada', '2020-02-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(29, 2040316, '9166667', 'Odu Tony Ada', '2020-03-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(30, 2040316, '9166667', 'Odu Tony Ada', '2020-04-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(31, 2040316, '9166667', 'Odu Tony Ada', '2020-05-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(32, 2040316, '9166667', 'Odu Tony Ada', '2020-06-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(33, 2040316, '9166667', 'Odu Tony Ada', '2020-07-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(34, 2040316, '9166667', 'Odu Tony Ada', '2020-08-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(35, 2040316, '9166667', 'Odu Tony Ada', '2020-09-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(36, 2040316, '9166667', 'Odu Tony Ada', '2020-10-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(37, 2040316, '9166667', 'Odu Tony Ada', '2020-11-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(38, 2040316, '9166667', 'Odu Tony Ada', '2020-12-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(39, 2040316, '9166667', 'Odu Tony Ada', '2021-01-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(40, 2040316, '9166667', 'Odu Tony Ada', '2021-02-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(41, 2040316, '9166667', 'Odu Tony Ada', '2021-03-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(42, 2040316, '9166667', 'Odu Tony Ada', '2021-04-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(43, 2040316, '9166667', 'Odu Tony Ada', '2021-05-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(44, 2040316, '9166667', 'Odu Tony Ada', '2021-06-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(45, 2040316, '9166667', 'Odu Tony Ada', '2021-07-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(46, 2040316, '9166667', 'Odu Tony Ada', '2021-08-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(47, 2040316, '9166667', 'Odu Tony Ada', '2021-09-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(48, 2040316, '9166667', 'Odu Tony Ada', '2021-10-19', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(49, 2040316, '9166667', 'Odu Tony Ada', '2021-11-19', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(50, 2040316, '9166667', 'Odu Tony Ada', '2021-12-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(51, 2040316, '9166667', 'Odu Tony Ada', '2022-01-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(52, 2040316, '9166667', 'Odu Tony Ada', '2022-02-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(53, 2040316, '9166667', 'Odu Tony Ada', '2022-03-23', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(54, 2040316, '9166667', 'Odu Tony Ada', '2022-04-23', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(55, 2040316, '9166667', 'Odu Tony Ada', '2022-05-24', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(56, 2040316, '9166667', 'Odu Tony Ada', '2022-06-24', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(57, 2040316, '9166667', 'Odu Tony Ada', '2022-07-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(58, 352331, '1916667', 'Rabiu Morgan Mariam', '2020-11-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(59, 352331, '1916667', 'Rabiu Morgan Mariam', '2020-12-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(60, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-01-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(61, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-02-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(62, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-03-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(63, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-04-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(64, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-05-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(65, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-06-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(66, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-07-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(67, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-08-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(68, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-09-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(69, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-10-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(70, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-11-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(71, 352331, '1916667', 'Rabiu Morgan Mariam', '2021-12-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(72, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-01-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(73, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-02-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(74, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-03-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(75, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-04-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(76, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-05-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(77, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-06-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(78, 352331, '1916667', 'Rabiu Morgan Mariam', '2022-07-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(79, 3353839, '916667', 'Alozie Alphonsus', '2020-06-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(80, 3353839, '916667', 'Alozie Alphonsus', '2020-07-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(81, 3353839, '916667', 'Alozie Alphonsus', '2020-08-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(82, 3353839, '916667', 'Alozie Alphonsus', '2020-09-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(83, 3353839, '916667', 'Alozie Alphonsus', '2020-10-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(84, 3353839, '916667', 'Alozie Alphonsus', '2020-12-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(85, 3353839, '916667', 'Alozie Alphonsus', '2021-01-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(86, 3353839, '916667', 'Alozie Alphonsus', '2021-02-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(87, 3353839, '916667', 'Alozie Alphonsus', '2021-03-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(88, 3353839, '916667', 'Alozie Alphonsus', '2021-04-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(89, 3353839, '916667', 'Alozie Alphonsus', '2021-05-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(90, 3353839, '916667', 'Alozie Alphonsus', '2021-06-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(91, 3353839, '916667', 'Alozie Alphonsus', '2021-07-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(92, 3353839, '916667', 'Alozie Alphonsus', '2021-08-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(93, 3353839, '916667', 'Alozie Alphonsus', '2021-09-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(94, 3353839, '916667', 'Alozie Alphonsus', '2021-10-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(95, 3353839, '916667', 'Alozie Alphonsus', '2021-11-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(96, 3353839, '916667', 'Alozie Alphonsus', '2021-12-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(97, 3353839, '916667', 'Alozie Alphonsus', '2022-01-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(98, 3353839, '916667', 'Alozie Alphonsus', '2022-02-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(99, 3353839, '916667', 'Alozie Alphonsus', '2022-03-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(100, 3353839, '916667', 'Alozie Alphonsus', '2022-04-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(101, 3353839, '916667', 'Alozie Alphonsus', '2022-05-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(102, 3353839, '916667', 'Alozie Alphonsus', '2022-06-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(103, 3353839, '916667', 'Alozie Alphonsus', '2022-07-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(104, 3353839, '916667', 'Alozie Alphonsus', '2022-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(105, 3959742, '583333', 'Alozie Alphonsus', '2020-07-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(106, 3959742, '583333', 'Alozie Alphonsus', '2020-08-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(107, 3959742, '583333', 'Alozie Alphonsus', '2020-09-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(108, 3959742, '583333', 'Alozie Alphonsus', '2020-10-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(109, 3959742, '583333', 'Alozie Alphonsus', '2020-11-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(110, 3959742, '583333', 'Alozie Alphonsus', '2020-12-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(111, 3959742, '583333', 'Alozie Alphonsus', '2021-01-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(112, 3959742, '583333', 'Alozie Alphonsus', '2021-02-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(113, 3959742, '583333', 'Alozie Alphonsus', '2021-03-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(114, 3959742, '583333', 'Alozie Alphonsus', '2021-04-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(115, 3959742, '583333', 'Alozie Alphonsus', '2021-05-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(116, 3959742, '583333', 'Alozie Alphonsus', '2021-07-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(117, 3959742, '583333', 'Alozie Alphonsus', '2021-08-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(118, 3959742, '583333', 'Alozie Alphonsus', '2021-09-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(119, 3959742, '583333', 'Alozie Alphonsus', '2021-10-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(120, 3959742, '583333', 'Alozie Alphonsus', '2021-11-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(121, 3959742, '583333', 'Alozie Alphonsus', '2021-12-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(122, 3959742, '583333', 'Alozie Alphonsus', '2022-01-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(123, 3959742, '583333', 'Alozie Alphonsus', '2022-02-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(124, 3959742, '583333', 'Alozie Alphonsus', '2022-03-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(125, 3959742, '583333', 'Alozie Alphonsus', '2022-04-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(126, 3959742, '583333', 'Alozie Alphonsus', '2022-05-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(127, 3959742, '583333', 'Alozie Alphonsus', '2022-06-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(128, 3959742, '583333', 'Alozie Alphonsus', '2022-07-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(129, 3959742, '583333', 'Alozie Alphonsus', '2022-08-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(130, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2020-09-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(131, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2020-10-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(132, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2020-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(133, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2020-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(134, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(135, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(136, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(137, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(138, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(139, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(140, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(141, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(142, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(143, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-10-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(144, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-11-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(145, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2021-12-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(146, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-01-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(147, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-02-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(148, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-03-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(149, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-04-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(150, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-05-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(151, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-06-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(152, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-07-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(153, 3514761, '1666667', 'AMAKOR BEDE OBIOMA', '2022-08-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(154, 32131, '1416667', 'Maina Afakirya Gadzana', '2020-10-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(155, 32131, '1416667', 'Maina Afakirya Gadzana', '2020-11-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(156, 32131, '1416667', 'Maina Afakirya Gadzana', '2020-12-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(157, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-01-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(158, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-03-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(159, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-04-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(160, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-05-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(161, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-06-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(162, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-07-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(163, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-08-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(164, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-09-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(165, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-10-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(166, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-11-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(167, 32131, '1416667', 'Maina Afakirya Gadzana', '2021-12-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(168, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-01-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(169, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-02-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(170, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-03-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(171, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-04-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(172, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-05-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(173, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-06-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(174, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-07-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(175, 32131, '1416667', 'Maina Afakirya Gadzana', '2022-08-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(176, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2019-12-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(177, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-01-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(178, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-02-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(179, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-03-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(180, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-04-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(181, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-05-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(182, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-06-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(183, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-07-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(184, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-08-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(185, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-09-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(186, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-10-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(187, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-11-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(188, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-12-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(189, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-01-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(190, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-02-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(191, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-03-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(192, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-04-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(193, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-05-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(194, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-06-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(195, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-07-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(196, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-08-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(197, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-09-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(198, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-10-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(199, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-11-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(200, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-12-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(201, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-01-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(202, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-03-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(203, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-04-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(204, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-05-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(205, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-06-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(206, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-07-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(207, 4524468, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-08-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(208, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-06-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(209, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-07-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(210, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-08-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(211, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-09-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(212, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-10-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(213, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-11-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(214, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2020-12-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(215, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-01-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(216, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-02-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(217, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-03-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(218, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-04-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(219, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-05-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(220, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-06-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(221, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-07-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(222, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-08-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(223, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-09-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(224, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-10-24', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(225, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-11-24', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(226, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2021-12-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(227, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-01-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(228, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-02-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(229, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-03-28', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(230, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-04-28', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(231, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-05-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(232, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-06-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(233, 5526560, '1083333', 'Aliyu Ahmad Tijjani', '2022-07-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(234, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2020-08-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(235, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2020-09-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(236, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2020-10-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(237, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2020-11-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(238, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2020-12-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(239, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-01-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(240, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-02-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(241, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-03-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(242, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-04-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(243, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-05-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(244, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-06-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(245, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-07-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(246, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(247, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-09-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(248, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-10-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(249, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-11-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(250, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2021-12-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(251, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-01-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(252, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-02-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(253, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-03-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(254, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-04-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(255, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-05-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(256, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-06-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(257, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-07-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(258, 4729157, '1000000', 'Asogwa Ernest Chijioke', '2022-08-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(259, 3131530, '1916667', 'Audu Rabiu Morgan', '2020-12-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(260, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-01-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(261, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-02-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(262, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-03-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(263, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-04-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(264, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-05-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(265, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-06-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(266, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-07-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(267, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-08-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(268, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-09-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(269, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-10-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(270, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-11-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(271, 3131530, '1916667', 'Audu Rabiu Morgan', '2021-12-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(272, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-01-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(273, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-02-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(274, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-03-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(275, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-04-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(276, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-05-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(277, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-06-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(278, 3131530, '1916667', 'Audu Rabiu Morgan', '2022-07-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(279, 73318, '1000000', 'Asogwa Ernest Chijioke', '2020-08-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(280, 73318, '1000000', 'Asogwa Ernest Chijioke', '2020-09-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(281, 73318, '1000000', 'Asogwa Ernest Chijioke', '2020-10-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(282, 73318, '1000000', 'Asogwa Ernest Chijioke', '2020-11-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(283, 73318, '1000000', 'Asogwa Ernest Chijioke', '2020-12-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(284, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-01-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(285, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-02-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(286, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-03-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(287, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-04-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(288, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-05-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(289, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-06-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(290, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-07-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(291, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-08-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(292, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-09-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(293, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-10-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(294, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-11-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(295, 73318, '1000000', 'Asogwa Ernest Chijioke', '2021-12-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(296, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-01-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(297, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-02-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(298, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-03-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(299, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-04-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(300, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-05-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(301, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-06-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(302, 73318, '1000000', 'Asogwa Ernest Chijioke', '2022-07-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(303, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2020-07-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(304, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2020-08-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(305, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2020-09-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(306, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2020-10-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(307, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2020-11-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(308, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2020-12-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(309, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-01-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(310, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-02-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(311, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-03-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(312, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-04-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(313, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-05-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(314, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-06-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(315, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-07-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(316, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-08-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(317, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-09-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(318, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-10-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(319, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-11-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(320, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2021-12-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(321, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-01-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(322, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-02-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(323, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-03-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(324, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-04-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(325, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-05-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(326, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-06-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(327, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-07-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(328, 202554, '416667', 'Nworah Okechukwu Nnadozie', '2022-08-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(329, 214127, '1916667', 'Audu Morgan Rabiu', '2020-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(330, 214127, '1916667', 'Audu Morgan Rabiu', '2020-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(331, 214127, '1916667', 'Audu Morgan Rabiu', '2021-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(332, 214127, '1916667', 'Audu Morgan Rabiu', '2021-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(333, 214127, '1916667', 'Audu Morgan Rabiu', '2021-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(334, 214127, '1916667', 'Audu Morgan Rabiu', '2021-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(335, 214127, '1916667', 'Audu Morgan Rabiu', '2021-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(336, 214127, '1916667', 'Audu Morgan Rabiu', '2021-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(337, 214127, '1916667', 'Audu Morgan Rabiu', '2021-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(338, 214127, '1916667', 'Audu Morgan Rabiu', '2021-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(339, 214127, '1916667', 'Audu Morgan Rabiu', '2021-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(340, 214127, '1916667', 'Audu Morgan Rabiu', '2021-10-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(341, 214127, '1916667', 'Audu Morgan Rabiu', '2021-11-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(342, 214127, '1916667', 'Audu Morgan Rabiu', '2021-12-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(343, 214127, '1916667', 'Audu Morgan Rabiu', '2022-01-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(344, 214127, '1916667', 'Audu Morgan Rabiu', '2022-02-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(345, 214127, '1916667', 'Audu Morgan Rabiu', '2022-03-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(346, 214127, '1916667', 'Audu Morgan Rabiu', '2022-04-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(347, 214127, '1916667', 'Audu Morgan Rabiu', '2022-05-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(348, 214127, '1916667', 'Audu Morgan Rabiu', '2022-06-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(349, 214127, '1916667', 'Audu Morgan Rabiu', '2022-07-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(350, 214127, '1916667', 'Audu Morgan Rabiu', '2022-08-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(351, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2021-07-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(352, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2021-08-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(353, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2021-09-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(354, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2021-10-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(355, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2021-11-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(356, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2021-12-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(357, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-01-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(358, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-02-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(359, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-03-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(360, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-04-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(361, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-05-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(362, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-06-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(363, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-07-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(364, 1616275, '1916667', 'Okeke Christopher Ogbonna', '2022-08-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(365, 3018294, '2250000', 'Akan Pius Abank', '2021-07-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(366, 3018294, '2250000', 'Akan Pius Abank', '2021-08-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(367, 3018294, '2250000', 'Akan Pius Abank', '2021-09-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(368, 3018294, '2250000', 'Akan Pius Abank', '2021-10-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(369, 3018294, '2250000', 'Akan Pius Abank', '2021-11-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(370, 3018294, '2250000', 'Akan Pius Abank', '2021-12-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(371, 3018294, '2250000', 'Akan Pius Abank', '2022-01-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(372, 3018294, '2250000', 'Akan Pius Abank', '2022-02-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(373, 3018294, '2250000', 'Akan Pius Abank', '2022-03-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(374, 3018294, '2250000', 'Akan Pius Abank', '2022-04-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(375, 3018294, '2250000', 'Akan Pius Abank', '2022-05-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(376, 3018294, '2250000', 'Akan Pius Abank', '2022-06-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(377, 3018294, '2250000', 'Akan Pius Abank', '2022-07-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(378, 3018294, '2250000', 'Akan Pius Abank', '2022-08-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(379, 3921671, '833333', 'Bala Jane Kudu', '2020-07-30', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(380, 3921671, '833333', 'Bala Jane Kudu', '2020-08-30', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(381, 3921671, '833333', 'Bala Jane Kudu', '2020-09-30', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(382, 3921671, '833333', 'Bala Jane Kudu', '2020-10-31', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(383, 3921671, '833333', 'Bala Jane Kudu', '2020-12-01', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(384, 3921671, '833333', 'Bala Jane Kudu', '2021-01-01', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(385, 3921671, '833333', 'Bala Jane Kudu', '2021-02-01', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(386, 3921671, '833333', 'Bala Jane Kudu', '2021-03-04', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(387, 3921671, '833333', 'Bala Jane Kudu', '2021-04-04', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(388, 3921671, '833333', 'Bala Jane Kudu', '2021-05-05', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(389, 3921671, '833333', 'Bala Jane Kudu', '2021-06-05', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(390, 3921671, '833333', 'Bala Jane Kudu', '2021-07-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(391, 3921671, '833333', 'Bala Jane Kudu', '2021-08-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(392, 3921671, '833333', 'Bala Jane Kudu', '2021-09-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(393, 3921671, '833333', 'Bala Jane Kudu', '2021-10-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(394, 3921671, '833333', 'Bala Jane Kudu', '2021-11-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(395, 3921671, '833333', 'Bala Jane Kudu', '2021-12-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(396, 3921671, '833333', 'Bala Jane Kudu', '2022-01-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(397, 3921671, '833333', 'Bala Jane Kudu', '2022-02-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(398, 3921671, '833333', 'Bala Jane Kudu', '2022-03-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(399, 3921671, '833333', 'Bala Jane Kudu', '2022-04-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(400, 3921671, '833333', 'Bala Jane Kudu', '2022-05-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(401, 3921671, '833333', 'Bala Jane Kudu', '2022-06-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(402, 3921671, '833333', 'Bala Jane Kudu', '2022-07-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(403, 3921671, '833333', 'Bala Jane Kudu', '2022-08-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(404, 2645340, '1916667', 'Rabiu Morgan Mariam', '2020-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(405, 2645340, '1916667', 'Rabiu Morgan Mariam', '2020-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(406, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(407, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(408, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(409, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(410, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(411, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(412, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(413, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(414, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(415, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-10-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(416, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-11-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(417, 2645340, '1916667', 'Rabiu Morgan Mariam', '2021-12-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(418, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-01-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(419, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-02-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(420, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-03-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(421, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-04-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(422, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-05-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(423, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-06-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(424, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-07-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(425, 2645340, '1916667', 'Rabiu Morgan Mariam', '2022-08-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(426, 4552903, '1833333', 'Odu Tony Ada', '2019-09-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(427, 4552903, '1833333', 'Odu Tony Ada', '2019-10-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(428, 4552903, '1833333', 'Odu Tony Ada', '2019-11-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(429, 4552903, '1833333', 'Odu Tony Ada', '2019-12-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(430, 4552903, '1833333', 'Odu Tony Ada', '2020-01-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(431, 4552903, '1833333', 'Odu Tony Ada', '2020-02-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(432, 4552903, '1833333', 'Odu Tony Ada', '2020-03-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(433, 4552903, '1833333', 'Odu Tony Ada', '2020-04-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(434, 4552903, '1833333', 'Odu Tony Ada', '2020-05-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(435, 4552903, '1833333', 'Odu Tony Ada', '2020-06-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(436, 4552903, '1833333', 'Odu Tony Ada', '2020-07-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(437, 4552903, '1833333', 'Odu Tony Ada', '2020-08-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(438, 4552903, '1833333', 'Odu Tony Ada', '2020-09-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(439, 4552903, '1833333', 'Odu Tony Ada', '2020-10-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(440, 4552903, '1833333', 'Odu Tony Ada', '2020-11-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(441, 4552903, '1833333', 'Odu Tony Ada', '2020-12-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(442, 4552903, '1833333', 'Odu Tony Ada', '2021-01-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(443, 4552903, '1833333', 'Odu Tony Ada', '2021-02-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(444, 4552903, '1833333', 'Odu Tony Ada', '2021-03-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0);
INSERT INTO `sales_scheldule_model` (`id`, `sale_uuid`, `amount`, `applicant_name`, `date`, `period`, `property_name`, `status`) VALUES
(445, 4552903, '1833333', 'Odu Tony Ada', '2021-04-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(446, 4552903, '1833333', 'Odu Tony Ada', '2021-05-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(447, 4552903, '1833333', 'Odu Tony Ada', '2021-06-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(448, 4552903, '1833333', 'Odu Tony Ada', '2021-07-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(449, 4552903, '1833333', 'Odu Tony Ada', '2021-08-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(450, 4552903, '1833333', 'Odu Tony Ada', '2021-09-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(451, 4552903, '1833333', 'Odu Tony Ada', '2021-10-19', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(452, 4552903, '1833333', 'Odu Tony Ada', '2021-11-19', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(453, 4552903, '1833333', 'Odu Tony Ada', '2021-12-20', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(454, 4552903, '1833333', 'Odu Tony Ada', '2022-01-20', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(455, 4552903, '1833333', 'Odu Tony Ada', '2022-02-20', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(456, 4552903, '1833333', 'Odu Tony Ada', '2022-03-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(457, 4552903, '1833333', 'Odu Tony Ada', '2022-04-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(458, 4552903, '1833333', 'Odu Tony Ada', '2022-05-24', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(459, 4552903, '1833333', 'Odu Tony Ada', '2022-06-24', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(460, 4552903, '1833333', 'Odu Tony Ada', '2022-07-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(461, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2020-07-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(462, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2020-08-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(463, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2020-09-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(464, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2020-10-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(465, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2020-11-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(466, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2020-12-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(467, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-01-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(468, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-02-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(469, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-03-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(470, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-04-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(471, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-05-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(472, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-07-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(473, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-08-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(474, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-09-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(475, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-10-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(476, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-11-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(477, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2021-12-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(478, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-01-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(479, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-02-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(480, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-03-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(481, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-04-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(482, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-05-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(483, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-06-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(484, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-07-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(485, 57578, '833333', 'Nnamani Nehemiah Chijioke', '2022-08-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(486, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2020-09-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(487, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2020-10-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(488, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2020-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(489, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2020-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(490, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(491, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(492, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(493, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(494, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(495, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(496, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(497, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(498, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(499, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-10-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(500, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-11-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(501, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2021-12-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(502, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-01-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(503, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-02-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(504, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-03-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(505, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-04-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(506, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-05-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(507, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-06-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(508, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-07-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(509, 479617, '3000000', 'AMAKOR BEDE OBIOMA', '2022-08-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(510, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2019-12-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(511, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-01-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(512, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-02-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(513, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-03-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(514, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-04-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(515, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-05-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(516, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-06-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(517, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-07-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(518, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-08-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(519, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-09-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(520, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-10-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(521, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-11-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(522, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2020-12-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(523, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-01-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(524, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-02-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(525, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-03-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(526, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-04-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(527, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-05-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(528, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-06-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(529, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-07-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(530, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-08-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(531, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-09-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(532, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-10-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(533, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-11-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(534, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2021-12-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(535, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-01-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(536, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-03-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(537, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-04-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(538, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-05-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(539, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-06-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(540, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-07-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(541, 2812362, '1333333', 'Nwankwo Chukwujekwu Donatus', '2022-08-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(542, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-06-15', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(543, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-07-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(544, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-08-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(545, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-09-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(546, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-10-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(547, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-11-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(548, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2020-12-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(549, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-01-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(550, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-02-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(551, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-03-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(552, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-04-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(553, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-05-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(554, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-06-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(555, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-07-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(556, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-08-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(557, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-09-23', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(558, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-10-24', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(559, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-11-24', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(560, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2021-12-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(561, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-01-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(562, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-02-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(563, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-03-28', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(564, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-04-28', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(565, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-05-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(566, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-06-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(567, 418108, '2083333', 'Aliyu Ahmad Tijjani', '2022-07-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(568, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-03-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(569, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-04-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(570, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-05-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(571, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-06-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(572, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-07-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(573, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-08-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(574, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-09-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(575, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-10-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(576, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-11-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(577, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2020-12-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(578, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-01-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(579, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-02-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(580, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-03-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(581, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-04-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(582, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-05-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(583, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-06-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(584, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-07-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(585, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-08-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(586, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-09-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(587, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-10-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(588, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-11-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(589, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2021-12-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(590, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-01-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(591, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-02-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(592, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-03-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(593, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-04-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(594, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-05-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(595, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-06-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(596, 2480, '1916667', 'Nworah Okechukwu Nnadozie', '2022-07-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(597, 52768, '2250000', 'Akan Pius Abank', '2021-07-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(598, 52768, '2250000', 'Akan Pius Abank', '2021-08-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(599, 52768, '2250000', 'Akan Pius Abank', '2021-09-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(600, 52768, '2250000', 'Akan Pius Abank', '2021-10-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(601, 52768, '2250000', 'Akan Pius Abank', '2021-11-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(602, 52768, '2250000', 'Akan Pius Abank', '2021-12-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(603, 52768, '2250000', 'Akan Pius Abank', '2022-01-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(604, 52768, '2250000', 'Akan Pius Abank', '2022-02-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(605, 52768, '2250000', 'Akan Pius Abank', '2022-03-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(606, 52768, '2250000', 'Akan Pius Abank', '2022-04-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(607, 52768, '2250000', 'Akan Pius Abank', '2022-05-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(608, 52768, '2250000', 'Akan Pius Abank', '2022-06-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(609, 52768, '2250000', 'Akan Pius Abank', '2022-07-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(610, 52768, '2250000', 'Akan Pius Abank', '2022-08-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(611, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2019-12-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(612, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-01-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(613, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-02-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(614, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-03-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(615, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-04-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(616, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-05-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(617, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-06-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(618, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-07-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(619, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-08-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(620, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-09-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(621, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-10-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(622, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-11-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(623, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2020-12-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(624, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-01-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(625, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-02-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(626, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-03-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(627, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-04-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(628, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-05-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(629, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-06-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(630, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-07-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(631, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-08-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(632, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-09-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(633, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-10-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(634, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-11-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(635, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2021-12-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(636, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-01-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(637, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-02-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(638, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-03-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(639, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-04-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(640, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-05-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(641, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-06-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(642, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-07-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(643, 2634860, '625000', 'Nnadi Chijioke Okadili ', '2022-08-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(644, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2020-08-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(645, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2020-09-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(646, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2020-10-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(647, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2020-11-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(648, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2020-12-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(649, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-01-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(650, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-02-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(651, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-03-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(652, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-04-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(653, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-05-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(654, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-06-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(655, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-07-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(656, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(657, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-09-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(658, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-10-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(659, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-11-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(660, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2021-12-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(661, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-01-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(662, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-02-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(663, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-03-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(664, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-04-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(665, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-05-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(666, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-06-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(667, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-07-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(668, 2538409, '1916667', 'Asogwa Ernest Chijioke', '2022-08-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(669, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2020-11-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(670, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2020-12-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(671, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-01-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(672, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-02-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(673, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-03-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(674, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-04-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(675, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-05-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(676, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-06-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(677, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-07-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(678, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-08-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(679, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-09-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(680, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-10-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(681, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-11-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(682, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2021-12-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(683, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-01-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(684, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-02-14', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(685, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-03-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(686, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-04-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(687, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-05-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(688, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-06-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(689, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-07-19', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(690, 1146423, '2083333', 'Ukonu Nnenna Ifendu', '2022-08-19', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(691, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-10-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(692, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-11-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(693, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-12-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(694, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-01-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(695, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-02-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(696, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-03-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(697, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-04-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(698, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-05-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(699, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-06-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(700, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-07-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(701, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-08-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(702, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-09-13', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(703, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-10-14', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(704, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-11-14', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(705, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-12-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(706, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-01-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(707, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-02-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(708, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-03-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(709, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-04-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(710, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-05-19', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(711, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-06-19', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(712, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-07-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(713, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-08-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(714, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-09-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(715, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-10-21', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(716, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-11-21', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(717, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-12-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(718, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-01-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(719, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-02-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(720, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-03-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(721, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-04-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(722, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-05-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(723, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-06-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(724, 1741442, '2500000', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-07-27', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(725, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-03-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(726, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-04-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(727, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-05-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(728, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-06-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(729, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-07-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(730, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-08-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(731, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-09-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(732, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-10-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(733, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-11-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(734, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2017-12-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(735, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-01-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(736, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-02-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(737, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-03-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(738, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-04-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(739, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-05-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(740, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-06-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(741, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-07-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(742, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-08-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(743, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-09-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(744, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-10-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(745, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-11-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(746, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2018-12-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(747, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-01-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(748, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-02-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(749, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-03-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(750, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-04-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(751, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-05-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(752, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-06-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(753, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-07-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(754, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-08-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(755, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-09-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(756, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-10-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(757, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-11-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(758, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2019-12-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(759, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-01-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(760, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-03-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(761, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-04-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(762, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-05-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(763, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-06-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(764, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-07-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(765, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-08-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(766, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-09-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(767, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-10-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(768, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-11-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(769, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2020-12-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(770, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-01-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(771, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-02-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(772, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-03-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(773, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-04-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(774, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-05-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(775, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-06-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(776, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-07-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(777, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-08-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(778, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-09-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(779, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-10-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(780, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-11-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(781, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2021-12-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(782, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-01-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(783, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-02-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(784, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-03-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(785, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-04-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(786, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-05-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(787, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-06-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(788, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-07-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(789, 3942902, '1166667', 'Mr Emenike G and Chizoba E. Emenike; Destineec S. Ltd', '2022-08-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(790, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2020-07-24', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(791, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2020-08-24', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(792, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2020-09-24', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(793, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2020-10-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(794, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2020-11-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(795, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2020-12-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(796, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-01-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(797, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-02-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(798, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-03-29', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(799, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-04-29', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(800, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-05-30', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(801, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-06-30', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(802, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-07-31', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(803, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-08-31', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(804, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-10-01', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(805, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-11-01', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(806, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2021-12-02', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(807, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-01-02', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(808, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-02-02', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(809, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-03-05', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(810, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-04-05', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(811, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-05-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(812, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-06-06', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(813, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-07-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(814, 2725587, '1666667', 'Bawa Abdullahi Yahaya', '2022-08-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(815, 637891, '1416667', 'John Adayo', '2020-10-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(816, 637891, '1416667', 'John Adayo', '2020-11-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(817, 637891, '1416667', 'John Adayo', '2020-12-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(818, 637891, '1416667', 'John Adayo', '2021-01-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(819, 637891, '1416667', 'John Adayo', '2021-03-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(820, 637891, '1416667', 'John Adayo', '2021-04-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(821, 637891, '1416667', 'John Adayo', '2021-05-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(822, 637891, '1416667', 'John Adayo', '2021-06-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(823, 637891, '1416667', 'John Adayo', '2021-07-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(824, 637891, '1416667', 'John Adayo', '2021-08-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(825, 637891, '1416667', 'John Adayo', '2021-09-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(826, 637891, '1416667', 'John Adayo', '2021-10-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(827, 637891, '1416667', 'John Adayo', '2021-11-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(828, 637891, '1416667', 'John Adayo', '2021-12-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(829, 637891, '1416667', 'John Adayo', '2022-01-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(830, 637891, '1416667', 'John Adayo', '2022-02-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(831, 637891, '1416667', 'John Adayo', '2022-03-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(832, 637891, '1416667', 'John Adayo', '2022-04-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(833, 637891, '1416667', 'John Adayo', '2022-05-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(834, 637891, '1416667', 'John Adayo', '2022-06-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(835, 637891, '1416667', 'John Adayo', '2022-07-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(836, 637891, '1416667', 'John Adayo', '2022-08-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(837, 2541528, '708333', 'Okpara Chima Centus', '2021-07-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(838, 2541528, '708333', 'Okpara Chima Centus', '2021-08-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(839, 2541528, '708333', 'Okpara Chima Centus', '2021-09-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(840, 2541528, '708333', 'Okpara Chima Centus', '2021-10-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(841, 2541528, '708333', 'Okpara Chima Centus', '2021-11-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(842, 2541528, '708333', 'Okpara Chima Centus', '2021-12-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(843, 2541528, '708333', 'Okpara Chima Centus', '2022-01-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(844, 2541528, '708333', 'Okpara Chima Centus', '2022-02-12', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(845, 2541528, '708333', 'Okpara Chima Centus', '2022-03-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(846, 2541528, '708333', 'Okpara Chima Centus', '2022-04-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(847, 2541528, '708333', 'Okpara Chima Centus', '2022-05-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(848, 2541528, '708333', 'Okpara Chima Centus', '2022-06-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(849, 2541528, '708333', 'Okpara Chima Centus', '2022-07-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0);
INSERT INTO `sales_scheldule_model` (`id`, `sale_uuid`, `amount`, `applicant_name`, `date`, `period`, `property_name`, `status`) VALUES
(850, 2541528, '708333', 'Okpara Chima Centus', '2022-08-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(851, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-04-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(852, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-05-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(853, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-06-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(854, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-07-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(855, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-08-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(856, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-09-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(857, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-10-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(858, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-11-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(859, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2017-12-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(860, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-01-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(861, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-03-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(862, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-04-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(863, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-05-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(864, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-06-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(865, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-07-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(866, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-08-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(867, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-09-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(868, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-10-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(869, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-11-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(870, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2018-12-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(871, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-01-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(872, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-02-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(873, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-03-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(874, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-04-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(875, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-05-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(876, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-06-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(877, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-07-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(878, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-08-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(879, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-09-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(880, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-10-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(881, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-11-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(882, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2019-12-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(883, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-01-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(884, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-02-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(885, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-03-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(886, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-04-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(887, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-05-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(888, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-06-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(889, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-07-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(890, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-08-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(891, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-09-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(892, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-10-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(893, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-11-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(894, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2020-12-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(895, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-01-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(896, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-02-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(897, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-03-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(898, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-04-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(899, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-05-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(900, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-06-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(901, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-07-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(902, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-08-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(903, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-09-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(904, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-10-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(905, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-11-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(906, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2021-12-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(907, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-01-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(908, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-02-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(909, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-03-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(910, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-04-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(911, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-05-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(912, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-07-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(913, 5438949, '1250000', 'Mr and Mrs Julius  Nwaigwe', '2022-08-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(914, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2020-11-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(915, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2020-12-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(916, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-01-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(917, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-02-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(918, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-03-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(919, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-04-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(920, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-05-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(921, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-06-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(922, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-07-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(923, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-08-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(924, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-09-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(925, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-10-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(926, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-11-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(927, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2021-12-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(928, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-01-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(929, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-02-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(930, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-03-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(931, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-04-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(932, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-05-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(933, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-06-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(934, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-07-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(935, 5740887, '1500000', 'Kafidipe Ebenezer Imaben Precious', '2022-08-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(936, 2320432, '6500000', 'AwaK Iniobong', '2017-02-03', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(937, 2320432, '6500000', 'AwaK Iniobong', '2017-03-06', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(938, 2320432, '6500000', 'AwaK Iniobong', '2017-04-06', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(939, 2320432, '6500000', 'AwaK Iniobong', '2017-05-07', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(940, 2320432, '6500000', 'AwaK Iniobong', '2017-06-07', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(941, 2320432, '6500000', 'AwaK Iniobong', '2017-07-08', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(942, 2320432, '6500000', 'AwaK Iniobong', '2017-08-08', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(943, 2320432, '6500000', 'AwaK Iniobong', '2017-09-08', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(944, 2320432, '6500000', 'AwaK Iniobong', '2017-10-09', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(945, 2320432, '6500000', 'AwaK Iniobong', '2017-11-09', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(946, 2320432, '6500000', 'AwaK Iniobong', '2017-12-10', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(947, 2320432, '6500000', 'AwaK Iniobong', '2018-01-10', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(948, 2320432, '6500000', 'AwaK Iniobong', '2018-02-10', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(949, 2320432, '6500000', 'AwaK Iniobong', '2018-03-13', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(950, 2320432, '6500000', 'AwaK Iniobong', '2018-04-13', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(951, 2320432, '6500000', 'AwaK Iniobong', '2018-05-14', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(952, 2320432, '6500000', 'AwaK Iniobong', '2018-06-14', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(953, 2320432, '6500000', 'AwaK Iniobong', '2018-07-15', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(954, 2320432, '6500000', 'AwaK Iniobong', '2018-08-15', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(955, 2320432, '6500000', 'AwaK Iniobong', '2018-09-15', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(956, 2320432, '6500000', 'AwaK Iniobong', '2018-10-16', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(957, 2320432, '6500000', 'AwaK Iniobong', '2018-11-16', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(958, 2320432, '6500000', 'AwaK Iniobong', '2018-12-17', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(959, 2320432, '6500000', 'AwaK Iniobong', '2019-01-17', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(960, 2320432, '6500000', 'AwaK Iniobong', '2019-02-17', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(961, 2320432, '6500000', 'AwaK Iniobong', '2019-03-20', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(962, 2320432, '6500000', 'AwaK Iniobong', '2019-04-20', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(963, 2320432, '6500000', 'AwaK Iniobong', '2019-05-21', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(964, 2320432, '6500000', 'AwaK Iniobong', '2019-06-21', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(965, 2320432, '6500000', 'AwaK Iniobong', '2019-07-22', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(966, 2320432, '6500000', 'AwaK Iniobong', '2019-08-22', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(967, 2320432, '6500000', 'AwaK Iniobong', '2019-09-22', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(968, 2320432, '6500000', 'AwaK Iniobong', '2019-10-23', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(969, 2320432, '6500000', 'AwaK Iniobong', '2019-11-23', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(970, 2320432, '6500000', 'AwaK Iniobong', '2019-12-24', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(971, 2320432, '6500000', 'AwaK Iniobong', '2020-01-24', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(972, 2320432, '6500000', 'AwaK Iniobong', '2020-02-24', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(973, 2320432, '6500000', 'AwaK Iniobong', '2020-03-26', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(974, 2320432, '6500000', 'AwaK Iniobong', '2020-04-26', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(975, 2320432, '6500000', 'AwaK Iniobong', '2020-05-27', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(976, 2320432, '6500000', 'AwaK Iniobong', '2020-06-27', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(977, 2320432, '6500000', 'AwaK Iniobong', '2020-07-28', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(978, 2320432, '6500000', 'AwaK Iniobong', '2020-08-28', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(979, 2320432, '6500000', 'AwaK Iniobong', '2020-09-28', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(980, 2320432, '6500000', 'AwaK Iniobong', '2020-10-29', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(981, 2320432, '6500000', 'AwaK Iniobong', '2020-11-29', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(982, 2320432, '6500000', 'AwaK Iniobong', '2020-12-30', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(983, 2320432, '6500000', 'AwaK Iniobong', '2021-01-30', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(984, 2320432, '6500000', 'AwaK Iniobong', '2021-03-02', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(985, 2320432, '6500000', 'AwaK Iniobong', '2021-04-02', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(986, 2320432, '6500000', 'AwaK Iniobong', '2021-05-03', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(987, 2320432, '6500000', 'AwaK Iniobong', '2021-06-03', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(988, 2320432, '6500000', 'AwaK Iniobong', '2021-07-04', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(989, 2320432, '6500000', 'AwaK Iniobong', '2021-08-04', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(990, 2320432, '6500000', 'AwaK Iniobong', '2021-09-04', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(991, 2320432, '6500000', 'AwaK Iniobong', '2021-10-05', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(992, 2320432, '6500000', 'AwaK Iniobong', '2021-11-05', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(993, 2320432, '6500000', 'AwaK Iniobong', '2021-12-06', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(994, 2320432, '6500000', 'AwaK Iniobong', '2022-01-06', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(995, 2320432, '6500000', 'AwaK Iniobong', '2022-02-06', 180, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(996, 394558, '875000', 'Dilioha Ikenna Collins', '2016-07-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(997, 394558, '875000', 'Dilioha Ikenna Collins', '2016-08-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(998, 394558, '875000', 'Dilioha Ikenna Collins', '2016-09-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(999, 394558, '875000', 'Dilioha Ikenna Collins', '2016-10-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1000, 394558, '875000', 'Dilioha Ikenna Collins', '2016-11-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1001, 394558, '875000', 'Dilioha Ikenna Collins', '2016-12-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1002, 394558, '875000', 'Dilioha Ikenna Collins', '2017-01-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1003, 394558, '875000', 'Dilioha Ikenna Collins', '2017-02-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1004, 394558, '875000', 'Dilioha Ikenna Collins', '2017-03-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1005, 394558, '875000', 'Dilioha Ikenna Collins', '2017-04-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1006, 394558, '875000', 'Dilioha Ikenna Collins', '2017-05-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1007, 394558, '875000', 'Dilioha Ikenna Collins', '2017-06-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1008, 394558, '875000', 'Dilioha Ikenna Collins', '2017-07-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1009, 394558, '875000', 'Dilioha Ikenna Collins', '2017-08-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1010, 394558, '875000', 'Dilioha Ikenna Collins', '2017-09-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1011, 394558, '875000', 'Dilioha Ikenna Collins', '2017-10-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1012, 394558, '875000', 'Dilioha Ikenna Collins', '2017-11-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1013, 394558, '875000', 'Dilioha Ikenna Collins', '2017-12-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1014, 394558, '875000', 'Dilioha Ikenna Collins', '2018-01-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1015, 394558, '875000', 'Dilioha Ikenna Collins', '2018-02-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1016, 394558, '875000', 'Dilioha Ikenna Collins', '2018-03-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1017, 394558, '875000', 'Dilioha Ikenna Collins', '2018-04-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1018, 394558, '875000', 'Dilioha Ikenna Collins', '2018-05-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1019, 394558, '875000', 'Dilioha Ikenna Collins', '2018-06-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1020, 394558, '875000', 'Dilioha Ikenna Collins', '2018-07-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1021, 394558, '875000', 'Dilioha Ikenna Collins', '2018-08-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1022, 394558, '875000', 'Dilioha Ikenna Collins', '2018-10-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1023, 394558, '875000', 'Dilioha Ikenna Collins', '2018-11-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1024, 394558, '875000', 'Dilioha Ikenna Collins', '2018-12-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1025, 394558, '875000', 'Dilioha Ikenna Collins', '2019-01-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1026, 394558, '875000', 'Dilioha Ikenna Collins', '2019-02-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1027, 394558, '875000', 'Dilioha Ikenna Collins', '2019-03-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1028, 394558, '875000', 'Dilioha Ikenna Collins', '2019-04-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1029, 394558, '875000', 'Dilioha Ikenna Collins', '2019-05-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1030, 394558, '875000', 'Dilioha Ikenna Collins', '2019-06-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1031, 394558, '875000', 'Dilioha Ikenna Collins', '2019-07-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1032, 394558, '875000', 'Dilioha Ikenna Collins', '2019-08-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1033, 394558, '875000', 'Dilioha Ikenna Collins', '2019-09-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1034, 394558, '875000', 'Dilioha Ikenna Collins', '2019-10-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1035, 394558, '875000', 'Dilioha Ikenna Collins', '2019-11-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1036, 394558, '875000', 'Dilioha Ikenna Collins', '2019-12-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1037, 394558, '875000', 'Dilioha Ikenna Collins', '2020-01-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1038, 394558, '875000', 'Dilioha Ikenna Collins', '2020-02-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1039, 394558, '875000', 'Dilioha Ikenna Collins', '2020-03-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1040, 394558, '875000', 'Dilioha Ikenna Collins', '2020-04-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1041, 394558, '875000', 'Dilioha Ikenna Collins', '2020-05-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1042, 394558, '875000', 'Dilioha Ikenna Collins', '2020-06-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1043, 394558, '875000', 'Dilioha Ikenna Collins', '2020-07-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1044, 394558, '875000', 'Dilioha Ikenna Collins', '2020-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1045, 394558, '875000', 'Dilioha Ikenna Collins', '2020-09-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1046, 394558, '875000', 'Dilioha Ikenna Collins', '2020-10-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1047, 394558, '875000', 'Dilioha Ikenna Collins', '2020-11-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1048, 394558, '875000', 'Dilioha Ikenna Collins', '2020-12-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1049, 394558, '875000', 'Dilioha Ikenna Collins', '2021-01-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1050, 394558, '875000', 'Dilioha Ikenna Collins', '2021-02-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1051, 394558, '875000', 'Dilioha Ikenna Collins', '2021-03-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1052, 394558, '875000', 'Dilioha Ikenna Collins', '2021-04-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1053, 394558, '875000', 'Dilioha Ikenna Collins', '2021-05-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1054, 394558, '875000', 'Dilioha Ikenna Collins', '2021-06-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1055, 394558, '875000', 'Dilioha Ikenna Collins', '2021-07-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1056, 394558, '875000', 'Dilioha Ikenna Collins', '2021-08-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1057, 394558, '875000', 'Dilioha Ikenna Collins', '2021-09-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1058, 394558, '875000', 'Dilioha Ikenna Collins', '2021-10-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1059, 394558, '875000', 'Dilioha Ikenna Collins', '2021-11-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1060, 394558, '875000', 'Dilioha Ikenna Collins', '2021-12-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1061, 394558, '875000', 'Dilioha Ikenna Collins', '2022-01-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1062, 394558, '875000', 'Dilioha Ikenna Collins', '2022-02-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1063, 394558, '875000', 'Dilioha Ikenna Collins', '2022-03-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1064, 394558, '875000', 'Dilioha Ikenna Collins', '2022-04-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1065, 394558, '875000', 'Dilioha Ikenna Collins', '2022-05-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1066, 394558, '875000', 'Dilioha Ikenna Collins', '2022-06-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1067, 394558, '875000', 'Dilioha Ikenna Collins', '2022-07-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1068, 1517295, '833333', 'Osrogu  Nigeria Limited', '2015-11-02', 180, '600 SQ (Land Only)', 0),
(1069, 1517295, '833333', 'Osrogu  Nigeria Limited', '2015-12-03', 180, '600 SQ (Land Only)', 0),
(1070, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-01-03', 180, '600 SQ (Land Only)', 0),
(1071, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-02-03', 180, '600 SQ (Land Only)', 0),
(1072, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-03-05', 180, '600 SQ (Land Only)', 0),
(1073, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-04-05', 180, '600 SQ (Land Only)', 0),
(1074, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-05-06', 180, '600 SQ (Land Only)', 0),
(1075, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-06-06', 180, '600 SQ (Land Only)', 0),
(1076, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-07-07', 180, '600 SQ (Land Only)', 0),
(1077, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-08-07', 180, '600 SQ (Land Only)', 0),
(1078, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-09-07', 180, '600 SQ (Land Only)', 0),
(1079, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-10-08', 180, '600 SQ (Land Only)', 0),
(1080, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-11-08', 180, '600 SQ (Land Only)', 0),
(1081, 1517295, '833333', 'Osrogu  Nigeria Limited', '2016-12-09', 180, '600 SQ (Land Only)', 0),
(1082, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-01-09', 180, '600 SQ (Land Only)', 0),
(1083, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-02-09', 180, '600 SQ (Land Only)', 0),
(1084, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-03-12', 180, '600 SQ (Land Only)', 0),
(1085, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-04-12', 180, '600 SQ (Land Only)', 0),
(1086, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-05-13', 180, '600 SQ (Land Only)', 0),
(1087, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-06-13', 180, '600 SQ (Land Only)', 0),
(1088, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-07-14', 180, '600 SQ (Land Only)', 0),
(1089, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-08-14', 180, '600 SQ (Land Only)', 0),
(1090, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-09-14', 180, '600 SQ (Land Only)', 0),
(1091, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-10-15', 180, '600 SQ (Land Only)', 0),
(1092, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-11-15', 180, '600 SQ (Land Only)', 0),
(1093, 1517295, '833333', 'Osrogu  Nigeria Limited', '2017-12-16', 180, '600 SQ (Land Only)', 0),
(1094, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-01-16', 180, '600 SQ (Land Only)', 0),
(1095, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-02-16', 180, '600 SQ (Land Only)', 0),
(1096, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-03-19', 180, '600 SQ (Land Only)', 0),
(1097, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-04-19', 180, '600 SQ (Land Only)', 0),
(1098, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-05-20', 180, '600 SQ (Land Only)', 0),
(1099, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-06-20', 180, '600 SQ (Land Only)', 0),
(1100, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-07-21', 180, '600 SQ (Land Only)', 0),
(1101, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-08-21', 180, '600 SQ (Land Only)', 0),
(1102, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-09-21', 180, '600 SQ (Land Only)', 0),
(1103, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-10-22', 180, '600 SQ (Land Only)', 0),
(1104, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-11-22', 180, '600 SQ (Land Only)', 0),
(1105, 1517295, '833333', 'Osrogu  Nigeria Limited', '2018-12-23', 180, '600 SQ (Land Only)', 0),
(1106, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-01-23', 180, '600 SQ (Land Only)', 0),
(1107, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-02-23', 180, '600 SQ (Land Only)', 0),
(1108, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-03-26', 180, '600 SQ (Land Only)', 0),
(1109, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-04-26', 180, '600 SQ (Land Only)', 0),
(1110, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-05-27', 180, '600 SQ (Land Only)', 0),
(1111, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-06-27', 180, '600 SQ (Land Only)', 0),
(1112, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-07-28', 180, '600 SQ (Land Only)', 0),
(1113, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-08-28', 180, '600 SQ (Land Only)', 0),
(1114, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-09-28', 180, '600 SQ (Land Only)', 0),
(1115, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-10-29', 180, '600 SQ (Land Only)', 0),
(1116, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-11-29', 180, '600 SQ (Land Only)', 0),
(1117, 1517295, '833333', 'Osrogu  Nigeria Limited', '2019-12-30', 180, '600 SQ (Land Only)', 0),
(1118, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-01-30', 180, '600 SQ (Land Only)', 0),
(1119, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-03-01', 180, '600 SQ (Land Only)', 0),
(1120, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-04-01', 180, '600 SQ (Land Only)', 0),
(1121, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-05-02', 180, '600 SQ (Land Only)', 0),
(1122, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-06-02', 180, '600 SQ (Land Only)', 0),
(1123, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-07-03', 180, '600 SQ (Land Only)', 0),
(1124, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-08-03', 180, '600 SQ (Land Only)', 0),
(1125, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-09-03', 180, '600 SQ (Land Only)', 0),
(1126, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-10-04', 180, '600 SQ (Land Only)', 0),
(1127, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-11-04', 180, '600 SQ (Land Only)', 0),
(1128, 1517295, '833333', 'Osrogu  Nigeria Limited', '2020-12-05', 180, '600 SQ (Land Only)', 0),
(1129, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-01-05', 180, '600 SQ (Land Only)', 0),
(1130, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-02-05', 180, '600 SQ (Land Only)', 0),
(1131, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-03-08', 180, '600 SQ (Land Only)', 0),
(1132, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-04-08', 180, '600 SQ (Land Only)', 0),
(1133, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-05-09', 180, '600 SQ (Land Only)', 0),
(1134, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-06-09', 180, '600 SQ (Land Only)', 0),
(1135, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-07-10', 180, '600 SQ (Land Only)', 0),
(1136, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-08-10', 180, '600 SQ (Land Only)', 0),
(1137, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-09-10', 180, '600 SQ (Land Only)', 0),
(1138, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-10-11', 180, '600 SQ (Land Only)', 0),
(1139, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-11-11', 180, '600 SQ (Land Only)', 0),
(1140, 1517295, '833333', 'Osrogu  Nigeria Limited', '2021-12-12', 180, '600 SQ (Land Only)', 0),
(1141, 1517295, '833333', 'Osrogu  Nigeria Limited', '2022-01-12', 180, '600 SQ (Land Only)', 0),
(1142, 1517295, '833333', 'Osrogu  Nigeria Limited', '2022-02-12', 180, '600 SQ (Land Only)', 0),
(1143, 3137681, '1500000', 'Omaba Roseline Anita', '2020-11-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1144, 3137681, '1500000', 'Omaba Roseline Anita', '2020-12-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1145, 3137681, '1500000', 'Omaba Roseline Anita', '2021-01-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1146, 3137681, '1500000', 'Omaba Roseline Anita', '2021-02-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1147, 3137681, '1500000', 'Omaba Roseline Anita', '2021-03-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1148, 3137681, '1500000', 'Omaba Roseline Anita', '2021-04-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1149, 3137681, '1500000', 'Omaba Roseline Anita', '2021-05-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1150, 3137681, '1500000', 'Omaba Roseline Anita', '2021-06-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1151, 3137681, '1500000', 'Omaba Roseline Anita', '2021-07-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1152, 3137681, '1500000', 'Omaba Roseline Anita', '2021-08-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1153, 3137681, '1500000', 'Omaba Roseline Anita', '2021-09-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1154, 3137681, '1500000', 'Omaba Roseline Anita', '2021-10-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1155, 3137681, '1500000', 'Omaba Roseline Anita', '2021-11-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1156, 3137681, '1500000', 'Omaba Roseline Anita', '2021-12-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1157, 3137681, '1500000', 'Omaba Roseline Anita', '2022-01-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1158, 3137681, '1500000', 'Omaba Roseline Anita', '2022-02-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1159, 3137681, '1500000', 'Omaba Roseline Anita', '2022-03-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1160, 3137681, '1500000', 'Omaba Roseline Anita', '2022-04-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1161, 3137681, '1500000', 'Omaba Roseline Anita', '2022-05-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1162, 3137681, '1500000', 'Omaba Roseline Anita', '2022-06-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1163, 3137681, '1500000', 'Omaba Roseline Anita', '2022-07-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1164, 3137681, '1500000', 'Omaba Roseline Anita', '2022-08-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1165, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2020-07-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1166, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2020-08-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1167, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2020-09-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1168, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2020-10-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1169, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2020-11-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1170, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2020-12-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1171, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-01-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1172, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-02-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1173, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-03-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1174, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-04-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1175, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-05-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1176, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-07-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1177, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-08-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1178, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-09-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1179, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-10-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1180, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-11-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1181, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2021-12-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1182, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-01-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1183, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-02-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1184, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-03-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1185, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-04-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1186, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-05-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1187, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-06-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1188, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-07-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1189, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-08-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1190, 64804, '833333', 'Nnamani Nehemiah Chijioke', '2022-09-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1191, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2020-11-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1192, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2020-12-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1193, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-01-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1194, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-02-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1195, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-03-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1196, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-04-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1197, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-05-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1198, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-06-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1199, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-07-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1200, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-08-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1201, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-09-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1202, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-10-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1203, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-11-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1204, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2021-12-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1205, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-01-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1206, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-02-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1207, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-03-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1208, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-04-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1209, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-05-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1210, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-06-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1211, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-07-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1212, 2730938, '1916667', 'Onyema Ikenna Okechukwu', '2022-08-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1213, 54368, '1916667', 'Gubo Rukaiya', '2020-11-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1214, 54368, '1916667', 'Gubo Rukaiya', '2020-12-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1215, 54368, '1916667', 'Gubo Rukaiya', '2021-01-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1216, 54368, '1916667', 'Gubo Rukaiya', '2021-02-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1217, 54368, '1916667', 'Gubo Rukaiya', '2021-03-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1218, 54368, '1916667', 'Gubo Rukaiya', '2021-04-09', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1219, 54368, '1916667', 'Gubo Rukaiya', '2021-05-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1220, 54368, '1916667', 'Gubo Rukaiya', '2021-06-10', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1221, 54368, '1916667', 'Gubo Rukaiya', '2021-07-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1222, 54368, '1916667', 'Gubo Rukaiya', '2021-08-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1223, 54368, '1916667', 'Gubo Rukaiya', '2021-09-11', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1224, 54368, '1916667', 'Gubo Rukaiya', '2021-10-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1225, 54368, '1916667', 'Gubo Rukaiya', '2021-11-12', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1226, 54368, '1916667', 'Gubo Rukaiya', '2021-12-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1227, 54368, '1916667', 'Gubo Rukaiya', '2022-01-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1228, 54368, '1916667', 'Gubo Rukaiya', '2022-02-13', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1229, 54368, '1916667', 'Gubo Rukaiya', '2022-03-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1230, 54368, '1916667', 'Gubo Rukaiya', '2022-04-16', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1231, 54368, '1916667', 'Gubo Rukaiya', '2022-05-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1232, 54368, '1916667', 'Gubo Rukaiya', '2022-06-17', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1233, 54368, '1916667', 'Gubo Rukaiya', '2022-07-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1234, 54368, '1916667', 'Gubo Rukaiya', '2022-08-18', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1235, 4122839, '500000', 'Orume Esther Daniel', '2016-08-29', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1236, 4122839, '500000', 'Orume Esther Daniel', '2016-09-29', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1237, 4122839, '500000', 'Orume Esther Daniel', '2016-10-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1238, 4122839, '500000', 'Orume Esther Daniel', '2016-11-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1239, 4122839, '500000', 'Orume Esther Daniel', '2016-12-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1240, 4122839, '500000', 'Orume Esther Daniel', '2017-01-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1241, 4122839, '500000', 'Orume Esther Daniel', '2017-03-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1242, 4122839, '500000', 'Orume Esther Daniel', '2017-04-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1243, 4122839, '500000', 'Orume Esther Daniel', '2017-05-04', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1244, 4122839, '500000', 'Orume Esther Daniel', '2017-06-04', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1245, 4122839, '500000', 'Orume Esther Daniel', '2017-07-05', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1246, 4122839, '500000', 'Orume Esther Daniel', '2017-08-05', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1247, 4122839, '500000', 'Orume Esther Daniel', '2017-09-05', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1248, 4122839, '500000', 'Orume Esther Daniel', '2017-10-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1249, 4122839, '500000', 'Orume Esther Daniel', '2017-11-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1250, 4122839, '500000', 'Orume Esther Daniel', '2017-12-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1251, 4122839, '500000', 'Orume Esther Daniel', '2018-01-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1252, 4122839, '500000', 'Orume Esther Daniel', '2018-02-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1253, 4122839, '500000', 'Orume Esther Daniel', '2018-03-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1254, 4122839, '500000', 'Orume Esther Daniel', '2018-04-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1255, 4122839, '500000', 'Orume Esther Daniel', '2018-05-11', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1256, 4122839, '500000', 'Orume Esther Daniel', '2018-06-11', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1257, 4122839, '500000', 'Orume Esther Daniel', '2018-07-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1258, 4122839, '500000', 'Orume Esther Daniel', '2018-08-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1259, 4122839, '500000', 'Orume Esther Daniel', '2018-09-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1260, 4122839, '500000', 'Orume Esther Daniel', '2018-10-13', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1261, 4122839, '500000', 'Orume Esther Daniel', '2018-11-13', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1262, 4122839, '500000', 'Orume Esther Daniel', '2018-12-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1263, 4122839, '500000', 'Orume Esther Daniel', '2019-01-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1264, 4122839, '500000', 'Orume Esther Daniel', '2019-02-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1265, 4122839, '500000', 'Orume Esther Daniel', '2019-03-17', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1266, 4122839, '500000', 'Orume Esther Daniel', '2019-04-17', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1267, 4122839, '500000', 'Orume Esther Daniel', '2019-05-18', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1268, 4122839, '500000', 'Orume Esther Daniel', '2019-06-18', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1269, 4122839, '500000', 'Orume Esther Daniel', '2019-07-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1270, 4122839, '500000', 'Orume Esther Daniel', '2019-08-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1271, 4122839, '500000', 'Orume Esther Daniel', '2019-09-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1272, 4122839, '500000', 'Orume Esther Daniel', '2019-10-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1273, 4122839, '500000', 'Orume Esther Daniel', '2019-11-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1274, 4122839, '500000', 'Orume Esther Daniel', '2019-12-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1275, 4122839, '500000', 'Orume Esther Daniel', '2020-01-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1276, 4122839, '500000', 'Orume Esther Daniel', '2020-02-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1277, 4122839, '500000', 'Orume Esther Daniel', '2020-03-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1278, 4122839, '500000', 'Orume Esther Daniel', '2020-04-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1279, 4122839, '500000', 'Orume Esther Daniel', '2020-05-24', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1280, 4122839, '500000', 'Orume Esther Daniel', '2020-06-24', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1281, 4122839, '500000', 'Orume Esther Daniel', '2020-07-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1282, 4122839, '500000', 'Orume Esther Daniel', '2020-08-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1283, 4122839, '500000', 'Orume Esther Daniel', '2020-09-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1284, 4122839, '500000', 'Orume Esther Daniel', '2020-10-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1285, 4122839, '500000', 'Orume Esther Daniel', '2020-11-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1286, 4122839, '500000', 'Orume Esther Daniel', '2020-12-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1287, 4122839, '500000', 'Orume Esther Daniel', '2021-01-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1288, 4122839, '500000', 'Orume Esther Daniel', '2021-02-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1289, 4122839, '500000', 'Orume Esther Daniel', '2021-03-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1290, 4122839, '500000', 'Orume Esther Daniel', '2021-04-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1291, 4122839, '500000', 'Orume Esther Daniel', '2021-05-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0);
INSERT INTO `sales_scheldule_model` (`id`, `sale_uuid`, `amount`, `applicant_name`, `date`, `period`, `property_name`, `status`) VALUES
(1292, 4122839, '500000', 'Orume Esther Daniel', '2021-07-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1293, 4122839, '500000', 'Orume Esther Daniel', '2021-08-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1294, 4122839, '500000', 'Orume Esther Daniel', '2021-09-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1295, 4122839, '500000', 'Orume Esther Daniel', '2021-10-02', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1296, 4122839, '500000', 'Orume Esther Daniel', '2021-11-02', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1297, 4122839, '500000', 'Orume Esther Daniel', '2021-12-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1298, 4122839, '500000', 'Orume Esther Daniel', '2022-01-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1299, 4122839, '500000', 'Orume Esther Daniel', '2022-02-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1300, 4122839, '500000', 'Orume Esther Daniel', '2022-03-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1301, 4122839, '500000', 'Orume Esther Daniel', '2022-04-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1302, 4122839, '500000', 'Orume Esther Daniel', '2022-05-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1303, 4122839, '500000', 'Orume Esther Daniel', '2022-06-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1304, 4122839, '500000', 'Orume Esther Daniel', '2022-07-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1305, 4122839, '500000', 'Orume Esther Daniel', '2022-08-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1306, 4122839, '500000', 'Orume Esther Daniel', '2022-09-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1307, 950608, '500000', 'Orume Esther Daniel', '2016-08-29', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1308, 950608, '500000', 'Orume Esther Daniel', '2016-09-29', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1309, 950608, '500000', 'Orume Esther Daniel', '2016-10-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1310, 950608, '500000', 'Orume Esther Daniel', '2016-11-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1311, 950608, '500000', 'Orume Esther Daniel', '2016-12-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1312, 950608, '500000', 'Orume Esther Daniel', '2017-01-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1313, 950608, '500000', 'Orume Esther Daniel', '2017-03-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1314, 950608, '500000', 'Orume Esther Daniel', '2017-04-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1315, 950608, '500000', 'Orume Esther Daniel', '2017-05-04', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1316, 950608, '500000', 'Orume Esther Daniel', '2017-06-04', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1317, 950608, '500000', 'Orume Esther Daniel', '2017-07-05', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1318, 950608, '500000', 'Orume Esther Daniel', '2017-08-05', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1319, 950608, '500000', 'Orume Esther Daniel', '2017-09-05', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1320, 950608, '500000', 'Orume Esther Daniel', '2017-10-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1321, 950608, '500000', 'Orume Esther Daniel', '2017-11-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1322, 950608, '500000', 'Orume Esther Daniel', '2017-12-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1323, 950608, '500000', 'Orume Esther Daniel', '2018-01-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1324, 950608, '500000', 'Orume Esther Daniel', '2018-02-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1325, 950608, '500000', 'Orume Esther Daniel', '2018-03-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1326, 950608, '500000', 'Orume Esther Daniel', '2018-04-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1327, 950608, '500000', 'Orume Esther Daniel', '2018-05-11', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1328, 950608, '500000', 'Orume Esther Daniel', '2018-06-11', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1329, 950608, '500000', 'Orume Esther Daniel', '2018-07-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1330, 950608, '500000', 'Orume Esther Daniel', '2018-08-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1331, 950608, '500000', 'Orume Esther Daniel', '2018-09-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1332, 950608, '500000', 'Orume Esther Daniel', '2018-10-13', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1333, 950608, '500000', 'Orume Esther Daniel', '2018-11-13', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1334, 950608, '500000', 'Orume Esther Daniel', '2018-12-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1335, 950608, '500000', 'Orume Esther Daniel', '2019-01-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1336, 950608, '500000', 'Orume Esther Daniel', '2019-02-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1337, 950608, '500000', 'Orume Esther Daniel', '2019-03-17', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1338, 950608, '500000', 'Orume Esther Daniel', '2019-04-17', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1339, 950608, '500000', 'Orume Esther Daniel', '2019-05-18', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1340, 950608, '500000', 'Orume Esther Daniel', '2019-06-18', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1341, 950608, '500000', 'Orume Esther Daniel', '2019-07-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1342, 950608, '500000', 'Orume Esther Daniel', '2019-08-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1343, 950608, '500000', 'Orume Esther Daniel', '2019-09-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1344, 950608, '500000', 'Orume Esther Daniel', '2019-10-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1345, 950608, '500000', 'Orume Esther Daniel', '2019-11-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1346, 950608, '500000', 'Orume Esther Daniel', '2019-12-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1347, 950608, '500000', 'Orume Esther Daniel', '2020-01-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1348, 950608, '500000', 'Orume Esther Daniel', '2020-02-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1349, 950608, '500000', 'Orume Esther Daniel', '2020-03-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1350, 950608, '500000', 'Orume Esther Daniel', '2020-04-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1351, 950608, '500000', 'Orume Esther Daniel', '2020-05-24', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1352, 950608, '500000', 'Orume Esther Daniel', '2020-06-24', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1353, 950608, '500000', 'Orume Esther Daniel', '2020-07-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1354, 950608, '500000', 'Orume Esther Daniel', '2020-08-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1355, 950608, '500000', 'Orume Esther Daniel', '2020-09-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1356, 950608, '500000', 'Orume Esther Daniel', '2020-10-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1357, 950608, '500000', 'Orume Esther Daniel', '2020-11-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1358, 950608, '500000', 'Orume Esther Daniel', '2020-12-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1359, 950608, '500000', 'Orume Esther Daniel', '2021-01-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1360, 950608, '500000', 'Orume Esther Daniel', '2021-02-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1361, 950608, '500000', 'Orume Esther Daniel', '2021-03-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1362, 950608, '500000', 'Orume Esther Daniel', '2021-04-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1363, 950608, '500000', 'Orume Esther Daniel', '2021-05-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1364, 950608, '500000', 'Orume Esther Daniel', '2021-07-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1365, 950608, '500000', 'Orume Esther Daniel', '2021-08-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1366, 950608, '500000', 'Orume Esther Daniel', '2021-09-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1367, 950608, '500000', 'Orume Esther Daniel', '2021-10-02', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1368, 950608, '500000', 'Orume Esther Daniel', '2021-11-02', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1369, 950608, '500000', 'Orume Esther Daniel', '2021-12-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1370, 950608, '500000', 'Orume Esther Daniel', '2022-01-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1371, 950608, '500000', 'Orume Esther Daniel', '2022-02-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1372, 950608, '500000', 'Orume Esther Daniel', '2022-03-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1373, 950608, '500000', 'Orume Esther Daniel', '2022-04-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1374, 950608, '500000', 'Orume Esther Daniel', '2022-05-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1375, 950608, '500000', 'Orume Esther Daniel', '2022-06-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1376, 950608, '500000', 'Orume Esther Daniel', '2022-07-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1377, 950608, '500000', 'Orume Esther Daniel', '2022-08-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1378, 950608, '500000', 'Orume Esther Daniel', '2022-09-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1379, 5151902, '1916667', 'Ezire Onoriode', '2021-02-04', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1380, 5151902, '1916667', 'Ezire Onoriode', '2021-03-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1381, 5151902, '1916667', 'Ezire Onoriode', '2021-04-07', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1382, 5151902, '1916667', 'Ezire Onoriode', '2021-05-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1383, 5151902, '1916667', 'Ezire Onoriode', '2021-06-08', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1384, 5151902, '1916667', 'Ezire Onoriode', '2021-07-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1385, 5151902, '1916667', 'Ezire Onoriode', '2021-08-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1386, 5151902, '1916667', 'Ezire Onoriode', '2021-09-09', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1387, 5151902, '1916667', 'Ezire Onoriode', '2021-10-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1388, 5151902, '1916667', 'Ezire Onoriode', '2021-11-10', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1389, 5151902, '1916667', 'Ezire Onoriode', '2021-12-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1390, 5151902, '1916667', 'Ezire Onoriode', '2022-01-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1391, 5151902, '1916667', 'Ezire Onoriode', '2022-02-11', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1392, 5151902, '1916667', 'Ezire Onoriode', '2022-03-14', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1393, 5151902, '1916667', 'Ezire Onoriode', '2022-04-14', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1394, 5151902, '1916667', 'Ezire Onoriode', '2022-05-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1395, 5151902, '1916667', 'Ezire Onoriode', '2022-06-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1396, 5151902, '1916667', 'Ezire Onoriode', '2022-07-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1397, 5151902, '1916667', 'Ezire Onoriode', '2022-08-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1398, 2057420, '3250000', 'AwaK Iniobong', '2017-02-03', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1399, 2057420, '3250000', 'AwaK Iniobong', '2017-03-06', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1400, 2057420, '3250000', 'AwaK Iniobong', '2017-04-06', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1401, 2057420, '3250000', 'AwaK Iniobong', '2017-05-07', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1402, 2057420, '3250000', 'AwaK Iniobong', '2017-06-07', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1403, 2057420, '3250000', 'AwaK Iniobong', '2017-07-08', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1404, 2057420, '3250000', 'AwaK Iniobong', '2017-08-08', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1405, 2057420, '3250000', 'AwaK Iniobong', '2017-09-08', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1406, 2057420, '3250000', 'AwaK Iniobong', '2017-10-09', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1407, 2057420, '3250000', 'AwaK Iniobong', '2017-11-09', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1408, 2057420, '3250000', 'AwaK Iniobong', '2017-12-10', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1409, 2057420, '3250000', 'AwaK Iniobong', '2018-01-10', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1410, 2057420, '3250000', 'AwaK Iniobong', '2018-02-10', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1411, 2057420, '3250000', 'AwaK Iniobong', '2018-03-13', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1412, 2057420, '3250000', 'AwaK Iniobong', '2018-04-13', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1413, 2057420, '3250000', 'AwaK Iniobong', '2018-05-14', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1414, 2057420, '3250000', 'AwaK Iniobong', '2018-06-14', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1415, 2057420, '3250000', 'AwaK Iniobong', '2018-07-15', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1416, 2057420, '3250000', 'AwaK Iniobong', '2018-08-15', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1417, 2057420, '3250000', 'AwaK Iniobong', '2018-09-15', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1418, 2057420, '3250000', 'AwaK Iniobong', '2018-10-16', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1419, 2057420, '3250000', 'AwaK Iniobong', '2018-11-16', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1420, 2057420, '3250000', 'AwaK Iniobong', '2018-12-17', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1421, 2057420, '3250000', 'AwaK Iniobong', '2019-01-17', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1422, 2057420, '3250000', 'AwaK Iniobong', '2019-02-17', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1423, 2057420, '3250000', 'AwaK Iniobong', '2019-03-20', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1424, 2057420, '3250000', 'AwaK Iniobong', '2019-04-20', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1425, 2057420, '3250000', 'AwaK Iniobong', '2019-05-21', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1426, 2057420, '3250000', 'AwaK Iniobong', '2019-06-21', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1427, 2057420, '3250000', 'AwaK Iniobong', '2019-07-22', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1428, 2057420, '3250000', 'AwaK Iniobong', '2019-08-22', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1429, 2057420, '3250000', 'AwaK Iniobong', '2019-09-22', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1430, 2057420, '3250000', 'AwaK Iniobong', '2019-10-23', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1431, 2057420, '3250000', 'AwaK Iniobong', '2019-11-23', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1432, 2057420, '3250000', 'AwaK Iniobong', '2019-12-24', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1433, 2057420, '3250000', 'AwaK Iniobong', '2020-01-24', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1434, 2057420, '3250000', 'AwaK Iniobong', '2020-02-24', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1435, 2057420, '3250000', 'AwaK Iniobong', '2020-03-26', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1436, 2057420, '3250000', 'AwaK Iniobong', '2020-04-26', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1437, 2057420, '3250000', 'AwaK Iniobong', '2020-05-27', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1438, 2057420, '3250000', 'AwaK Iniobong', '2020-06-27', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1439, 2057420, '3250000', 'AwaK Iniobong', '2020-07-28', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1440, 2057420, '3250000', 'AwaK Iniobong', '2020-08-28', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1441, 2057420, '3250000', 'AwaK Iniobong', '2020-09-28', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1442, 2057420, '3250000', 'AwaK Iniobong', '2020-10-29', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1443, 2057420, '3250000', 'AwaK Iniobong', '2020-11-29', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1444, 2057420, '3250000', 'AwaK Iniobong', '2020-12-30', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1445, 2057420, '3250000', 'AwaK Iniobong', '2021-01-30', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1446, 2057420, '3250000', 'AwaK Iniobong', '2021-03-02', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1447, 2057420, '3250000', 'AwaK Iniobong', '2021-04-02', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1448, 2057420, '3250000', 'AwaK Iniobong', '2021-05-03', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1449, 2057420, '3250000', 'AwaK Iniobong', '2021-06-03', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1450, 2057420, '3250000', 'AwaK Iniobong', '2021-07-04', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1451, 2057420, '3250000', 'AwaK Iniobong', '2021-08-04', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1452, 2057420, '3250000', 'AwaK Iniobong', '2021-09-04', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1453, 2057420, '3250000', 'AwaK Iniobong', '2021-10-05', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1454, 2057420, '3250000', 'AwaK Iniobong', '2021-11-05', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1455, 2057420, '3250000', 'AwaK Iniobong', '2021-12-06', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1456, 2057420, '3250000', 'AwaK Iniobong', '2022-01-06', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1457, 2057420, '3250000', 'AwaK Iniobong', '2022-02-06', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1458, 2057420, '3250000', 'AwaK Iniobong', '2022-03-09', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1459, 2057420, '3250000', 'AwaK Iniobong', '2022-04-09', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1460, 2057420, '3250000', 'AwaK Iniobong', '2022-05-10', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1461, 2057420, '3250000', 'AwaK Iniobong', '2022-06-10', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1462, 2057420, '3250000', 'AwaK Iniobong', '2022-07-11', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1463, 2057420, '3250000', 'AwaK Iniobong', '2022-08-11', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1464, 2057420, '3250000', 'AwaK Iniobong', '2022-09-11', 360, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0),
(1465, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2020-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1466, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2020-09-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1467, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2020-10-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1468, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2020-11-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1469, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2020-12-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1470, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-01-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1471, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-02-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1472, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-03-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1473, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-04-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1474, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-05-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1475, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-06-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1476, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-07-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1477, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-08-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1478, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-09-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1479, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-10-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1480, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-11-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1481, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2021-12-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1482, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-01-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1483, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-02-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1484, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-03-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1485, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-04-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1486, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-05-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1487, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-06-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1488, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-07-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1489, 5735626, '1416667', 'Uzoigwe Obioma Helen', '2022-08-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1490, 3858900, '3750000', 'Dakoru Asekutu', '2017-11-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1491, 3858900, '3750000', 'Dakoru Asekutu', '2017-12-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1492, 3858900, '3750000', 'Dakoru Asekutu', '2018-01-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1493, 3858900, '3750000', 'Dakoru Asekutu', '2018-02-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1494, 3858900, '3750000', 'Dakoru Asekutu', '2018-03-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1495, 3858900, '3750000', 'Dakoru Asekutu', '2018-05-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1496, 3858900, '3750000', 'Dakoru Asekutu', '2018-06-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1497, 3858900, '3750000', 'Dakoru Asekutu', '2018-07-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1498, 3858900, '3750000', 'Dakoru Asekutu', '2018-08-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1499, 3858900, '3750000', 'Dakoru Asekutu', '2018-09-02', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1500, 3858900, '3750000', 'Dakoru Asekutu', '2018-10-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1501, 3858900, '3750000', 'Dakoru Asekutu', '2018-11-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1502, 3858900, '3750000', 'Dakoru Asekutu', '2018-12-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1503, 3858900, '3750000', 'Dakoru Asekutu', '2019-01-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1504, 3858900, '3750000', 'Dakoru Asekutu', '2019-02-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1505, 3858900, '3750000', 'Dakoru Asekutu', '2019-03-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1506, 3858900, '3750000', 'Dakoru Asekutu', '2019-04-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1507, 3858900, '3750000', 'Dakoru Asekutu', '2019-05-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1508, 3858900, '3750000', 'Dakoru Asekutu', '2019-06-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1509, 3858900, '3750000', 'Dakoru Asekutu', '2019-07-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1510, 3858900, '3750000', 'Dakoru Asekutu', '2019-08-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1511, 3858900, '3750000', 'Dakoru Asekutu', '2019-09-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1512, 3858900, '3750000', 'Dakoru Asekutu', '2019-10-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1513, 3858900, '3750000', 'Dakoru Asekutu', '2019-11-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1514, 3858900, '3750000', 'Dakoru Asekutu', '2019-12-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1515, 3858900, '3750000', 'Dakoru Asekutu', '2020-01-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1516, 3858900, '3750000', 'Dakoru Asekutu', '2020-02-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1517, 3858900, '3750000', 'Dakoru Asekutu', '2020-03-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1518, 3858900, '3750000', 'Dakoru Asekutu', '2020-04-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1519, 3858900, '3750000', 'Dakoru Asekutu', '2020-05-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1520, 3858900, '3750000', 'Dakoru Asekutu', '2020-06-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1521, 3858900, '3750000', 'Dakoru Asekutu', '2020-07-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1522, 3858900, '3750000', 'Dakoru Asekutu', '2020-08-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1523, 3858900, '3750000', 'Dakoru Asekutu', '2020-09-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1524, 3858900, '3750000', 'Dakoru Asekutu', '2020-10-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1525, 3858900, '3750000', 'Dakoru Asekutu', '2020-11-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1526, 3858900, '3750000', 'Dakoru Asekutu', '2020-12-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1527, 3858900, '3750000', 'Dakoru Asekutu', '2021-01-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1528, 3858900, '3750000', 'Dakoru Asekutu', '2021-02-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1529, 3858900, '3750000', 'Dakoru Asekutu', '2021-03-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1530, 3858900, '3750000', 'Dakoru Asekutu', '2021-04-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1531, 3858900, '3750000', 'Dakoru Asekutu', '2021-05-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1532, 3858900, '3750000', 'Dakoru Asekutu', '2021-06-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1533, 3858900, '3750000', 'Dakoru Asekutu', '2021-07-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1534, 3858900, '3750000', 'Dakoru Asekutu', '2021-08-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1535, 3858900, '3750000', 'Dakoru Asekutu', '2021-09-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1536, 3858900, '3750000', 'Dakoru Asekutu', '2021-10-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1537, 3858900, '3750000', 'Dakoru Asekutu', '2021-11-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1538, 3858900, '3750000', 'Dakoru Asekutu', '2021-12-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1539, 3858900, '3750000', 'Dakoru Asekutu', '2022-01-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1540, 3858900, '3750000', 'Dakoru Asekutu', '2022-02-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1541, 3858900, '3750000', 'Dakoru Asekutu', '2022-03-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1542, 3858900, '3750000', 'Dakoru Asekutu', '2022-04-27', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1543, 3858900, '3750000', 'Dakoru Asekutu', '2022-05-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1544, 3858900, '3750000', 'Dakoru Asekutu', '2022-06-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1545, 3858900, '3750000', 'Dakoru Asekutu', '2022-07-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1546, 3858900, '3750000', 'Dakoru Asekutu', '2022-08-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1547, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2021-08-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1548, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2021-09-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1549, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2021-10-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1550, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2021-11-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1551, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2021-12-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1552, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-01-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1553, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-02-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1554, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-03-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1555, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-04-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1556, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-05-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1557, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-06-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1558, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-07-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1559, 1530800, '1916667', 'Onuzulike Ugochukwu Babatunde', '2022-08-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1560, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-06-19', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1561, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-07-20', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1562, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-08-20', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1563, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-09-20', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1564, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-10-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1565, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-11-21', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1566, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2021-12-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1567, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-01-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1568, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-02-22', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1569, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-03-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1570, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-04-25', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1571, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-05-26', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1572, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-06-26', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1573, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-07-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1574, 1453852, '1833333', 'Chukwuma Celestine Obiajulu', '2022-08-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1575, 4536269, '1916667', 'Oketta Jude Onesi', '2021-05-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1576, 4536269, '1916667', 'Oketta Jude Onesi', '2021-06-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1577, 4536269, '1916667', 'Oketta Jude Onesi', '2021-07-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1578, 4536269, '1916667', 'Oketta Jude Onesi', '2021-08-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1579, 4536269, '1916667', 'Oketta Jude Onesi', '2021-10-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1580, 4536269, '1916667', 'Oketta Jude Onesi', '2021-11-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1581, 4536269, '1916667', 'Oketta Jude Onesi', '2021-12-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1582, 4536269, '1916667', 'Oketta Jude Onesi', '2022-01-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1583, 4536269, '1916667', 'Oketta Jude Onesi', '2022-02-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1584, 4536269, '1916667', 'Oketta Jude Onesi', '2022-03-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1585, 4536269, '1916667', 'Oketta Jude Onesi', '2022-04-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1586, 4536269, '1916667', 'Oketta Jude Onesi', '2022-05-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1587, 4536269, '1916667', 'Oketta Jude Onesi', '2022-06-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1588, 4536269, '1916667', 'Oketta Jude Onesi', '2022-07-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1589, 4536269, '1916667', 'Oketta Jude Onesi', '2022-08-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1590, 4536269, '1916667', 'Oketta Jude Onesi', '2022-09-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1591, 45981, '1666667', 'Ishidi Masini Pur', '2021-03-28', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1592, 45981, '1666667', 'Ishidi Masini Pur', '2021-04-28', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1593, 45981, '1666667', 'Ishidi Masini Pur', '2021-05-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1594, 45981, '1666667', 'Ishidi Masini Pur', '2021-06-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1595, 45981, '1666667', 'Ishidi Masini Pur', '2021-07-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1596, 45981, '1666667', 'Ishidi Masini Pur', '2021-08-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1597, 45981, '1666667', 'Ishidi Masini Pur', '2021-09-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1598, 45981, '1666667', 'Ishidi Masini Pur', '2021-10-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1599, 45981, '1666667', 'Ishidi Masini Pur', '2021-12-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1600, 45981, '1666667', 'Ishidi Masini Pur', '2022-01-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1601, 45981, '1666667', 'Ishidi Masini Pur', '2022-02-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1602, 45981, '1666667', 'Ishidi Masini Pur', '2022-03-04', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1603, 45981, '1666667', 'Ishidi Masini Pur', '2022-04-04', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1604, 45981, '1666667', 'Ishidi Masini Pur', '2022-05-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1605, 45981, '1666667', 'Ishidi Masini Pur', '2022-06-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1606, 45981, '1666667', 'Ishidi Masini Pur', '2022-07-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1607, 45981, '1666667', 'Ishidi Masini Pur', '2022-08-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1608, 45981, '1666667', 'Ishidi Masini Pur', '2022-09-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1609, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2020-12-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1610, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-01-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1611, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-02-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1612, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-03-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1613, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-04-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1614, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-05-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1615, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-07-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1616, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-08-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1617, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-09-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1618, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-10-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1619, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1620, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2021-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1621, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1622, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1623, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1624, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1625, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1626, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1627, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1628, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1629, 4219605, '1916667', 'Abubakar Suleiman Takoma', '2022-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1630, 2821817, '1916667', 'Ramatu Bage Takuma', '2020-12-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1631, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-01-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1632, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-02-27', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1633, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-03-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1634, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-04-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1635, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-05-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1636, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-07-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1637, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-08-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1638, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-09-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1639, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-10-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1640, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-11-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1641, 2821817, '1916667', 'Ramatu Bage Takuma', '2021-12-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1642, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-01-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1643, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-02-03', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1644, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-03-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1645, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-04-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1646, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-05-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1647, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-06-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1648, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-07-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1649, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-08-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1650, 2821817, '1916667', 'Ramatu Bage Takuma', '2022-09-08', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1651, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-01-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1652, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-02-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1653, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-03-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1654, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-04-18', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1655, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-05-19', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1656, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-06-19', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1657, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-07-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1658, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-08-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1659, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-09-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1660, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-10-21', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1661, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-11-21', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1662, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2021-12-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1663, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-01-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1664, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-02-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1665, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-03-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1666, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-04-25', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1667, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-05-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1668, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-06-26', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1669, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-07-27', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1670, 1437755, '1416667', 'Emmanuel Okechukwu Ede', '2022-08-27', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1671, 1149990, '3750000', 'Mrs Ifeoma Michael', '2018-12-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1672, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-01-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1673, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-02-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1674, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-03-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1675, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-04-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1676, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-05-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1677, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-06-23', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1678, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-07-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1679, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-08-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1680, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-09-24', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1681, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-10-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1682, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-11-25', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1683, 1149990, '3750000', 'Mrs Ifeoma Michael', '2019-12-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1684, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-01-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1685, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-02-26', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1686, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-03-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1687, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-04-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1688, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-05-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1689, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-06-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1690, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-07-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1691, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-08-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1692, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-09-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1693, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-10-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1694, 1149990, '3750000', 'Mrs Ifeoma Michael', '2020-12-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1695, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-01-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1696, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-02-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1697, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-03-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1698, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-04-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1699, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-05-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1700, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-06-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1701, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-07-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1702, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-08-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1703, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-09-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1704, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-10-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1705, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-11-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1706, 1149990, '3750000', 'Mrs Ifeoma Michael', '2021-12-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1707, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-01-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1708, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-02-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1709, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-03-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1710, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-04-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1711, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-05-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1712, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-06-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1713, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-07-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1714, 1149990, '3750000', 'Mrs Ifeoma Michael', '2022-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1715, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2021-08-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1716, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2021-09-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1717, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2021-10-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1718, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2021-11-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1719, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2021-12-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1720, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-01-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1721, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-02-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1722, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-03-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1723, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-04-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1724, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-05-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1725, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-06-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1726, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-07-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1727, 131679, '1666667', 'Mbanekwe Anthony Oluchukwu', '2022-08-19', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1728, 842460, '2500000', 'Igboanugo Chizoba', '2021-07-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1729, 842460, '2500000', 'Igboanugo Chizoba', '2021-08-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1730, 842460, '2500000', 'Igboanugo Chizoba', '2021-09-15', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1731, 842460, '2500000', 'Igboanugo Chizoba', '2021-10-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0);
INSERT INTO `sales_scheldule_model` (`id`, `sale_uuid`, `amount`, `applicant_name`, `date`, `period`, `property_name`, `status`) VALUES
(1732, 842460, '2500000', 'Igboanugo Chizoba', '2021-11-16', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1733, 842460, '2500000', 'Igboanugo Chizoba', '2021-12-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1734, 842460, '2500000', 'Igboanugo Chizoba', '2022-01-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1735, 842460, '2500000', 'Igboanugo Chizoba', '2022-02-17', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1736, 842460, '2500000', 'Igboanugo Chizoba', '2022-03-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1737, 842460, '2500000', 'Igboanugo Chizoba', '2022-04-20', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1738, 842460, '2500000', 'Igboanugo Chizoba', '2022-05-21', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1739, 842460, '2500000', 'Igboanugo Chizoba', '2022-06-21', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1740, 842460, '2500000', 'Igboanugo Chizoba', '2022-07-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1741, 842460, '2500000', 'Igboanugo Chizoba', '2022-08-22', 360, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0),
(1742, 525767, '1416667', 'Modestus Mbaneri', '2020-08-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1743, 525767, '1416667', 'Modestus Mbaneri', '2020-09-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1744, 525767, '1416667', 'Modestus Mbaneri', '2020-10-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1745, 525767, '1416667', 'Modestus Mbaneri', '2020-11-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1746, 525767, '1416667', 'Modestus Mbaneri', '2020-12-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1747, 525767, '1416667', 'Modestus Mbaneri', '2021-01-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1748, 525767, '1416667', 'Modestus Mbaneri', '2021-02-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1749, 525767, '1416667', 'Modestus Mbaneri', '2021-03-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1750, 525767, '1416667', 'Modestus Mbaneri', '2021-04-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1751, 525767, '1416667', 'Modestus Mbaneri', '2021-05-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1752, 525767, '1416667', 'Modestus Mbaneri', '2021-06-14', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1753, 525767, '1416667', 'Modestus Mbaneri', '2021-07-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1754, 525767, '1416667', 'Modestus Mbaneri', '2021-08-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1755, 525767, '1416667', 'Modestus Mbaneri', '2021-09-15', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1756, 525767, '1416667', 'Modestus Mbaneri', '2021-10-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1757, 525767, '1416667', 'Modestus Mbaneri', '2021-11-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1758, 525767, '1416667', 'Modestus Mbaneri', '2021-12-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1759, 525767, '1416667', 'Modestus Mbaneri', '2022-01-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1760, 525767, '1416667', 'Modestus Mbaneri', '2022-02-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1761, 525767, '1416667', 'Modestus Mbaneri', '2022-03-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1762, 525767, '1416667', 'Modestus Mbaneri', '2022-04-20', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1763, 525767, '1416667', 'Modestus Mbaneri', '2022-05-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1764, 525767, '1416667', 'Modestus Mbaneri', '2022-06-21', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1765, 525767, '1416667', 'Modestus Mbaneri', '2022-07-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1766, 525767, '1416667', 'Modestus Mbaneri', '2022-08-22', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1767, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2020-07-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1768, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2020-08-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1769, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2020-09-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1770, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2020-10-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1771, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2020-12-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1772, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-01-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1773, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-02-01', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1774, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-03-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1775, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-04-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1776, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-05-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1777, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-06-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1778, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-07-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1779, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-08-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1780, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-09-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1781, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-10-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1782, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-11-07', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1783, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2021-12-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1784, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-01-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1785, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-02-08', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1786, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-03-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1787, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-04-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1788, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-05-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1789, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-06-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1790, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-07-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1791, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-08-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1792, 55549, '1083333', 'Ukachukwu Chidiebere Emmanuel', '2022-09-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1793, 1615370, '1416667', 'Hussein A. Tijjani', '2020-11-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1794, 1615370, '1416667', 'Hussein A. Tijjani', '2020-12-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1795, 1615370, '1416667', 'Hussein A. Tijjani', '2021-01-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1796, 1615370, '1416667', 'Hussein A. Tijjani', '2021-02-06', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1797, 1615370, '1416667', 'Hussein A. Tijjani', '2021-03-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1798, 1615370, '1416667', 'Hussein A. Tijjani', '2021-04-09', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1799, 1615370, '1416667', 'Hussein A. Tijjani', '2021-05-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1800, 1615370, '1416667', 'Hussein A. Tijjani', '2021-06-10', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1801, 1615370, '1416667', 'Hussein A. Tijjani', '2021-07-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1802, 1615370, '1416667', 'Hussein A. Tijjani', '2021-08-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1803, 1615370, '1416667', 'Hussein A. Tijjani', '2021-09-11', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1804, 1615370, '1416667', 'Hussein A. Tijjani', '2021-10-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1805, 1615370, '1416667', 'Hussein A. Tijjani', '2021-11-12', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1806, 1615370, '1416667', 'Hussein A. Tijjani', '2021-12-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1807, 1615370, '1416667', 'Hussein A. Tijjani', '2022-01-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1808, 1615370, '1416667', 'Hussein A. Tijjani', '2022-02-13', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1809, 1615370, '1416667', 'Hussein A. Tijjani', '2022-03-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1810, 1615370, '1416667', 'Hussein A. Tijjani', '2022-04-16', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1811, 1615370, '1416667', 'Hussein A. Tijjani', '2022-05-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1812, 1615370, '1416667', 'Hussein A. Tijjani', '2022-06-17', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1813, 1615370, '1416667', 'Hussein A. Tijjani', '2022-07-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1814, 1615370, '1416667', 'Hussein A. Tijjani', '2022-08-18', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1815, 1332687, '916667', 'Barrister Navati Iliya', '2017-01-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1816, 1332687, '916667', 'Barrister Navati Iliya', '2017-02-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1817, 1332687, '916667', 'Barrister Navati Iliya', '2017-03-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1818, 1332687, '916667', 'Barrister Navati Iliya', '2017-04-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1819, 1332687, '916667', 'Barrister Navati Iliya', '2017-05-24', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1820, 1332687, '916667', 'Barrister Navati Iliya', '2017-06-24', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1821, 1332687, '916667', 'Barrister Navati Iliya', '2017-07-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1822, 1332687, '916667', 'Barrister Navati Iliya', '2017-08-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1823, 1332687, '916667', 'Barrister Navati Iliya', '2017-09-25', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1824, 1332687, '916667', 'Barrister Navati Iliya', '2017-10-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1825, 1332687, '916667', 'Barrister Navati Iliya', '2017-11-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1826, 1332687, '916667', 'Barrister Navati Iliya', '2017-12-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1827, 1332687, '916667', 'Barrister Navati Iliya', '2018-01-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1828, 1332687, '916667', 'Barrister Navati Iliya', '2018-02-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1829, 1332687, '916667', 'Barrister Navati Iliya', '2018-03-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1830, 1332687, '916667', 'Barrister Navati Iliya', '2018-04-30', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1831, 1332687, '916667', 'Barrister Navati Iliya', '2018-05-31', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1832, 1332687, '916667', 'Barrister Navati Iliya', '2018-07-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1833, 1332687, '916667', 'Barrister Navati Iliya', '2018-08-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1834, 1332687, '916667', 'Barrister Navati Iliya', '2018-09-01', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1835, 1332687, '916667', 'Barrister Navati Iliya', '2018-10-02', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1836, 1332687, '916667', 'Barrister Navati Iliya', '2018-11-02', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1837, 1332687, '916667', 'Barrister Navati Iliya', '2018-12-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1838, 1332687, '916667', 'Barrister Navati Iliya', '2019-01-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1839, 1332687, '916667', 'Barrister Navati Iliya', '2019-02-03', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1840, 1332687, '916667', 'Barrister Navati Iliya', '2019-03-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1841, 1332687, '916667', 'Barrister Navati Iliya', '2019-04-06', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1842, 1332687, '916667', 'Barrister Navati Iliya', '2019-05-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1843, 1332687, '916667', 'Barrister Navati Iliya', '2019-06-07', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1844, 1332687, '916667', 'Barrister Navati Iliya', '2019-07-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1845, 1332687, '916667', 'Barrister Navati Iliya', '2019-08-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1846, 1332687, '916667', 'Barrister Navati Iliya', '2019-09-08', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1847, 1332687, '916667', 'Barrister Navati Iliya', '2019-10-09', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1848, 1332687, '916667', 'Barrister Navati Iliya', '2019-11-09', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1849, 1332687, '916667', 'Barrister Navati Iliya', '2019-12-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1850, 1332687, '916667', 'Barrister Navati Iliya', '2020-01-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1851, 1332687, '916667', 'Barrister Navati Iliya', '2020-02-10', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1852, 1332687, '916667', 'Barrister Navati Iliya', '2020-03-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1853, 1332687, '916667', 'Barrister Navati Iliya', '2020-04-12', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1854, 1332687, '916667', 'Barrister Navati Iliya', '2020-05-13', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1855, 1332687, '916667', 'Barrister Navati Iliya', '2020-06-13', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1856, 1332687, '916667', 'Barrister Navati Iliya', '2020-07-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1857, 1332687, '916667', 'Barrister Navati Iliya', '2020-08-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1858, 1332687, '916667', 'Barrister Navati Iliya', '2020-09-14', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1859, 1332687, '916667', 'Barrister Navati Iliya', '2020-10-15', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1860, 1332687, '916667', 'Barrister Navati Iliya', '2020-11-15', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1861, 1332687, '916667', 'Barrister Navati Iliya', '2020-12-16', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1862, 1332687, '916667', 'Barrister Navati Iliya', '2021-01-16', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1863, 1332687, '916667', 'Barrister Navati Iliya', '2021-02-16', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1864, 1332687, '916667', 'Barrister Navati Iliya', '2021-03-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1865, 1332687, '916667', 'Barrister Navati Iliya', '2021-04-19', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1866, 1332687, '916667', 'Barrister Navati Iliya', '2021-05-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1867, 1332687, '916667', 'Barrister Navati Iliya', '2021-06-20', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1868, 1332687, '916667', 'Barrister Navati Iliya', '2021-07-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1869, 1332687, '916667', 'Barrister Navati Iliya', '2021-08-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1870, 1332687, '916667', 'Barrister Navati Iliya', '2021-09-21', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1871, 1332687, '916667', 'Barrister Navati Iliya', '2021-10-22', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1872, 1332687, '916667', 'Barrister Navati Iliya', '2021-11-22', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1873, 1332687, '916667', 'Barrister Navati Iliya', '2021-12-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1874, 1332687, '916667', 'Barrister Navati Iliya', '2022-01-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1875, 1332687, '916667', 'Barrister Navati Iliya', '2022-02-23', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1876, 1332687, '916667', 'Barrister Navati Iliya', '2022-03-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1877, 1332687, '916667', 'Barrister Navati Iliya', '2022-04-26', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1878, 1332687, '916667', 'Barrister Navati Iliya', '2022-05-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1879, 1332687, '916667', 'Barrister Navati Iliya', '2022-06-27', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1880, 1332687, '916667', 'Barrister Navati Iliya', '2022-07-28', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1881, 1332687, '916667', 'Barrister Navati Iliya', '2022-08-28', 360, '550 SQ M (3 Bedroom Bungalow) Carcass', 0),
(1882, 5742860, '1916667', 'West Sobomabo Wariye', '2021-04-29', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1883, 5742860, '1916667', 'West Sobomabo Wariye', '2021-05-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1884, 5742860, '1916667', 'West Sobomabo Wariye', '2021-06-30', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1885, 5742860, '1916667', 'West Sobomabo Wariye', '2021-07-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1886, 5742860, '1916667', 'West Sobomabo Wariye', '2021-08-31', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1887, 5742860, '1916667', 'West Sobomabo Wariye', '2021-10-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1888, 5742860, '1916667', 'West Sobomabo Wariye', '2021-11-01', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1889, 5742860, '1916667', 'West Sobomabo Wariye', '2021-12-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1890, 5742860, '1916667', 'West Sobomabo Wariye', '2022-01-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1891, 5742860, '1916667', 'West Sobomabo Wariye', '2022-02-02', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1892, 5742860, '1916667', 'West Sobomabo Wariye', '2022-03-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1893, 5742860, '1916667', 'West Sobomabo Wariye', '2022-04-05', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1894, 5742860, '1916667', 'West Sobomabo Wariye', '2022-05-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1895, 5742860, '1916667', 'West Sobomabo Wariye', '2022-06-06', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1896, 5742860, '1916667', 'West Sobomabo Wariye', '2022-07-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1897, 5742860, '1916667', 'West Sobomabo Wariye', '2022-08-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1898, 5742860, '1916667', 'West Sobomabo Wariye', '2022-09-07', 360, '1000 SQ M (4 Bedroom Terrace Duplex)', 0),
(1899, 446542, '416667', 'Osrogu  Nigeria Limited', '2015-11-05', 360, '600 SQ (Land Only)', 0),
(1900, 446542, '416667', 'Osrogu  Nigeria Limited', '2015-12-06', 360, '600 SQ (Land Only)', 0),
(1901, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-01-06', 360, '600 SQ (Land Only)', 0),
(1902, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-02-06', 360, '600 SQ (Land Only)', 0),
(1903, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-03-08', 360, '600 SQ (Land Only)', 0),
(1904, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-04-08', 360, '600 SQ (Land Only)', 0),
(1905, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-05-09', 360, '600 SQ (Land Only)', 0),
(1906, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-06-09', 360, '600 SQ (Land Only)', 0),
(1907, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-07-10', 360, '600 SQ (Land Only)', 0),
(1908, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-08-10', 360, '600 SQ (Land Only)', 0),
(1909, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-09-10', 360, '600 SQ (Land Only)', 0),
(1910, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-10-11', 360, '600 SQ (Land Only)', 0),
(1911, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-11-11', 360, '600 SQ (Land Only)', 0),
(1912, 446542, '416667', 'Osrogu  Nigeria Limited', '2016-12-12', 360, '600 SQ (Land Only)', 0),
(1913, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-01-12', 360, '600 SQ (Land Only)', 0),
(1914, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-02-12', 360, '600 SQ (Land Only)', 0),
(1915, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-03-15', 360, '600 SQ (Land Only)', 0),
(1916, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-04-15', 360, '600 SQ (Land Only)', 0),
(1917, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-05-16', 360, '600 SQ (Land Only)', 0),
(1918, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-06-16', 360, '600 SQ (Land Only)', 0),
(1919, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-07-17', 360, '600 SQ (Land Only)', 0),
(1920, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-08-17', 360, '600 SQ (Land Only)', 0),
(1921, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-09-17', 360, '600 SQ (Land Only)', 0),
(1922, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-10-18', 360, '600 SQ (Land Only)', 0),
(1923, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-11-18', 360, '600 SQ (Land Only)', 0),
(1924, 446542, '416667', 'Osrogu  Nigeria Limited', '2017-12-19', 360, '600 SQ (Land Only)', 0),
(1925, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-01-19', 360, '600 SQ (Land Only)', 0),
(1926, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-02-19', 360, '600 SQ (Land Only)', 0),
(1927, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-03-22', 360, '600 SQ (Land Only)', 0),
(1928, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-04-22', 360, '600 SQ (Land Only)', 0),
(1929, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-05-23', 360, '600 SQ (Land Only)', 0),
(1930, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-06-23', 360, '600 SQ (Land Only)', 0),
(1931, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-07-24', 360, '600 SQ (Land Only)', 0),
(1932, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-08-24', 360, '600 SQ (Land Only)', 0),
(1933, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-09-24', 360, '600 SQ (Land Only)', 0),
(1934, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-10-25', 360, '600 SQ (Land Only)', 0),
(1935, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-11-25', 360, '600 SQ (Land Only)', 0),
(1936, 446542, '416667', 'Osrogu  Nigeria Limited', '2018-12-26', 360, '600 SQ (Land Only)', 0),
(1937, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-01-26', 360, '600 SQ (Land Only)', 0),
(1938, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-02-26', 360, '600 SQ (Land Only)', 0),
(1939, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-03-29', 360, '600 SQ (Land Only)', 0),
(1940, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-04-29', 360, '600 SQ (Land Only)', 0),
(1941, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-05-30', 360, '600 SQ (Land Only)', 0),
(1942, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-06-30', 360, '600 SQ (Land Only)', 0),
(1943, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-07-31', 360, '600 SQ (Land Only)', 0),
(1944, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-08-31', 360, '600 SQ (Land Only)', 0),
(1945, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-10-01', 360, '600 SQ (Land Only)', 0),
(1946, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-11-01', 360, '600 SQ (Land Only)', 0),
(1947, 446542, '416667', 'Osrogu  Nigeria Limited', '2019-12-02', 360, '600 SQ (Land Only)', 0),
(1948, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-01-02', 360, '600 SQ (Land Only)', 0),
(1949, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-02-02', 360, '600 SQ (Land Only)', 0),
(1950, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-03-04', 360, '600 SQ (Land Only)', 0),
(1951, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-04-04', 360, '600 SQ (Land Only)', 0),
(1952, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-05-05', 360, '600 SQ (Land Only)', 0),
(1953, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-06-05', 360, '600 SQ (Land Only)', 0),
(1954, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-07-06', 360, '600 SQ (Land Only)', 0),
(1955, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-08-06', 360, '600 SQ (Land Only)', 0),
(1956, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-09-06', 360, '600 SQ (Land Only)', 0),
(1957, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-10-07', 360, '600 SQ (Land Only)', 0),
(1958, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-11-07', 360, '600 SQ (Land Only)', 0),
(1959, 446542, '416667', 'Osrogu  Nigeria Limited', '2020-12-08', 360, '600 SQ (Land Only)', 0),
(1960, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-01-08', 360, '600 SQ (Land Only)', 0),
(1961, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-02-08', 360, '600 SQ (Land Only)', 0),
(1962, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-03-11', 360, '600 SQ (Land Only)', 0),
(1963, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-04-11', 360, '600 SQ (Land Only)', 0),
(1964, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-05-12', 360, '600 SQ (Land Only)', 0),
(1965, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-06-12', 360, '600 SQ (Land Only)', 0),
(1966, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-07-13', 360, '600 SQ (Land Only)', 0),
(1967, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-08-13', 360, '600 SQ (Land Only)', 0),
(1968, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-09-13', 360, '600 SQ (Land Only)', 0),
(1969, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-10-14', 360, '600 SQ (Land Only)', 0),
(1970, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-11-14', 360, '600 SQ (Land Only)', 0),
(1971, 446542, '416667', 'Osrogu  Nigeria Limited', '2021-12-15', 360, '600 SQ (Land Only)', 0),
(1972, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-01-15', 360, '600 SQ (Land Only)', 0),
(1973, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-02-15', 360, '600 SQ (Land Only)', 0),
(1974, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-03-18', 360, '600 SQ (Land Only)', 0),
(1975, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-04-18', 360, '600 SQ (Land Only)', 0),
(1976, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-05-19', 360, '600 SQ (Land Only)', 0),
(1977, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-06-19', 360, '600 SQ (Land Only)', 0),
(1978, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-07-20', 360, '600 SQ (Land Only)', 0),
(1979, 446542, '416667', 'Osrogu  Nigeria Limited', '2022-08-20', 360, '600 SQ (Land Only)', 0),
(1980, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-05-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1981, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-06-28', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1982, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-07-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1983, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-08-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1984, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-09-29', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1985, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-10-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1986, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-11-30', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1987, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2021-12-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1988, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-01-31', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1989, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-03-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1990, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-04-03', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1991, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-05-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1992, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-06-04', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1993, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-07-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1994, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-08-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0),
(1995, 15531, '1500000', 'Mrs Gbaagileh Judith Mbananden ', '2022-09-05', 360, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactionmodel`
--

CREATE TABLE `transactionmodel` (
  `id` int(11) NOT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `rcpt_no` int(11) DEFAULT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `tx_type` varchar(50) DEFAULT NULL,
  `pay_method` varchar(100) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `amount_in_words` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `account_FK` char(50) DEFAULT NULL,
  `paid` int(11) DEFAULT 0,
  `tx_date` date NOT NULL,
  `postBy_FK` varchar(100) DEFAULT NULL,
  `signature` varchar(200) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionmodel`
--

INSERT INTO `transactionmodel` (`id`, `uuid`, `rcpt_no`, `ticket_no`, `tx_type`, `pay_method`, `amount`, `amount_in_words`, `description`, `account_FK`, `paid`, `tx_date`, `postBy_FK`, `signature`, `createdAt`, `updatedAt`) VALUES
(51, '6727722c-1f56-4deb-bb2f-6caba23093ed', 1724355, '', 'DR', 'cheque', '410000', 'undefined', '', '4332342', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 11:31:55'),
(52, 'c7378857-1b07-44df-be0e-49fe0058daf6', 1724355, '', 'CR', 'cheque', '410000', 'undefined', '', '3017181', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 11:31:55'),
(53, 'f57c58b8-1720-4259-a045-dff4625b017d', 132446, '', 'DR', 'cheque', '820000', 'undefined', '', '4332342', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 11:39:23'),
(54, '50585a5b-883a-43de-a3b3-3fdb531bf656', 132446, '', 'CR', 'cheque', '820000', 'undefined', '', '3017181', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 11:39:23'),
(55, '8685e2bd-ce44-49e7-945b-33aa27ee64c1', 4431475, '', 'DR', 'cash', '500', 'undefined', '', '3431223', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 12:41:29'),
(56, '356fe95f-b99d-4890-b826-189af18b97fd', 4431475, '', 'CR', 'cash', '500', 'undefined', '', '55854', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 12:41:29'),
(57, '3fad9803-23fb-45b5-8e68-c5cd6dd980ea', 1710417, '', 'DR', 'cash', '5130', 'undefined', '', '3431223', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 13:16:54'),
(58, 'ee91022c-cfce-4276-9291-e9a94b5bb50d', 1710417, '', 'CR', 'cash', '5130', 'undefined', '', '048673', 1, '2021-06-28', 'GC@550', 'undefined', '2021-06-28', '2021-06-28 13:16:55'),
(59, '615d9585-767a-4142-a1da-94f7311f8c01', 51580, '', 'DR', '', '2000', 'undefined', '', '4332342', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 09:37:48'),
(60, 'd3c7baa2-b9b2-43d6-b133-4d19ae02ec01', 51580, '', 'CR', '', '2000', 'undefined', '', '3431223', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 09:37:48'),
(61, '157d7a9c-7b2b-482f-96f2-181c8c75778d', 3356219, '', 'DR', 'cash', '4900', 'undefined', '', '4332342', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 09:46:38'),
(62, '476be85d-9bf0-4e12-b1cb-42ed861a9b5a', 3356219, '', 'CR', 'cash', '4900', 'undefined', '', '3431223', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 09:46:38'),
(63, '3e5e19d0-d9f3-486b-82c6-8ad128597119', 450876, '', 'DR', '', '4900', 'undefined', '', '', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 09:47:35'),
(64, 'afc5aeff-7ac6-4253-9efe-9ad99181f49b', 450876, '', 'CR', '', '4900', 'undefined', '', '', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 09:47:35'),
(65, 'cc3f65f0-7c61-42e2-8d0a-264aad02c462', 4121487, '', 'DR', 'cash', '1300', 'undefined', '', '4332342', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 10:10:55'),
(66, '746e1984-2def-48a8-a9d6-811c2075afee', 4121487, '', 'CR', 'cash', '1300', 'undefined', '', '3431223', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 10:10:55'),
(67, '15627caa-0d41-409b-8816-765bb4c93cf1', 942544, '', 'DR', 'cash', '3780', 'undefined', '', '4332342', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:18:44'),
(68, '3d36ec91-75cb-4717-aab9-417b6665c022', 942544, '', 'CR', 'cash', '3780', 'undefined', '', '3431223', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:18:44'),
(69, '1d256b33-45ac-4d8a-b104-a869da91fb5b', 5724871, '', 'DR', '', '5180', 'undefined', '', '4332342', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:29:18'),
(70, 'b1e31128-a7c2-4235-a7b4-473b641ad951', 5724871, '', 'CR', '', '5180', 'undefined', '', '3431223', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:29:18'),
(71, 'b667acb4-e69e-4ca7-8fd4-ef54ef83c560', 222953, '', 'DR', '', '5180', 'undefined', '', '', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:29:37'),
(72, 'd8ebf8db-494f-440d-a751-32e070df3ff9', 222953, '', 'CR', '', '5180', 'undefined', '', '', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:29:37'),
(73, 'e22f8f39-e0a2-4a4a-9835-ab3a91b318e5', 225990, '', 'DR', 'cash', '5600', 'undefined', '', '4332342', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 10:33:14'),
(74, 'a94d85d5-d77d-4718-8a94-279f3c37232e', 225990, '', 'CR', 'cash', '5600', 'undefined', '', '3431223', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 10:33:14'),
(75, '0da4a023-2e30-40f3-8bd4-a6a189945c21', 1533225, '', 'DR', '', '8500', 'undefined', '', '4332342', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:35:17'),
(76, '25613947-4c5a-4124-b7ad-057a98f378f9', 1533225, '', 'CR', '', '8500', 'undefined', '', '3431223', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:35:17'),
(77, '3ace51e2-8103-4418-b4d3-b687f232caf6', 484079, '', 'DR', '', '5230', 'undefined', '', '4332342', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:44:53'),
(78, '8e7efd0f-3eb4-4af9-b7b9-cf2492c2c448', 484079, '', 'CR', '', '5230', 'undefined', '', '3431223', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:44:53'),
(79, 'a247fa05-2ee8-4d31-adeb-76aae3000710', 224730, '', 'DR', 'cash', '6900', 'undefined', '', '4332342', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 10:52:22'),
(80, '66afde7e-d405-4f5b-b5cf-910f10a030bb', 224730, '', 'CR', 'cash', '6900', 'undefined', '', '3431223', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 10:52:22'),
(81, 'cad39a44-9587-4160-91f1-6302b0ebfa57', 5445793, '', 'DR', 'cash', '5030', 'undefined', '', '4332342', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:54:44'),
(82, '6e022440-049e-4062-91bd-a35ca034be45', 5445793, '', 'CR', 'cash', '5030', 'undefined', '', '3431223', 1, '2021-06-29', 'GC@550', 'undefined', '2021-06-29', '2021-06-29 10:54:44'),
(83, 'f5876c5a-637b-4f78-b0f8-86523a3d5956', 306310, '', 'DR', 'cash', '7000', 'undefined', '', '4332342', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 11:05:06'),
(84, '6466f5c2-ac91-4eee-9b1b-eaca8ed34483', 306310, '', 'CR', 'cash', '7000', 'undefined', '', '3431223', 1, '2021-06-29', 'NO@550', 'undefined', '2021-06-29', '2021-06-29 11:05:06'),
(85, '3d312283-18d1-47d6-93f0-8817e844062e', 1424763, '', 'DR', 'cash', '7790', 'undefined', '', '4332342', 1, '2021-06-30', 'GC@550', 'undefined', '2021-06-30', '2021-06-30 14:45:51'),
(86, '2f374a77-bfe5-4b1d-9cfd-92bf3eecf875', 1424763, '', 'CR', 'cash', '7790', 'undefined', '', '3431223', 1, '2021-06-30', 'GC@550', 'undefined', '2021-06-30', '2021-06-30 14:45:51'),
(87, 'cef69479-6239-42cb-8be3-ea1806246ecd', 5631836, '', 'DR', 'cash', '7650', 'undefined', '', '4332342', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 09:11:31'),
(88, 'df4dfb2c-fa57-4c4c-a5cc-7496fb56305b', 5631836, '', 'CR', 'cash', '7650', 'undefined', '', '3431223', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 09:11:32'),
(89, 'e6e51d6a-d757-4b92-8d78-d932e01c3543', 243493, '', 'DR', 'cash', '8300', 'undefined', '', '4332342', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 09:31:58'),
(90, '0fc53dd7-2d6e-435c-9775-1cf59ef9e2d7', 243493, '', 'CR', 'cash', '8300', 'undefined', '', '3431223', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 09:31:58'),
(91, '5f2866e1-9f06-4c1b-acb4-9f7b2b89d132', 13942, '', 'DR', 'cash', '8300', 'undefined', '', '4332342', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 09:44:48'),
(92, '38ef085f-5ccc-4815-869d-1a1f1042baf9', 13942, '', 'CR', 'cash', '8300', 'undefined', '', '3431223', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 09:44:48'),
(93, '2b90d661-3c98-4342-8d18-ce869efa264e', 28554, '', 'DR', 'cash', '3930', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 10:16:56'),
(94, '0f36f656-9203-4cb3-847f-ed41c592ccdd', 28554, '', 'CR', 'cash', '3930', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 10:16:56'),
(95, '5770a1ba-788a-4dd2-ac09-23fca461b405', 355565, '', 'DR', 'cash', '5580', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 11:16:37'),
(96, '02151f21-ea94-464a-87d0-b4b32bebf700', 355565, '', 'CR', 'cash', '5580', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 11:16:37'),
(97, 'd4dbb045-1b72-42ee-b145-32e4dfa5d455', 1018182, '', 'DR', 'cash', '4340', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 11:24:00'),
(98, 'ca52746f-7298-47c7-8b73-b38d6b66e0a5', 1018182, '', 'CR', 'cash', '4340', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 11:24:00'),
(99, '17ad353f-a4bd-45a3-a248-dd8bc96c3b83', 2129311, '', 'DR', 'cash', '4600', 'undefined', '', '4332342', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 11:33:24'),
(100, '35b75c2e-78c2-4098-bc01-95399be7938c', 2129311, '', 'CR', 'cash', '4600', 'undefined', '', '3431223', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 11:33:24'),
(101, '7c8732f6-654f-493e-bd20-82ec04bc52b1', 2010590, '', 'DR', 'cash', '7790', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:11:29'),
(102, '954e9bdc-c530-4c95-8e9b-64ba447c9f9c', 2010590, '', 'CR', 'cash', '7790', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:11:29'),
(103, '819e526d-125f-4035-867b-6ca335ba0362', 351175, '', 'DR', '', '7790', 'undefined', '', '', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:12:52'),
(104, '1828551b-5322-4557-8d3e-d5f26f847b8b', 351175, '', 'CR', '', '7790', 'undefined', '', '', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:12:52'),
(105, 'fcc32712-f431-4896-8073-d40b389cf6ad', 1943548, '', 'DR', 'cash', '7900', 'undefined', '', '4332342', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 12:14:59'),
(106, '6b6f693c-2577-441a-838f-95334130703a', 1943548, '', 'CR', 'cash', '7900', 'undefined', '', '3431223', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 12:14:59'),
(107, 'c70473ab-97c7-40e6-adb1-bc1d80a53d03', 625771, '', 'DR', 'cash', '6600', 'undefined', '', '4332342', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 12:34:49'),
(108, '6c575d41-e26f-4586-a26a-2a64044c7b48', 625771, '', 'CR', 'cash', '6600', 'undefined', '', '3431223', 1, '2021-07-01', 'NO@550', 'undefined', '2021-07-01', '2021-07-01 12:34:49'),
(109, '88c98e29-8aae-4110-9085-31593be1a441', 5714411, '', 'DR', 'cash', '5900', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:49:03'),
(110, '6c785669-aa7b-41bf-92be-e9e0b7dc029d', 5714411, '', 'CR', 'cash', '5900', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:49:03'),
(111, 'b1b778cd-c8c2-494d-8dc0-b7e494199bb8', 850586, '', 'DR', 'cash', '5000', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:55:52'),
(112, 'b972f2ad-f539-4c96-8cec-3a82432cbf45', 850586, '', 'CR', 'cash', '5000', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 12:55:53'),
(113, 'dae66ea3-881a-4097-8fa6-ac106d374ea7', 957130, '', 'DR', 'cash', '6770', 'undefined', '', '4332342', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 13:02:59'),
(114, '3b17a90b-bd8e-4975-90d4-92d273c1eee3', 957130, '', 'CR', 'cash', '6770', 'undefined', '', '3431223', 1, '2021-07-01', 'GC@550', 'undefined', '2021-07-01', '2021-07-01 13:02:59'),
(115, '483dbaf9-bf63-476f-94aa-908d8429651a', 5541974, '', 'DR', 'cash', '6120', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 09:51:59'),
(116, '548bbf39-e45c-4df0-8881-24c7c28aa691', 5541974, '', 'CR', 'cash', '6120', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 09:51:59'),
(117, '91e9d1ff-d557-4bf3-8377-c53e3902cbd1', 4213466, '', 'DR', 'cash', '7470', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:04:47'),
(118, '813621d8-76e9-41ce-8e62-273dfb062728', 4213466, '', 'CR', 'cash', '7470', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:04:47'),
(119, 'c80cf145-4e4a-4dfd-90d4-f290067c041b', 526395, '', 'DR', 'cash', '5750', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:16:40'),
(120, 'f9b2f74e-67f6-4bb0-ac96-86f667afe97d', 526395, '', 'CR', 'cash', '5750', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:16:40'),
(121, 'df482281-b7e7-4038-a491-cccd6d0b3ac6', 5817290, '', 'DR', 'cash', '6650', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:26:58'),
(122, '91a13ad9-72fd-4d97-8c81-eef521ee6429', 5817290, '', 'CR', 'cash', '6650', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:26:58'),
(123, 'a440d3d4-ac1e-40c2-a920-d52cae46fcfe', 227141, '', 'DR', 'cash', '5480', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:31:10'),
(124, '19b68cc6-3289-4444-9bfc-eada79c47690', 227141, '', 'CR', 'cash', '5480', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:31:10'),
(125, 'd9904b30-22ad-490e-a650-70fb0fa2174c', 423137, '', 'DR', 'cash', '5380', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:35:39'),
(126, 'be6e7a26-18a5-47ed-80ee-c90b94ce241c', 423137, '', 'CR', 'cash', '5380', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:35:40'),
(127, '94fc2a85-8221-46c1-800e-6314f25f4f65', 1239357, '', 'DR', 'cheque', '50000', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:40:31'),
(128, 'fd856059-c203-412a-91ae-5b193fc1e5ff', 1239357, '', 'CR', 'cheque', '50000', 'undefined', '', '930555', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:40:31'),
(129, '51c83444-f602-4ff4-8abb-779b6d3a9cd4', 3740239, '', 'DR', 'cash', '5880', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:44:53'),
(130, '3f922ba5-8a5c-44c7-a7df-1a610cd7135b', 3740239, '', 'CR', 'cash', '5880', 'undefined', '', '55854', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:44:53'),
(131, 'fa1db664-acd8-4874-9092-d76b48ac9582', 1545734, '', 'DR', 'cash', '5080', 'undefined', '', '4332342', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:48:27'),
(132, 'cd5b88db-820a-4829-9415-1934400022b7', 1545734, '', 'CR', 'cash', '5080', 'undefined', '', '3431223', 1, '2021-07-02', 'GC@550', 'undefined', '2021-07-02', '2021-07-02 11:48:27'),
(134, '4c67a022-7d44-45eb-bc92-3893ef8c16ea', 303918, 'undefined', 'DR', 'cheque', '8000', 'undefined', 'Additional money approved by MD', '4332342', 1, '2021-05-25', 'GC@550', 'undefined', '2021-09-15', '2021-09-15 12:47:50'),
(135, 'c4f47442-63e6-4333-b7bf-4c70a07fcbb6', 303918, 'undefined', 'CR', 'cheque', '8000', 'undefined', 'Additional money approved by MD', '3431223', 1, '2021-05-25', 'GC@550', 'undefined', '2021-09-15', '2021-09-15 12:47:51'),
(136, '743b6741-061d-4bb6-b86c-a9078ea981ba', 265174, 'undefined', 'DR', 'cheque', '14000', 'undefined', 'one hundred naira was subtracted from transport fare to balance the amount approved by MD', '4332342', 1, '2021-07-26', 'GC@550', 'undefined', '2021-09-15', '2021-09-15 13:12:31'),
(137, 'e3816da5-87d6-465a-8a1d-3e9d2b15b985', 265174, 'undefined', 'CR', 'cheque', '14000', 'undefined', 'one hundred naira was subtracted from transport fare to balance the amount approved by MD', '3431223', 1, '2021-07-26', 'GC@550', 'undefined', '2021-09-15', '2021-09-15 13:12:31'),
(138, '8c036b28-233a-4b27-9833-1512aa61c121', 3016698, 'undefined', 'DR', 'cheque', '20000', 'undefined', 'Being amount used to recharge for electricity', '4332342', 1, '2021-08-12', 'GC@550', 'undefined', '2021-09-15', '2021-09-15 13:17:34'),
(139, 'c4d47371-83f1-4172-81ea-f2cbf3839b0d', 3016698, 'undefined', 'CR', 'cheque', '20000', 'undefined', 'Being amount used to recharge for electricity', '3431223', 1, '2021-08-12', 'GC@550', 'undefined', '2021-09-15', '2021-09-15 13:17:34'),
(140, 'c9eaceb1-b3c2-4db9-88bb-f5f8ca212ae4', 5722468, '1370', 'CR', 'transfer', '12000000', 'Twelve Million ', 'Being Deposit for a unit of plot of land for four bedroom Semi Detached Duplex at Oxford Homes, Gaduwa District, 800 square metres vide Bank transfer - ZB06012021', '2810852', 0, '2021-01-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-09-21', '2021-09-21 10:32:43'),
(141, 'faba2338-2692-40d7-bf14-80bf5ccd19fd', 1144510, '1371', 'CR', 'transfer', '4000000', 'Four Million', 'Being Deposit for a plot of land measuring 1000 Quare metres at Oxford Homes, Gaduwa District, Abuja Vide Bank Transfer - ZB 7501221', '385793', 0, '2021-01-15', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-09-21', '2021-09-21 10:52:09'),
(142, '5d53cf77-58c7-4b2a-ac1d-90f1c2f1594a', 138545, 'undefined', 'DR', 'cheque', '100000', 'undefined', 'Being 2% Agency fee paid to ZUMNAN Maxwell (Mr. Chidi Abba Ali)', '4332342', 1, '2020-07-02', 'GC@550', 'undefined', '2021-09-22', '2021-09-22 10:24:34'),
(143, 'da682570-c8de-439b-a812-56f001ac2249', 138545, 'undefined', 'CR', 'cheque', '100000', 'undefined', 'Being 2% Agency fee paid to ZUMNAN Maxwell (Mr. Chidi Abba Ali)', '3059969', 1, '2020-07-02', 'GC@550', 'undefined', '2021-09-22', '2021-09-22 10:24:34'),
(144, 'bcab5604-c739-4c26-ba27-a89ea4470697', 138545, 'undefined', 'DR', 'cheque', '210000', 'undefined', 'Being 3% Agency fee paid to Collectable Marks Associates Ltd/Collings C. Ogbonna', '4332342', 1, '2020-07-03', 'GC@550', 'undefined', '2021-09-22', '2021-09-22 10:28:39'),
(145, '322c8c25-2f37-4e3d-9327-57b083866a25', 138545, 'undefined', 'CR', 'cheque', '210000', 'undefined', 'Being 3% Agency fee paid to Collectable Marks Associates Ltd/Collings C. Ogbonna', '3059969', 1, '2020-07-03', 'GC@550', 'undefined', '2021-09-22', '2021-09-22 10:28:39'),
(146, 'ad95beac-f9b1-4e30-b528-8e59efd1400b', 3843850, 'undefined', 'DR', 'cheque', '500000', 'undefined', 'Being payment for Interlock for road work/Dakwo District', '4332342', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 11:44:33'),
(147, 'a4c6856f-039d-4b3a-b7f5-466276746d74', 3843850, 'undefined', 'CR', 'cheque', '500000', 'undefined', 'Being payment for Interlock for road work/Dakwo District', '3337366', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 11:44:33'),
(148, '37304a39-daca-472a-8897-5e5e8b97ff24', 3046660, 'undefined', 'DR', 'cheque', '500000', 'undefined', 'Being payment for Architectural Design for Oxford Homes ', '4332342', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 11:47:40'),
(149, 'ea409695-f299-4a9d-ae0d-63f5c2a4680a', 3046660, 'undefined', 'CR', 'cheque', '500000', 'undefined', 'Being payment for Architectural Design for Oxford Homes ', '2610998', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 11:47:40'),
(150, 'a267cc5a-949f-43a4-88b8-d59c306e783c', 2532, 'undefined', 'DR', 'cheque', '285000', 'undefined', 'Being payment of 3% Agency fee to Engr. Chijioke Nnadi (Mr. Ukachukwu)', '4332342', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 11:56:32'),
(151, 'f3d22785-e7b0-49f6-b15f-7170e07026c4', 2532, 'undefined', 'CR', 'cheque', '285000', 'undefined', 'Being payment of 3% Agency fee to Engr. Chijioke Nnadi (Mr. Ukachukwu)', '3059969', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 11:56:32'),
(152, 'a13ece48-3963-4fa6-98a0-a786d13a7212', 550218, 'undefined', 'DR', 'cheque', '155000', 'undefined', 'Being payment of Agency fee to Mr. Lawrence Emusa', '4332342', 1, '2020-07-05', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:01:42'),
(153, '3c76991f-75fa-4c14-817f-ffab6796b1ae', 550218, 'undefined', 'CR', 'cheque', '155000', 'undefined', 'Being payment of Agency fee to Mr. Lawrence Emusa', '3059969', 1, '2020-07-05', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:01:42'),
(154, 'aca3f315-861b-46bf-b1af-7eab1e3cdc96', 1622690, 'undefined', 'DR', 'transfer', '19000', 'undefined', 'Being payment made made for internet services', '4332342', 1, '2020-05-06', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:23:12'),
(155, '6bc60859-befe-4580-aff3-d9d65275f5f4', 1622690, 'undefined', 'CR', 'transfer', '19000', 'undefined', 'Being payment made made for internet services', '311622', 1, '2020-05-06', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:23:12'),
(156, '6bac9836-b229-418b-8f45-79eb8c2cf11a', 213752, 'undefined', 'DR', 'cheque', '250000', 'undefined', 'Being amount refunded to Mr. Musa from the deposit he made for a property', '4332342', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:38:55'),
(157, 'c7545ebf-6ab4-4afb-87a8-cfc3f9b2d15d', 213752, 'undefined', 'CR', 'cheque', '250000', 'undefined', 'Being amount refunded to Mr. Musa from the deposit he made for a property', '4235155', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:38:55'),
(158, '0f8acf0a-7cfc-4110-9266-404532f16cea', 1739883, 'undefined', 'DR', 'cheque', '5000000', 'undefined', 'Being amount Refunded to Barr. Peter D. Kefas from the Deposit he made on a property', '4332342', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:41:30'),
(159, '3456411f-64fc-420f-8402-9f57d15875f8', 1739883, 'undefined', 'CR', 'cheque', '5000000', 'undefined', 'Being amount Refunded to Barr. Peter D. Kefas from the Deposit he made on a property', '5158546', 1, '2020-07-03', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:41:30'),
(160, '29bdf07b-6917-4494-8a21-dcedf54dc783', 4747660, 'undefined', 'DR', 'cheque', '900000', 'undefined', 'Being amount refunded to Okwudili Okoli from the deposit he made on a property', '4332342', 1, '2020-06-27', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:48:39'),
(161, '673c679e-64c9-4f5a-8b52-a6cb21689b67', 4747660, 'undefined', 'CR', 'cheque', '900000', 'undefined', 'Being amount refunded to Okwudili Okoli from the deposit he made on a property', '4235155', 1, '2020-06-27', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 12:48:39'),
(162, '10813005-5fb3-4a32-9a8a-19ab773e17de', 545953, 'undefined', 'DR', 'cash', '178000', 'undefined', 'Being payment made for Toyota Corolla papers Renewals/maintenance', '4332342', 1, '2020-06-17', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:02:24'),
(163, 'e9821885-8b7b-4832-bdcc-ce7cdd22a0ad', 545953, 'undefined', 'CR', 'cash', '178000', 'undefined', 'Being payment made for Toyota Corolla papers Renewals/maintenance', '5059655', 1, '2020-06-17', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:02:24'),
(164, '54f47739-da74-4515-b986-b0d216a739b0', 123235, 'undefined', 'DR', 'cheque', '2000000', 'undefined', 'Being Loan Refund made to Felicia Iloegbunam', '4332342', 1, '2020-07-06', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:04:40'),
(165, '5fa98ec5-231b-4d9c-ab03-f82eb85c01d8', 123235, 'undefined', 'CR', 'cheque', '2000000', 'undefined', 'Being Loan Refund made to Felicia Iloegbunam', '4235155', 1, '2020-07-06', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:04:40'),
(166, '5f4a7550-5170-4493-8944-0f1ee46195bd', 215581, 'undefined', 'DR', 'transfer', '90100', 'undefined', 'Being payment made to IT Hunters Ltd for office stationeries', '4332342', 1, '2020-07-06', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:08:37'),
(167, '7fd31b94-e93e-4822-985e-8d737ac6d21c', 215581, 'undefined', 'CR', 'transfer', '90100', 'undefined', 'Being payment made to IT Hunters Ltd for office stationeries', '1850405', 1, '2020-07-06', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:08:37'),
(168, 'cd7564b9-3eff-45c9-9578-0c3b22966031', 4812522, 'undefined', 'DR', 'cheque', '200000', 'undefined', 'Being Agency fee paid to Mr. Lawrence Emusa/Karshi Development Area, Nasarawa state', '4332342', 1, '2020-07-07', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:13:26'),
(169, '0258c406-03c5-44fe-9ac0-763955c50153', 4812522, 'undefined', 'CR', 'cheque', '200000', 'undefined', 'Being Agency fee paid to Mr. Lawrence Emusa/Karshi Development Area, Nasarawa state', '3059969', 1, '2020-07-07', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:13:26'),
(170, '683d4fab-50db-47a0-9127-1a9f1432bdad', 1932498, 'undefined', 'DR', 'cheque', '15000', 'undefined', 'Being 3% Agency fee paid to Mr. Barka Ambuno Barka ', '4332342', 1, '2020-07-01', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:33:48'),
(171, '4e5b9590-8b9c-4fc0-ad3b-a30079813d70', 1932498, 'undefined', 'CR', 'cheque', '15000', 'undefined', 'Being 3% Agency fee paid to Mr. Barka Ambuno Barka ', '3059969', 1, '2020-07-01', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:33:48'),
(172, 'e9a995b7-a66f-46aa-a219-4b447e090a23', 336475, 'undefined', 'DR', 'cheque', '200000', 'undefined', 'Payment for Fencing work @ Gaduwa District to Collectable Marks Associates Ltd', '4332342', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:37:52'),
(173, '8ced722d-c558-4596-9734-387c9ea573d2', 336475, 'undefined', 'CR', 'cheque', '200000', 'undefined', 'Payment for Fencing work @ Gaduwa District to Collectable Marks Associates Ltd', '3337366', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:37:52'),
(174, '7a6b86af-cb4d-4f6d-8e25-86a58e942ec0', 3641981, 'undefined', 'DR', 'cheque', '300000', 'undefined', 'Being legal fees paid to  Bani Law Consulting', '4332342', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:42:31'),
(175, '3550e344-0e00-4b4f-ae2e-b54140f7043f', 3641981, 'undefined', 'CR', 'cheque', '300000', 'undefined', 'Being legal fees paid to  Bani Law Consulting', '040977', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 13:42:31'),
(176, 'd0128881-43ff-4490-b712-17768280701e', 182820, 'undefined', 'DR', 'cheque', '210000', 'undefined', 'Being Interest paid to Betterment Investment Nig. Ltd ', '4332342', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:03:43'),
(177, '92d17abd-0e74-4937-9dc3-5f31c8061c04', 182820, 'undefined', 'CR', 'cheque', '210000', 'undefined', 'Being Interest paid to Betterment Investment Nig. Ltd ', '211787', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:03:43'),
(178, '37f3fa5a-457d-4f48-9027-fee9b60126ba', 474699, 'undefined', 'DR', 'cheque', '100000', 'undefined', 'Payment to Sophie Pius for Fencing work at Gaduwa', '4332342', 1, '2020-07-09', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:06:00'),
(179, 'ca765f42-36b4-44d7-bdc9-aecfa576f4c0', 474699, 'undefined', 'CR', 'cheque', '100000', 'undefined', 'Payment to Sophie Pius for Fencing work at Gaduwa', '3337366', 1, '2020-07-09', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:06:00'),
(180, '4b4fbb1a-8111-4327-8c71-617e312da138', 37816, 'undefined', 'DR', 'transfer', '48000', 'undefined', 'Payment for Vehicle repairs - Pickup', '4332342', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:09:42'),
(181, '74512c8c-2561-452d-b433-727ce89a1f16', 37816, 'undefined', 'CR', 'transfer', '48000', 'undefined', 'Payment for Vehicle repairs - Pickup', '3520835', 1, '2020-07-08', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:09:42'),
(182, '6d307f6a-5127-43ec-bca7-7e6a64126e64', 2220374, 'undefined', 'DR', 'cheque', '1500000', 'undefined', 'Being loan amount refunded to Felicia Ikegbulam', '4332342', 1, '2020-07-09', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:23:44'),
(183, '00648773-a85a-4c03-90d9-4a1df658d7fc', 2220374, 'undefined', 'CR', 'cheque', '1500000', 'undefined', 'Being loan amount refunded to Felicia Ikegbulam', '1820464', 1, '2020-07-09', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:23:44'),
(184, '803e7439-ba12-4976-b8c5-464d4e577d30', 627261, 'undefined', 'DR', 'cheque', '250000', 'undefined', 'Being payment for Economic Tree Compensation', '4332342', 1, '2020-07-16', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:27:52'),
(185, '851c02e9-5c75-45a8-acd7-ee52379016db', 627261, 'undefined', 'CR', 'cheque', '250000', 'undefined', 'Being payment for Economic Tree Compensation', '5725108', 1, '2020-07-16', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:27:52'),
(186, '07498fb8-f4c9-4efa-bd1d-e12b55e08f38', 2332139, 'undefined', 'DR', 'cheque', '2000000', 'undefined', 'Being refund made to Uju Madueke from deposit made ', '4332342', 1, '2020-07-17', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:34:32'),
(187, '1dcb2618-0aa4-4427-a710-9d8dee1ddeb5', 2332139, 'undefined', 'CR', 'cheque', '2000000', 'undefined', 'Being refund made to Uju Madueke from deposit made ', '4235155', 1, '2020-07-17', 'NO@550', 'undefined', '2021-09-22', '2021-09-22 14:34:32'),
(188, '3fca271b-bd48-44fb-8d4b-11743eade35f', 413438, 'undefined', 'DR', 'cheque', '75000', 'undefined', 'Being payment made to Sophie Pius for Repair Servicing', '4332342', 1, '2020-07-20', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 09:39:23'),
(189, '231a09ba-5ff1-4282-9a9f-a970c756e3f8', 413438, 'undefined', 'CR', 'cheque', '75000', 'undefined', 'Being payment made to Sophie Pius for Repair Servicing', '373857', 1, '2020-07-20', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 09:39:23'),
(190, '87542c80-7ae8-46d5-9149-844b3526eb46', 3342674, 'undefined', 'DR', 'cheque', '100000', 'undefined', 'Being payment made to Sophie Pius for Gaduwa Fencing', '4332342', 1, '2020-07-23', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 09:44:15'),
(191, '64943170-676f-4e57-9e15-fb55843c74f3', 3342674, 'undefined', 'CR', 'cheque', '100000', 'undefined', 'Being payment made to Sophie Pius for Gaduwa Fencing', '3337366', 1, '2020-07-23', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 09:44:15'),
(192, '3e60195f-9801-4451-9102-42e05cc034f2', 145891, 'undefined', 'DR', 'cheque', '70000', 'undefined', 'Being payment made to Collectable Marks Associates Ltd. for Road construction/Dakwo District, Abuja', '4332342', 1, '2020-07-23', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:01:36'),
(193, '0070b6f9-95e2-4481-9d19-892dcc35fb61', 145891, 'undefined', 'CR', 'cheque', '70000', 'undefined', 'Being payment made to Collectable Marks Associates Ltd. for Road construction/Dakwo District, Abuja', '3337366', 1, '2020-07-23', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:01:36'),
(194, '52baccce-12d2-404d-8c02-1c8b26e9451b', 174981, 'undefined', 'DR', 'cheque', '35250', 'undefined', 'Being agency fee paid to Faith Peter: (Nosa=20250, Chibuzor=15000))', '4332342', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:13:14'),
(195, 'f4b6f462-265a-4694-bd54-0a81c8d55dca', 174981, 'undefined', 'CR', 'cheque', '35250', 'undefined', 'Being agency fee paid to Faith Peter: (Nosa=20250, Chibuzor=15000))', '3059969', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:13:14'),
(196, '8ad2d009-4078-49af-b3e7-f1f259daca04', 4413197, 'undefined', 'DR', 'cheque', '50000', 'undefined', 'Being payment made to Sophie PIUS for House repairs', '4332342', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:20:17'),
(197, '4d096d99-8a93-4422-bc4b-a5855269b039', 4413197, 'undefined', 'CR', 'cheque', '50000', 'undefined', 'Being payment made to Sophie PIUS for House repairs', '373857', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:20:17'),
(198, '98294bf0-8a4a-49dd-9350-d6f51c62c593', 4320114, 'undefined', 'DR', 'cheque', '450000', 'undefined', 'Being Loan interest paid to Okwudili Okoli', '4332342', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:25:16'),
(199, 'c50a57d4-6d0a-4134-aa2f-fa5377265699', 4320114, 'undefined', 'CR', 'cheque', '450000', 'undefined', 'Being Loan interest paid to Okwudili Okoli', '211787', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:25:16'),
(200, 'f9dc1604-4865-4a3d-b326-e26feae50e59', 5125627, 'undefined', 'DR', 'cheque', '1274583', 'undefined', 'Being loan refund to Consynergy Ltd', '4332342', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:28:31'),
(201, '71379121-e25f-4bda-9b4d-057070185cdf', 5125627, 'undefined', 'CR', 'cheque', '1274583', 'undefined', 'Being loan refund to Consynergy Ltd', '1820464', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:28:31'),
(202, '690d0f35-316a-4379-af56-d7c9bb8e9491', 829607, 'undefined', 'DR', 'cheque', '1000000', 'undefined', 'Being Loan Refund to Felicia Ikegbulam', '4332342', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:30:14'),
(203, '0c351e70-5e3e-4ff1-a633-69096aa2fb42', 829607, 'undefined', 'CR', 'cheque', '1000000', 'undefined', 'Being Loan Refund to Felicia Ikegbulam', '1820464', 1, '2020-07-24', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:30:15'),
(204, '6855a86c-676e-49b4-b8fb-f2c3a20d0164', 1340598, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Being PR given for Gaduwa/Oxford Homes', '4332342', 1, '2020-07-27', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:41:05'),
(205, '46762b46-aba3-45db-ae74-c4c8aa4c2e00', 1340598, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Being PR given for Gaduwa/Oxford Homes', '737272', 1, '2020-07-27', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:41:05'),
(206, 'ab255c41-5850-447f-ae86-76f641691676', 4448, 'undefined', 'DR', 'cheque', '25000', 'undefined', 'Being Printing Charges paid at UTC ', '4332342', 1, '2020-07-27', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:46:59'),
(207, '525dec17-fca3-4abb-ab4b-9ef01cfad889', 4448, 'undefined', 'CR', 'cheque', '25000', 'undefined', 'Being Printing Charges paid at UTC ', '222456', 1, '2020-07-27', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:46:59'),
(208, '63fb98da-d68a-4c5b-ab7b-071c3bb9b912', 5447860, 'undefined', 'DR', 'cheque', '60000', 'undefined', 'Being 3% Agency fee paid to Zunman Maxwell (Mr. Emmanuel Aduda)', '4332342', 1, '2020-07-28', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:50:50'),
(209, 'afe12306-d648-4b24-bb07-52fb726880ef', 5447860, 'undefined', 'CR', 'cheque', '60000', 'undefined', 'Being 3% Agency fee paid to Zunman Maxwell (Mr. Emmanuel Aduda)', '3059969', 1, '2020-07-28', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 10:50:50'),
(210, '77d2c774-5866-4ccf-b922-69d2a3768565', 2453733, 'undefined', 'DR', 'transfer', '1200000', 'undefined', 'Being Loan refund to Felicia Ikegbulam', '4332342', 1, '2020-07-29', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:04:00'),
(211, 'ce37973c-fe93-416d-a90c-ebaf51a99b8f', 2453733, 'undefined', 'CR', 'transfer', '1200000', 'undefined', 'Being Loan refund to Felicia Ikegbulam', '1820464', 1, '2020-07-29', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:04:00'),
(212, 'd535054a-6369-4fc5-ad65-e21ed725cc09', 265613, 'undefined', 'DR', 'transfer', '300000', 'undefined', 'Being Survey fee paid to Emusa Lawrence', '4332342', 1, '2020-07-29', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:06:28'),
(213, '7112db4a-89c2-446c-befd-97e78a894fdd', 265613, 'undefined', 'CR', 'transfer', '300000', 'undefined', 'Being Survey fee paid to Emusa Lawrence', '1853414', 1, '2020-07-29', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:06:28'),
(214, 'a32bd68d-c466-483d-8200-ba34ae9c6e43', 3614585, 'undefined', 'DR', 'cheque', '25000', 'undefined', 'Survey fee for Oxford homes paid to Mr. Salihu Suleiman', '4332342', 1, '2020-07-29', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:16:58'),
(215, 'b1b01224-6367-4281-92d1-f6d9f22a5c1e', 3614585, 'undefined', 'CR', 'cheque', '25000', 'undefined', 'Survey fee for Oxford homes paid to Mr. Salihu Suleiman', '1853414', 1, '2020-07-29', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:16:58'),
(216, 'd16036b1-dc7d-4f17-be3a-57e258bcac07', 1221820, 'undefined', 'DR', 'cheque', '114000', 'undefined', 'Sundry Operational expenses', '4332342', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:21:47'),
(217, 'd653cff9-9796-48da-93ab-7304d8cc7147', 1221820, 'undefined', 'CR', 'cheque', '114000', 'undefined', 'Sundry Operational expenses', '2518264', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:21:47'),
(218, 'c3e14976-a89e-4e7f-9370-5cea3a4ef77f', 5922418, 'undefined', 'DR', 'cheque', '36000', 'undefined', 'Payment made to NSITF', '4332342', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:23:20'),
(219, '63a27a3b-ea08-4cd4-9e36-67a3f6206339', 5922418, 'undefined', 'CR', 'cheque', '36000', 'undefined', 'Payment made to NSITF', '101996', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:23:20'),
(220, '8944f428-4007-46bb-b0a2-b2d986bca6e3', 4323172, 'undefined', 'DR', 'cheque', '750000', 'undefined', 'being amount refunded to Hauwa Sambo from property deposit ', '4332342', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:25:24'),
(221, '5d71b0d9-bf2c-4bf5-b59a-f9ae592515f4', 4323172, 'undefined', 'CR', 'cheque', '750000', 'undefined', 'being amount refunded to Hauwa Sambo from property deposit ', '4235155', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:25:24'),
(222, '8dfe979b-72fe-41d0-9aac-b427f28dae60', 4925251, 'undefined', 'DR', 'cheque', '225000', 'undefined', 'Being loan interest paid to Collins okafor', '4332342', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:27:53'),
(223, '35b2a8da-b5a8-4b3c-8e06-a66dc8bdc5d8', 4925251, 'undefined', 'CR', 'cheque', '225000', 'undefined', 'Being loan interest paid to Collins okafor', '211787', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:27:54'),
(224, '2c499876-bb2d-4449-8fbb-3c83a73ce267', 429916, 'undefined', 'DR', 'transfer', '3600000', 'undefined', 'Being amount refunded to Felicia Ikegbulam ', '4332342', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:31:32'),
(225, '28df9b6b-1282-49ed-8123-defe7035b618', 429916, 'undefined', 'CR', 'transfer', '3600000', 'undefined', 'Being amount refunded to Felicia Ikegbulam ', '1820464', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:31:32'),
(226, '34c984af-ca2d-492a-8334-636311d3249b', 4931438, 'undefined', 'DR', 'transfer', '300000', 'undefined', 'Being amount paid to Akwarandu Arthur', '4332342', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:33:49'),
(227, 'd9855aef-4478-4bca-826f-e8a7316aa25f', 4931438, 'undefined', 'CR', 'transfer', '300000', 'undefined', 'Being amount paid to Akwarandu Arthur', '3059969', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:33:49'),
(228, 'afb93b38-dd14-4f28-964d-e5acda79da95', 3150122, 'undefined', 'DR', 'cheque', '200000', 'undefined', 'Being training expenses paid for Mrs Athonia Chime', '4332342', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:51:44'),
(229, '51baedea-450e-491d-ba45-40d24ff1fbbd', 3150122, 'undefined', 'CR', 'cheque', '200000', 'undefined', 'Being training expenses paid for Mrs Athonia Chime', '1949733', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:51:44'),
(230, 'a74b5602-ec61-45ef-8e37-940b2ed59f4a', 2352563, 'undefined', 'DR', 'cheque', '350000', 'undefined', 'Loan Interest oaid to Abba Chisoma', '4332342', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:53:59'),
(231, '1f03f333-762b-44a9-a8a0-fdc1285a798e', 2352563, 'undefined', 'CR', 'cheque', '350000', 'undefined', 'Loan Interest oaid to Abba Chisoma', '211787', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:53:59'),
(232, '0d0e3814-4640-4fd8-ab61-f7eb06511fd9', 4954945, 'undefined', 'DR', 'cheque', '200000', 'undefined', 'Being payment for Road work at Dakwo District', '4332342', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:57:31'),
(233, 'e2b9ba65-6d7e-4ec0-bbb0-4da813b93d1e', 4954945, 'undefined', 'CR', 'cheque', '200000', 'undefined', 'Being payment for Road work at Dakwo District', '3337366', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 11:57:31'),
(234, 'e1ff44b6-288c-4d3b-9d81-f44663ac7163', 532300, 'undefined', 'DR', 'cheque', '45000', 'undefined', 'Being rent advance to Mr. Rowland Ikechukwu Okorie ', '4332342', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:04:21'),
(235, 'b08bad0b-35b9-41a9-8293-ddab641094f5', 532300, 'undefined', 'CR', 'cheque', '45000', 'undefined', 'Being rent advance to Mr. Rowland Ikechukwu Okorie ', '380727', 1, '2020-08-03', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:04:21'),
(236, '4843f060-fbfc-4ac6-b518-cf5f05a8f2b7', 594225, 'undefined', 'DR', 'cheque', '60000', 'undefined', 'Being 3% Agency fee paid to ZUNMAN Maxwel', '4332342', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:06:17'),
(237, '1c153ee1-2364-4f61-9e7f-a841e2947171', 594225, 'undefined', 'CR', 'cheque', '60000', 'undefined', 'Being 3% Agency fee paid to ZUNMAN Maxwel', '3059969', 1, '2020-08-04', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:06:17'),
(238, '04f02d1f-8022-4970-a87f-ed0795f78c78', 107434, 'undefined', 'DR', 'cheque', '304000', 'undefined', 'Being registration with Alliance in motion Global by MD', '4332342', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:12:27'),
(239, '9b498518-878a-4c43-94b6-766c5d755a26', 107434, 'undefined', 'CR', 'cheque', '304000', 'undefined', 'Being registration with Alliance in motion Global by MD', '5012311', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:12:27'),
(240, 'b0649dff-5cc9-4b41-a875-022d164f1431', 2817396, 'undefined', 'DR', 'cheque', '280000', 'undefined', 'Being amount  paid to Ochelle Michael for Office computers and PR', '4332342', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:18:26'),
(241, 'bf9a9dcc-6442-4b81-ac9c-c638a39930b5', 2817396, 'undefined', 'CR', 'cheque', '280000', 'undefined', 'Being amount  paid to Ochelle Michael for Office computers and PR', '516181', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:18:26'),
(242, '39674b2f-306d-4de4-b98d-64cce26d6c62', 5019920, 'undefined', 'DR', 'cheque', '300000', 'undefined', 'Being paid to Cecilia Madueke for Training', '4332342', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:21:18'),
(243, '6d22ceb5-1ac9-4707-9b80-1c0063992aff', 5019920, 'undefined', 'CR', 'cheque', '300000', 'undefined', 'Being paid to Cecilia Madueke for Training', '1949733', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:21:18'),
(244, 'f295a276-6110-4f94-b710-94ccd512e63b', 5121340, 'undefined', 'DR', 'transfer', '114000', 'undefined', 'Being amount paid to Alliance in motion Global by MD', '4332342', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:23:07'),
(245, '737f2a62-ac62-4241-a683-f7f4d8bd19e8', 5121340, 'undefined', 'CR', 'transfer', '114000', 'undefined', 'Being amount paid to Alliance in motion Global by MD', '5012311', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:23:07'),
(246, '6fd01d2d-43e3-457f-af78-ed3469f64b81', 1227280, 'undefined', 'DR', 'transfer', '304000', 'undefined', 'Being into Alliance In Motion Global Account by MD', '4332342', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:29:05'),
(247, '9e634774-a0d8-4463-ba57-06a06453d39e', 1227280, 'undefined', 'CR', 'transfer', '304000', 'undefined', 'Being into Alliance In Motion Global Account by MD', '5012311', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:29:05'),
(248, '414b2d27-8579-4600-a503-6401fb2a921e', 3254601, 'undefined', 'DR', 'cheque', '2000000', 'undefined', 'Being made to Sunday Ernest Ede for the purchase of KYAMI District Green areas', '4332342', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:56:38'),
(249, '58aa19d7-ca03-48fb-9c62-665832a1247c', 3254601, 'undefined', 'CR', 'cheque', '2000000', 'undefined', 'Being made to Sunday Ernest Ede for the purchase of KYAMI District Green areas', '534255', 1, '2020-08-05', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 12:56:38'),
(250, '6f1da551-11d3-48cf-9382-c5f0def4ff65', 3957556, 'undefined', 'DR', 'cheque', '3000000', 'undefined', 'Being refund of Deposit made on property', '4332342', 1, '2020-08-06', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:00:35'),
(251, 'aedccb7f-40f7-490b-80a5-5e264ce6b6cc', 3957556, 'undefined', 'CR', 'cheque', '3000000', 'undefined', 'Being refund of Deposit made on property', '4235155', 1, '2020-08-06', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:00:36'),
(252, 'b977c826-f0b8-4c1b-aeb5-220bde65c005', 543190, 'undefined', 'DR', 'cheque', '100000', 'undefined', 'Being payment to Collectable Marks Associate Ltd.  for Road work at at Dakwo district', '4332342', 1, '2020-08-10', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:06:21'),
(253, '607e4f9a-85b3-445b-ac49-7312c6f82b9e', 543190, 'undefined', 'CR', 'cheque', '100000', 'undefined', 'Being payment to Collectable Marks Associate Ltd.  for Road work at at Dakwo district', '3337366', 1, '2020-08-10', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:06:21'),
(254, 'dc654b91-60f4-48fb-89cf-c43b0ca1fe07', 224204, 'undefined', 'DR', 'cheque', '2210000', 'undefined', 'Being loan refunded to Betterment Investment Nig. Ltd', '4332342', 1, '2020-08-10', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:24:41'),
(255, '3da491e5-93e4-4cbb-b07d-118080ce57a2', 224204, 'undefined', 'CR', 'cheque', '2210000', 'undefined', 'Being loan refunded to Betterment Investment Nig. Ltd', '1820464', 1, '2020-08-10', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:24:41'),
(256, '41187663-cc20-4282-ba74-d4d70533b3b7', 3125501, 'undefined', 'DR', 'transfer', '22800', 'undefined', 'Being payment for Vehicle repairs - Toyota corolla', '4332342', 1, '2020-08-12', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:28:12'),
(257, 'e6edac2b-694b-41f9-9eab-38ec6ca6c2d9', 3125501, 'undefined', 'CR', 'transfer', '22800', 'undefined', 'Being payment for Vehicle repairs - Toyota corolla', '3520835', 1, '2020-08-12', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:28:12'),
(258, '524ef200-e259-4f4f-a452-005ebb9af4be', 5130772, 'undefined', 'DR', 'cheque', '100000', 'undefined', 'Being amount given as PR through Sophie Pius', '4332342', 1, '2020-08-12', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:31:42'),
(259, 'fbae936e-49a0-41b1-b229-db5e67b6f438', 5130772, 'undefined', 'CR', 'cheque', '100000', 'undefined', 'Being amount given as PR through Sophie Pius', '737272', 1, '2020-08-12', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:31:42'),
(260, '99a7706e-4c57-441b-aaa3-b47395814a64', 3632809, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Being amount paid for Construction materials & water supply through Sophie', '4332342', 1, '2020-08-18', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:38:08'),
(261, 'c58fb59e-b7d3-452e-bde2-6439686efde0', 3632809, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Being amount paid for Construction materials & water supply through Sophie', '3337366', 1, '2020-08-18', 'NO@550', 'undefined', '2021-09-23', '2021-09-23 13:38:08'),
(262, '6a8ba159-e418-477a-8962-dd68ec648251', 2459820, 'undefined', 'DR', 'cheque', '270000', 'undefined', 'Being Refund from deposit for property to Mr Okewo Bababunmi Michael', '4332342', 1, '2020-08-21', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:02:57'),
(263, 'f678f7db-8cb6-43f0-b8b7-c1fbbb2033b0', 2459820, 'undefined', 'CR', 'cheque', '270000', 'undefined', 'Being Refund from deposit for property to Mr Okewo Bababunmi Michael', '4235155', 1, '2020-08-21', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:02:57'),
(264, '77d58d21-7591-4368-9085-60578defa011', 614834, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Being PR given at FCDA through Sophie Pius', '4332342', 1, '2020-08-24', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:23:42'),
(265, '798a0d19-6e6c-4731-bba6-cdfd3f22d72a', 614834, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Being PR given at FCDA through Sophie Pius', '737272', 1, '2020-08-24', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:23:42'),
(266, 'bdb65d98-0283-4c05-a760-d4af4146098f', 4823290, 'undefined', 'DR', 'cheque', '100000', 'undefined', 'Being payment to Collectable Marks Associates for Road work at Dakwo District ', '4332342', 1, '2020-08-24', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:26:49'),
(267, '6ff03aa4-f556-41c8-b6cb-3aaa33a7bf31', 4823290, 'undefined', 'CR', 'cheque', '100000', 'undefined', 'Being payment to Collectable Marks Associates for Road work at Dakwo District ', '3337366', 1, '2020-08-24', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:26:49'),
(268, 'f74caa24-d657-411f-a3bc-c224cc844b8c', 5526544, 'undefined', 'DR', 'cheque', '700000', 'undefined', 'Being agency fee paid to Godwin Stephen-Kings', '4332342', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:29:02'),
(269, '6a78bfc0-2bab-451e-ae18-05b6bbca99ae', 5526544, 'undefined', 'CR', 'cheque', '700000', 'undefined', 'Being agency fee paid to Godwin Stephen-Kings', '3059969', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:29:02'),
(270, 'e186b5a1-c076-482c-9a84-2e36f5a6eab0', 1332127, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Being Surgery fee/Hospital bill paid for Sophie Pius', '4332342', 1, '2020-08-26', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:33:20');
INSERT INTO `transactionmodel` (`id`, `uuid`, `rcpt_no`, `ticket_no`, `tx_type`, `pay_method`, `amount`, `amount_in_words`, `description`, `account_FK`, `paid`, `tx_date`, `postBy_FK`, `signature`, `createdAt`, `updatedAt`) VALUES
(271, '93ffc5c7-6ff8-44da-8910-485f0d4ea4b9', 1332127, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Being Surgery fee/Hospital bill paid for Sophie Pius', '2931923', 1, '2020-08-26', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:33:20'),
(272, 'da8e656f-311d-46e0-bda2-ddb554588f58', 5233604, 'undefined', 'DR', 'cheque', '1272000', 'undefined', 'Being Loan refund to Consinergy limited', '4332342', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:36:01'),
(273, 'ab014cc5-8884-4c49-8254-4cd3bbae8585', 5233604, 'undefined', 'CR', 'cheque', '1272000', 'undefined', 'Being Loan refund to Consinergy limited', '1820464', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:36:01'),
(274, '48d16a5b-459a-4af2-b2db-b5c23f3cd828', 2936579, 'undefined', 'DR', 'cheque', '5000000', 'undefined', 'Being loan refund to Felicia Ikegbulam', '4332342', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:37:50'),
(275, '2dd43866-5b19-481a-bfe6-8dc772fa300d', 2936579, 'undefined', 'CR', 'cheque', '5000000', 'undefined', 'Being loan refund to Felicia Ikegbulam', '1820464', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:37:50'),
(276, 'f916a33f-250c-404a-9f0e-95cca74aca33', 1238553, 'undefined', 'DR', 'cheque', '450000', 'undefined', 'Being interest on Loan paid to Okwudili Okoli', '4332342', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:40:18'),
(277, '9237e41a-5922-487f-b23a-c079d43a6c87', 1238553, 'undefined', 'CR', 'cheque', '450000', 'undefined', 'Being interest on Loan paid to Okwudili Okoli', '211787', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:40:18'),
(278, 'f46ca6d3-36e0-4ace-98c6-832aab81f24a', 4640176, 'undefined', 'DR', 'cheque', '600000', 'undefined', 'Being payment for Container', '4332342', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:57:44'),
(279, 'f5e93785-2425-4a9e-a95c-c1ec022e2ab8', 4640176, 'undefined', 'CR', 'cheque', '600000', 'undefined', 'Being payment for Container', '3337366', 1, '2020-08-25', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 10:57:44'),
(280, 'f0a6f890-1901-492d-96a7-c2374447720b', 1658497, 'undefined', 'DR', 'cheque', '500000', 'undefined', 'Being part payment for plot 740B, Cadestral zone B12, Duboyi District, Abuja', '4332342', 1, '2020-08-26', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:11:04'),
(281, '6f90e1b2-0485-4854-ab35-5ba1481cdb85', 1658497, 'undefined', 'CR', 'cheque', '500000', 'undefined', 'Being part payment for plot 740B, Cadestral zone B12, Duboyi District, Abuja', '534255', 1, '2020-08-26', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:11:04'),
(282, 'b071b62d-c198-432e-897e-9c1739e770dd', 2111794, 'undefined', 'DR', 'cheque', '4000000', 'undefined', 'Being loan refunded to Collins Okoroafor', '4332342', 1, '2020-08-26', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:27:22'),
(283, '12f6b257-b06b-4c39-b5b4-25f48f599dac', 2111794, 'undefined', 'CR', 'cheque', '4000000', 'undefined', 'Being loan refunded to Collins Okoroafor', '1820464', 1, '2020-08-26', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:27:22'),
(284, 'f15cf811-e507-417d-889f-7f9bc76acac1', 2828714, 'undefined', 'DR', 'cheque', '200000', 'undefined', 'Being legal fee paid to Bani Law Consulting', '4332342', 1, '2020-08-27', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:29:44'),
(285, 'e836738a-3a82-4084-8df8-493b7f3aaec7', 2828714, 'undefined', 'CR', 'cheque', '200000', 'undefined', 'Being legal fee paid to Bani Law Consulting', '040977', 1, '2020-08-27', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:29:44'),
(286, '8ea07f3a-512c-4a48-9404-288464e3330d', 203087, 'undefined', 'DR', 'cheque', '200000', 'undefined', 'Being refund made to Uju Madueke', '4332342', 1, '2020-08-27', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:31:08'),
(287, '38b80a89-7570-48ac-8d27-41e12bd354c5', 203087, 'undefined', 'CR', 'cheque', '200000', 'undefined', 'Being refund made to Uju Madueke', '4235155', 1, '2020-08-27', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:31:08'),
(288, '6f32cd5c-bf72-48fc-b5c0-2cfd86a75072', 2231872, 'undefined', 'DR', 'cheque', '250000', 'undefined', 'Being loan refund to Okoroafor Collins', '4332342', 1, '2020-08-27', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:32:35'),
(289, '6ceb76a8-3049-44cc-8bc2-8a029133659a', 2231872, 'undefined', 'CR', 'cheque', '250000', 'undefined', 'Being loan refund to Okoroafor Collins', '1820464', 1, '2020-08-27', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:32:35'),
(290, '0e5bfa4c-a601-46c2-86c6-fdf06b8e3439', 5132459, 'undefined', 'DR', 'cheque', '9000', 'undefined', 'Being 3% Agency fee paid to Iveren Alegh', '4332342', 1, '2020-08-28', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:34:29'),
(291, '30971f38-ca33-4214-8c2e-9c43f62460c4', 5132459, 'undefined', 'CR', 'cheque', '9000', 'undefined', 'Being 3% Agency fee paid to Iveren Alegh', '3059969', 1, '2020-08-28', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:34:29'),
(292, 'ef559169-030a-40c6-abc9-8305a459b636', 5234292, 'undefined', 'DR', 'cheque', '250000', 'undefined', 'Being loan refund through MD', '4332342', 1, '2020-08-31', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:36:04'),
(293, '20cf6619-939a-4cf5-8375-3fc5675bfb36', 5234292, 'undefined', 'CR', 'cheque', '250000', 'undefined', 'Being loan refund through MD', '1820464', 1, '2020-08-31', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:36:04'),
(294, '0a304418-bd30-493a-98c8-bcc7329a669c', 2936375, 'undefined', 'DR', 'cheque', '250000', 'undefined', 'Being loan refund through MD', '4332342', 1, '2020-08-31', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:38:18'),
(295, 'a6f62250-6a47-4c41-8cc2-255bdaf6a7be', 2936375, 'undefined', 'CR', 'cheque', '250000', 'undefined', 'Being loan refund through MD', '1820464', 1, '2020-08-31', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 11:38:18'),
(296, '2f6bfe2d-a60f-48c2-8ae4-48fe37ba3488', 53222, 'undefined', 'DR', 'cheque', '350000', 'undefined', 'Being Loan Interest paid', '4332342', 1, '2020-09-01', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 13:35:59'),
(297, '66c43c09-a4aa-4612-acab-4013086199eb', 53222, 'undefined', 'CR', 'cheque', '350000', 'undefined', 'Being Loan Interest paid', '211787', 1, '2020-09-01', 'GC@550', 'undefined', '2021-09-24', '2021-09-24 13:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `vendormodel`
--

CREATE TABLE `vendormodel` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `address_1` varchar(70) NOT NULL,
  `address_2` varchar(70) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `state` varchar(70) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` date DEFAULT NULL,
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `createdBy_FK` int(11) NOT NULL,
  `exp_account_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_accountmodel`
--
ALTER TABLE `account_accountmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `cusID` (`cusID`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `createdBy_FK` (`createdBy_FK`);

--
-- Indexes for table `bill_category`
--
ALTER TABLE `bill_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `vendor_FK` (`vendor_FK`);

--
-- Indexes for table `bill_itemsmodel`
--
ALTER TABLE `bill_itemsmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_FK` (`bill_FK`);

--
-- Indexes for table `bill_model`
--
ALTER TABLE `bill_model`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `building_category`
--
ALTER TABLE `building_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_FK` (`createdBy_FK`);

--
-- Indexes for table `customer_customermodel`
--
ALTER TABLE `customer_customermodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_no` (`phone_no`,`customer_email`,`uuid`),
  ADD KEY `createdBy_FK` (`createdBy_FK`);

--
-- Indexes for table `estimate_itemsmodel`
--
ALTER TABLE `estimate_itemsmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimate_ID` (`estimate_ID`),
  ADD KEY `item_FK` (`item_FK`);

--
-- Indexes for table `estimate_model`
--
ALTER TABLE `estimate_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `customer_FK` (`customer_FK`),
  ADD KEY `uuid_3` (`uuid`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_FK` (`createdBy_FK`);

--
-- Indexes for table `expense_itemsmodel`
--
ALTER TABLE `expense_itemsmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_FK` (`expense_FK`,`expense_ID`);

--
-- Indexes for table `expense_model`
--
ALTER TABLE `expense_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payee_account` (`payee_account`,`payment_account`),
  ADD KEY `createdBy_FK` (`createdBy_FK`);

--
-- Indexes for table `invoice_itemsmodel`
--
ALTER TABLE `invoice_itemsmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_FK` (`item_FK`),
  ADD KEY `invoice_ID` (`invoice_ID`);

--
-- Indexes for table `invoice_model`
--
ALTER TABLE `invoice_model`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `uuid_2` (`uuid`),
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `estimate_ID` (`estimate_ID`),
  ADD KEY `invoice_model_ibfk_1` (`asset_account_FK`);

--
-- Indexes for table `journal_model`
--
ALTER TABLE `journal_model`
  ADD KEY `je_ID` (`je_ID`,`uuid`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_FK` (`createdBy_FK`);

--
-- Indexes for table `prop_servicemodel`
--
ALTER TABLE `prop_servicemodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `asset_account_FK` (`asset_account_FK`,`expense_acc_FK`,`income_acc_FK`,`vendor_FK`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `sales_items_model`
--
ALTER TABLE `sales_items_model`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plot_number` (`plot_number`);

--
-- Indexes for table `sales_model`
--
ALTER TABLE `sales_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_FK` (`createdBy_FK`,`uuid`,`property_name`,`build_category`),
  ADD KEY `property` (`property`),
  ADD KEY `edited_By` (`edited_By`);

--
-- Indexes for table `sales_scheldule_model`
--
ALTER TABLE `sales_scheldule_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_uuid` (`sale_uuid`);

--
-- Indexes for table `transactionmodel`
--
ALTER TABLE `transactionmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_FK` (`account_FK`,`postBy_FK`);

--
-- Indexes for table `vendormodel`
--
ALTER TABLE `vendormodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`phone`),
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `exp_account_FK` (`exp_account_FK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_accountmodel`
--
ALTER TABLE `account_accountmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bill_category`
--
ALTER TABLE `bill_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bill_itemsmodel`
--
ALTER TABLE `bill_itemsmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bill_model`
--
ALTER TABLE `bill_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `building_category`
--
ALTER TABLE `building_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_customermodel`
--
ALTER TABLE `customer_customermodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `estimate_itemsmodel`
--
ALTER TABLE `estimate_itemsmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `estimate_model`
--
ALTER TABLE `estimate_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `expense_itemsmodel`
--
ALTER TABLE `expense_itemsmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `expense_model`
--
ALTER TABLE `expense_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `invoice_itemsmodel`
--
ALTER TABLE `invoice_itemsmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `invoice_model`
--
ALTER TABLE `invoice_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prop_servicemodel`
--
ALTER TABLE `prop_servicemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales_items_model`
--
ALTER TABLE `sales_items_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sales_model`
--
ALTER TABLE `sales_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sales_scheldule_model`
--
ALTER TABLE `sales_scheldule_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1996;

--
-- AUTO_INCREMENT for table `transactionmodel`
--
ALTER TABLE `transactionmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `vendormodel`
--
ALTER TABLE `vendormodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_accountmodel`
--
ALTER TABLE `account_accountmodel`
  ADD CONSTRAINT `account_accountmodel_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bill_category`
--
ALTER TABLE `bill_category`
  ADD CONSTRAINT `bill_category_ibfk_2` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bill_itemsmodel`
--
ALTER TABLE `bill_itemsmodel`
  ADD CONSTRAINT `bill_itemsmodel_ibfk_1` FOREIGN KEY (`bill_FK`) REFERENCES `bill_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_customermodel`
--
ALTER TABLE `customer_customermodel`
  ADD CONSTRAINT `customer_customermodel_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `estimate_itemsmodel`
--
ALTER TABLE `estimate_itemsmodel`
  ADD CONSTRAINT `estimate_itemsmodel_ibfk_1` FOREIGN KEY (`item_FK`) REFERENCES `prop_servicemodel` (`id`);

--
-- Constraints for table `estimate_model`
--
ALTER TABLE `estimate_model`
  ADD CONSTRAINT `estimate_model_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `estimate_model_ibfk_2` FOREIGN KEY (`customer_FK`) REFERENCES `customer_customermodel` (`id`);

--
-- Constraints for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD CONSTRAINT `expense_category_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `expense_model`
--
ALTER TABLE `expense_model`
  ADD CONSTRAINT `expense_model_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `invoice_model`
--
ALTER TABLE `invoice_model`
  ADD CONSTRAINT `invoice_model_ibfk_1` FOREIGN KEY (`asset_account_FK`) REFERENCES `account_accountmodel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_model_ibfk_2` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prop_servicemodel`
--
ALTER TABLE `prop_servicemodel`
  ADD CONSTRAINT `prop_servicemodel_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `vendormodel`
--
ALTER TABLE `vendormodel`
  ADD CONSTRAINT `vendormodel_ibfk_1` FOREIGN KEY (`createdBy_FK`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `vendormodel_ibfk_2` FOREIGN KEY (`exp_account_FK`) REFERENCES `account_accountmodel` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"accountingdb\",\"table\":\"customer_customermodel\"},{\"db\":\"accountingdb\",\"table\":\"auth_user\"},{\"db\":\"accountingdb\",\"table\":\"sales_model\"},{\"db\":\"accountingdb\",\"table\":\"sales_items_model\"},{\"db\":\"accountingdb\",\"table\":\"prop_servicemodel\"},{\"db\":\"accountingdb\",\"table\":\"account_accountmodel\"},{\"db\":\"accountingdb\",\"table\":\"transactionmodel\"},{\"db\":\"accountingdb\",\"table\":\"expense_itemsmodel\"},{\"db\":\"accountingdb\",\"table\":\"expense_model\"},{\"db\":\"accountingdb\",\"table\":\"expense_category\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-09-24 14:32:24', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
