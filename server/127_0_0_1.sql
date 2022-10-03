-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 03:18 PM
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
(19, '0e1dadc0-dd24-43a8-b8d0-3f5785e3', '3017181', 'Rent', 'ex_op', 'DR', '', 1, 0, '2021-05-28', '2021-05-28 12:17:30.181693', 28, '', NULL),
(20, 'ac2b7f20-df00-4f28-9699-e69ebc97', '3520835', 'Vehicle Running Expenses', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:20:35.837066', 28, '', NULL),
(23, 'b56bc3a9-7193-40c4-a275-f00078cf', '5422183', 'Audit & Consultancy Fees', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:22:54.184719', 28, '', NULL),
(24, 'db7a3b8b-4c98-418b-be0c-0070eb32', '2723495', 'Bank charges', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:23:27.496100', 28, '', NULL),
(25, '281a93a1-54a7-461b-bf77-afad800b', '3727629', 'Depreciation', 'ex_other', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:27:37.632821', 28, '', NULL),
(26, '196378d2-86fb-4718-a84f-39399e10', '930555', 'Cash Account', 'asset_ca_cash', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:30:09.556499', 28, '', NULL),
(27, '466cb863-9b6a-4cbe-95df-eff85f46', '4332342', 'Bank', 'asset_ca_cash', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:32:43.344164', 28, '', NULL),
(29, '3eb9ca80-3bfb-4acc-b9dd-eb157da4', '1112720', 'Nwankwo Chukwujekwu Donatus', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-06-11', '2021-06-11 12:12:11.759912', 29, '', 29),
(30, '64415e04-6947-47f9-918f-338fe3d6', '5158546', 'Barr Peter Dandam Kefas', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-06-11', '2021-06-11 12:58:51.554712', 29, '', 30),
(35, 'f16722d8-4225-4d7d-adea-f1f67ae9', '3431223', 'Imprest Account', 'ex_op', 'DR', '', 0, 0, '2021-06-28', '2021-06-28 13:31:34.234741', 28, '', NULL),
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
(95, 'f623d88c-89e6-4c5a-9b2d-c929144c', '3059969', 'Sales Commission', 'ex_op', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 10:59:30.971019', 28, '', NULL),
(96, 'ecc7e618-ad3d-4fdc-9222-dc31043b', '3337366', 'Building Construction', 'ex_cap', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 12:37:33.376778', 29, '', NULL),
(97, '322026f7-b449-49ab-9827-07541077', '4235155', 'REFUND', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 13:35:42.157067', 29, '', NULL),
(99, 'a0ad93d6-700f-4351-a518-7f9c94e7', '040977', 'Legal Fees', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 14:40:00.978617', 29, '', NULL),
(100, '6fcb4d0b-6c48-4260-ab21-214017a1', '211787', 'Interest On Loan', 'ex_interest', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:01:21.789265', 29, '', NULL),
(101, 'ba7b8608-557a-4018-95c7-2aa52563', '1820464', 'Loan Repayment', 'lia_cl_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:20:18.465576', 29, '', NULL),
(102, 'bbdd5293-75bb-476c-9d0f-3cc27ba7', '5725108', 'Compensation for Economic Trees', 'asset_adjustment', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:25:57.109582', 29, '', NULL),
(104, '02a2d936-3398-4e85-a5b0-39d3573d', '737272', 'Public Relations (PR)', 'ex_other', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 11:37:07.277793', 29, '', NULL),
(105, '9dd68356-d3b5-4097-b945-6f80d1b8', '1853414', 'SURVEY FEE', 'ex_other', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 11:53:18.418338', 29, '', NULL),
(106, '4fc053df-6393-4531-9c45-7b5f930b', '5012311', 'MDs Account', 'ex_op', 'CR', '', 0, 0, '2021-09-23', '2021-09-23 12:12:50.312528', 29, '', NULL),
(107, 'ffcb4d54-9a77-46c8-b8f4-c2f9ddc7', '2518264', 'General Operational Exp', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-11-16 13:37:26.400452', 29, 'GC@550', NULL),
(108, 'e82ba922-949f-4c43-8eec-6df3e4e2', '101996', 'Registration/Renewals', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:19:10.098348', 29, '', NULL),
(109, '5d8af8f9-1dc6-4447-b602-a10ccfee', '1949733', 'Training Expenses', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:49:19.734811', 29, '', NULL),
(110, '25a75095-e6cf-47ec-bd1e-a18ce10a', '380727', 'Advances', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:00:38.736448', 29, '', NULL),
(111, '2c32ccc6-2b28-427a-9285-4bc19f6a', '516181', 'Office Equipments', 'asset_adjustment', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:16:05.182160', 29, '', NULL),
(112, '9057c65d-0d66-4cc9-9a43-732cf23f', '534255', 'Purchase of properties', 'asset_ppe', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:34:05.256994', 29, '', NULL),
(114, '3c5caa9a-6d1b-44c8-8638-a8658fc7', '2438219', 'EXCAVATION ', 'ex_other', 'DR', '', 0, 0, '2021-09-24', '2021-09-24 14:38:24.221650', 28, '', NULL),
(115, '5bd138f7-6ec3-4754-acd8-eb7a306c', '3724569', 'CONSULTANCY', 'ex_cap', 'CR', '', 0, 0, '2021-09-28', '2021-09-28 10:24:37.572412', 28, '', NULL),
(116, '4cf2fecc-1384-41eb-afbf-37c99a42', '556268', 'Entertainment', 'ex_other', 'DR', '', 0, 0, '2021-09-29', '2021-09-29 11:56:05.286446', 28, '', NULL),
(117, 'f7198622-4796-49e6-808f-a59dc649', '145436', 'NAGIS', 'ex_other', 'CR', '', 0, 0, '2021-10-04', '2021-10-04 13:54:15.041734', 28, '', NULL),
(118, '7729b88c-cc92-4896-aeaf-62a18e65', '5840845', 'GIFT/CHARITY', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 10:40:58.851397', 28, '', NULL),
(119, '6faa5cbc-2616-476a-bbe8-5120b46c', '2951427', 'Medical Expenses', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 10:51:29.428840', 28, '', NULL),
(121, '2035a20d-38de-4a6e-be5a-064d3621', '306183', 'DONATIONS', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 14:06:30.183871', 28, '', NULL),
(122, '3c8ca6f7-631a-4222-bc64-ba86b9dd', '4824506', 'Discount Allowed', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 15:24:48.508495', 28, '', NULL),
(125, '37be00b5-af3d-497c-95a3-a4a46a00', '041404', 'Nsukka Building Project', 'asset_ppe', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 12:41:00.409602', 28, '', NULL),
(126, '6ea7c591-15ff-490a-a610-145c0d64', '1057254', 'Dependant/Relations', 'ex_other', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 12:57:10.254738', 28, '', NULL),
(127, '7c4e616f-5f69-46c8-9cbd-c6cd0a0f', '314480', 'Purchase of Furnitures', 'asset_adjustment', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 15:14:03.491279', 28, '', NULL),
(128, 'fd73c62f-8783-4e1d-866e-d36bd410', '3250405', 'Purchase of Office Equipments', 'asset_adjustment', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 15:50:32.408602', 28, '', NULL),
(129, 'fe1b63ab-3be3-4bc9-b533-f311b739', '145110', 'AMAC', 'ex_other', 'DR', '', 0, 0, '2021-10-07', '2021-10-07 10:45:01.112577', 28, '', NULL),
(130, '39e3c1e0-1c23-4595-9376-5142c4b0', '3052173', 'undefined', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-10-08', '2021-10-08 12:52:30.222750', 28, '', 86),
(131, 'd1b5acad-25a2-4159-b4e9-720e4947', '342610', 'undefined', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-10-08', '2021-10-08 13:02:34.627550', 28, '', 87),
(132, 'f1da4ba2-5119-4629-9c2c-b453f1ec', '2238313', 'Bulus Kwaji Luka', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-10-26', '2021-10-26 11:38:22.635390', 28, '', 88),
(133, '54ed2310-7d8c-48d9-9e52-ce0b9b63', '574102', 'Onyeka Okafor and Anthony Mbanekwe Oluchukwu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-11-15', '2021-11-15 14:04:57.462067', 28, '', 89);

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
(1, '', '$2b$10$gwWpHzLTc82G8emlo2X.xOyZHZgFlBGX5vvNZ/W0oI68ctrA10NJS', '2021-11-16 11:57:58.279000', '1', 'SA@4523', 'Santos', 'Admin', '07000000121', 'sadmin@gmail.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', NULL, NULL, 1, '2021-04-15', 0, NULL, '2021-11-16 10:57:58', ''),
(28, 'ad7729cb-bd67-4d20-a5a6-2fb3c2b75599', '$2b$10$yOlNrwETrKE9QPt8oeWmluwb.ZInUGxiBt0s.kOwdHyLzoXZUDk2G', '2021-11-22 10:28:41.268000', '1', 'GC@550', 'Grace', 'Young', '08035605424', 'gracechinyere.gce@gmail.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', 'http://192.168.0.101:5000/public\\upload\\photo_1631709449588_blob', NULL, 1, '2021-05-28', 1, '2021-05-28', '2021-11-22 09:28:41', 'GC@550'),
(29, 'ace4cf92-b071-429b-ba2b-af8b135461f5', '$2b$10$C9NY7qhyUgvifNmdijEHmuSlx.gICBXpKOk4tOKvEcutEt0HRz52.', '2021-10-12 12:34:43.153000', NULL, 'NO@550', 'Ngozi', 'Oche', '07064590086', 'ngozichukwung@yahoo.com', 0, '', 'entries', 'sales', 'expense', 'accountant', 'http://192.168.0.101:5000/public\\upload\\photo_1623406810150_blob', NULL, 1, '2021-05-28', 1, '2021-05-28', '2021-10-12 11:34:43', ''),
(30, '137182bd-d8ff-4adf-8745-800c993f9654', '$2b$10$H306CHXTRKxiP0kQA/SJD.NjAbkI74//B0qSUZEKRJ5urgneI/DZG', '2021-10-18 10:57:18.156000', '1', 'AC@514', 'Augustine', 'Chime', '08023058629', 'ifeanyi25a0@yahoo.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', NULL, NULL, 1, '2021-06-11', 28, '2021-06-11', '2021-10-18 09:57:18', 'AC@514');

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
(77, 'b5daf67c-35db-40fc-bb4c-ac965a9f4b42', 'Modestus Mbaeri', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', '08023439191', 'moorelinks2000@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', 'moorelinks2000@gmail.com', 'Business', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', 30, 'More Links Electrical Engineering Ltd.', 'http://192.168.0.101:5000/public\\upload\\photo_1629370668141_blob', 'Mrs Ifeoma Mbaneri', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja, 08124251085', 'Wife', 1, 0, '2021-08-19', '2021-08-19 10:56:59.350748', 28, '2019-11-05', 'GC@550', NULL),
(78, '0cbfe04c-bc9e-4f60-a368-3c2c79273ca5', 'Ukachukwu Chidiebere Emmanuel', 'Plot 348, Honda Spents, Apo New site, Abuja', '08066413223', 'chidiakachuks@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Plot 348, Honda Spents, Apo New site, Abuja', 'Police Sign Board, Apo', 'Business', 'Lakecity Plaza', 30, 'Police Sign Board, Apo', 'http://192.168.0.101:5000/public\\upload\\photo_1629371147206_blob', 'Chiamaka Lulian Emmanuel Ukachukwu', 'Plot 348, Honda Spents, Apo New site, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:05:02.552463', 28, '2020-06-29', '', NULL),
(79, 'd704088d-6035-4fc4-b4f9-95f1a487476b', 'Hussein A. Tijjani', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', '08035894885', 'ahmedtijjanihussein@gmail.com', 'Male', 'Married', 'Nigeria', 'Kogi', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Civil Servant', 'NSITF', 30, 'NSITF', 'http://192.168.0.101:5000/public\\upload\\photo_1629371712853_blob', 'Hadiza Jibril', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:14:51.058935', 28, '2020-10-05', '', NULL),
(80, '092eb36e-c762-4ca6-b3b9-8a8a8788608c', 'Barrister Navati Iliya', 'No 10, Pretorial Close, wuse Zone 6, Abuja', '0802313755', 'navatiliya@yahoo.com', 'Female', 'Married', 'Nigeria', 'Bauchi', 'No 10, Pretorial Close, wuse Zone 6, Abuja', 'No 10, Pretorial Close, wuse Zone 6, Abuja', 'civil Servant', 'Ministry', 30, 'Civil Servant', 'http://192.168.0.101:5000/public\\upload\\photo_1629372704717_blob', 'Kiwulma Iliya', 'Bauchi State Ministry of Education, Bauchi', 'Husband', 1, 0, '2021-08-19', '2021-08-19 11:30:08.199863', 28, '2016-12-20', '', NULL),
(81, '9ee2d41c-5356-427b-ae83-fb9ee802ba70', 'West Sobomabo Wariye', '48B Golden Spring Estate, Duboyi District, Abuja', '07039603545', 'sowarwest@yahoo.com', 'Male', 'Married', 'Nigeria', 'Rivers', '48B Golden Spring Estate, Duboyi District, Abuja', 'sowarwest@yahoo.com', 'Public Servant', 'PTDF', 30, 'PTDF', 'http://192.168.0.101:5000/public\\upload\\photo_1629373351392_blob', 'Pamela West', '48B Golden Spring Estate, Duboyi District, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:42:10.008449', 28, '0021-03-29', '', NULL),
(82, '272be562-869f-479f-b402-da52cbb5915f', 'Mrs Gbaagileh Judith Mbananden ', 'Plot III Kaura District', '08061271004', 'jgbaagileh@yahoo.com', 'Female', 'Married', 'Nigeria', 'Benue', 'Ate Gbaaegileh Villa, Nyihemba IA TO AKA', 'jgbaagileh@yahoo.com', 'Retired Civil Servant', 'Ministry', 30, 'Ministry', NULL, 'Charles Terkimbi Ate', 'Plot III Kaura District', 'Son', 1, 0, '2021-08-19', '2021-08-19 11:52:45.909416', 28, '2021-04-22', '', NULL),
(83, 'fe12dbb8-ad94-41dd-8a96-a1887e02af1e', 'Ishidi Ijudigal Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', '08167637648', 'ishidp.@gmail.com', 'Male', 'Single', 'Nigeria', 'Adamawa', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Business', 'Suite No 15C, Platinum Plaza', 30, 'saltagu Graphic Designs, Platinum Plaza, No 15C, Mabushi, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1631008675750_blob', 'Mr. Ijasini P. Ishidi', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Brother', 1, 0, '2021-09-07', '2021-09-07 09:57:22.858532', 28, '2021-03-25', '', NULL),
(84, '400bf7d0-33e1-42a4-af05-92a519f11763', 'Ishidi Ijasini Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', '07031899986', 'ijasinipur@gmail.com', 'Male', 'Married', 'Nigeria', 'Adamawa', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Business', 'Suite C16A, Platinum Plaza, Mabushi, Abuja', 30, 'Saltagu Global Graphic Services', 'http://192.168.0.101:5000/public\\upload\\photo_1631010092050_blob', 'Mr Ishidi Ijudigal Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Brother', 1, 0, '2021-09-07', '2021-09-07 10:09:52.724473', 28, '2021-02-25', '', NULL),
(85, 'c4e6f2a4-00c4-4b35-bc11-30a5e35fa16e', 'Audu Rabiu Morgan', 'Plot 64A Golden Spring Estate, Duboyi District Ring road II Abuja FCT', '08057272808', 'morganaudu@gmail.com', 'Male', 'Married', 'Nigeria', 'Kaduna', 'Chief of Moroas Palace Manchok Kaura L.G.A Kaduna', 'P.O.Box 4541 Garki Abuja', 'Public Servant', 'Nigerian Deposit Insurance Corporation (NDIC), Beside Unity Bank Bauchi, Bauchi State', 30, 'No 3 Bank road, Beside Unity Bank Bauchi, Bauchi state', NULL, 'Mariam Morgan Rabiu', 'Plot 64A Golden Spring Estate, Duboyi District Ring road II Abuja FCT', 'Wife', 1, 0, '2021-09-21', '2021-09-21 09:43:06.899417', 28, '2020-10-05', '', NULL),
(88, 'bb902560-b8a6-463e-af1a-d4dd8adea41c', 'Bulus Kwaji Luka', 'House 10C, Helen Close, Louis Court Estate, Apo - Dutse, Abuja', '08036500542', 'bulusluka1@gmail.com', 'Male', 'Married', 'Nigeria', 'Adamawa', 'Badirsa Geret - Jimeta Yola, Adamawa State', 'No 7 Durban Street, Wuse 2, Abuja', 'Estate Surveyor', 'Jawwal Associates Ltd', 30, 'No 1 Nacenta Close, Wuse II, Abuja', 'http://127.0.0.1:5000/public\\upload\\photo_1635245261542_88_Bulus_blob', 'Aisha Mesi D. Bulus', 'NAICON Garki, Abuja', 'Wife', 1, 0, '2021-10-26', '2021-10-26 10:38:22.262834', 28, '2021-07-22', '', NULL),
(89, 'e3b950d5-ae7a-42c8-9510-fe69dab87d7b', 'Onyeka Okafor and Anthony Mbanekwe Oluchukwu', 'Plot 1680 Zone E Apo Resettlement Abuja', '', 'tomyjessy23@gmail.com', 'Male', 'Married', 'Nigeria', 'Anambra', 'Plot 1680 Zone E Apo Resettlement Abuja', 'Plot 1680 Zone E Apo Resettlement Abuja', 'Business', 'Gudu Market', 29, '', NULL, 'Mbanekwe Jacinta Nneka', 'Plot 1680 Zone E Apo Resettlement Abuja', 'Wife', 1, 0, '2021-11-15', '2021-11-15 13:04:57.060272', 28, '2021-09-16', '', NULL);

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
(1, 'Agency Fee', 28, '2021-11-16', '2021-11-16 11:42:59'),
(2, 'Architectural/Engineering Design', 28, '2021-11-16', '2021-11-16 11:43:56'),
(3, 'Building/Construction', 28, '2021-11-16', '2021-11-16 11:44:35'),
(4, 'Consultancy Fees', 28, '2021-11-16', '2021-11-16 11:45:01'),
(5, 'Discount Allowed', 28, '2021-11-16', '2021-11-16 11:47:11'),
(6, 'Registration/Renewals', 28, '2021-11-16', '2021-11-16 11:47:53'),
(7, 'Purchase of Properties/Equipments', 28, '2021-11-16', '2021-11-16 11:48:29'),
(8, 'Compensation/Economic Trees', 28, '2021-11-16', '2021-11-16 11:48:57'),
(9, 'Excavation/Clearing', 28, '2021-11-16', '2021-11-16 11:49:24'),
(10, 'Public Relations', 28, '2021-11-16', '2021-11-16 11:50:45'),
(11, 'Refund', 28, '2021-11-16', '2021-11-16 11:51:07'),
(12, 'Legal Services/Fees', 28, '2021-11-16', '2021-11-16 11:51:34'),
(13, 'Survey Fee', 28, '2021-11-16', '2021-11-16 11:51:53'),
(14, 'Surrender Fee', 28, '2021-11-16', '2021-11-16 11:52:08'),
(15, 'General Expenses', 28, '2021-11-16', '2021-11-16 11:52:23'),
(16, 'Advances', 28, '2021-11-16', '2021-11-16 11:53:47'),
(17, 'Loan Interest', 28, '2021-11-16', '2021-11-16 11:54:12'),
(18, 'Office Consumables', 28, '2021-11-16', '2021-11-16 11:54:38'),
(19, 'Depreciation', 28, '2021-11-16', '2021-11-16 11:54:58'),
(20, 'Electricity Bills', 28, '2021-11-16', '2021-11-16 11:55:21'),
(21, 'Rent', 28, '2021-11-16', '2021-11-16 11:55:36'),
(22, 'Salaries/wages', 28, '2021-11-16', '2021-11-16 11:55:50'),
(23, 'Gift/Charity/Donations', 28, '2021-11-16', '2021-11-16 11:56:11'),
(24, 'Entertainment', 28, '2021-11-16', '2021-11-16 11:56:31'),
(25, 'Directors Expenses', 28, '2021-11-16', '2021-11-16 11:58:32'),
(26, 'Office Equipment/Furnitures', 28, '2021-11-16', '2021-11-16 12:01:04'),
(27, 'Vehicle Expenses (Pick-up)', 28, '2021-11-16', '2021-11-16 12:02:56'),
(28, 'Vehicle Expenses (Highlander & Venza))', 28, '2021-11-16', '2021-11-16 12:03:40'),
(29, 'Household Exp/Dependent & Relatives', 28, '2021-11-16', '2021-11-16 12:04:32'),
(30, 'Tax/VAT Liabilities', 28, '2021-11-16', '2021-11-16 12:05:09'),
(31, 'Educational Expenses', 28, '2021-11-16', '2021-11-16 12:05:35'),
(32, 'Transport/Travelling Expenses', 28, '2021-11-16', '2021-11-16 12:06:08'),
(33, 'Medical Expenses', 28, '2021-11-16', '2021-11-16 12:06:40'),
(34, 'Bank Charges', 28, '2021-11-16', '2021-11-16 12:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `expense_heading`
--

CREATE TABLE `expense_heading` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_heading`
--

INSERT INTO `expense_heading` (`id`, `name`, `createdBy_FK`, `createdAt`, `updatedAt`) VALUES
(1, 'Oxford Homes/Gaduwa Project', 28, '2021-11-16', '2021-11-16 11:02:21'),
(2, 'Santos Properties/ Dakwo Project', 28, '2021-11-16', '2021-11-16 11:03:21'),
(3, 'Varsity Garden Estate (Karshi Project)', 28, '2021-11-16', '2021-11-16 11:04:07'),
(4, 'Life Camp (Kyami) Project', 28, '2021-11-16', '2021-11-16 11:04:36'),
(5, 'Abacha Road Project', 28, '2021-11-16', '2021-11-16 11:07:10'),
(6, 'Operational Expenses', 28, '2021-11-16', '2021-11-16 11:07:29');

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
(1, 18, 'Being amount spent on office consumables bought for the month of November 2021', 8590, 3137843, '2021-10-27', '2021-11-16 12:40:30');

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
  `head` int(11) NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_model`
--

INSERT INTO `expense_model` (`id`, `uuid`, `expense_date`, `amount`, `payee_account`, `payment_account`, `pay_method`, `head`, `createdBy_FK`, `createdAt`, `updatedAt`) VALUES
(1, '3137843', '2021-10-27', '8590', 3431223, 4332342, 'cash', 6, 28, '2021-11-16', '2021-11-16 12:40:30');

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
(12, 'acfd8cda-1b40-4b87-b7f2-3c4d3618', 'property', '700 SQ M (4 Bedroom Fully Detached Duplex)', '', '', '', 5, '0000-00-00', 0, '', 23000000, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0, 23000000, 0, '2021-07-13', '2021-11-15 12:47:41', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(13, '296905bc-7abf-4cde-ada7-a471f330', 'property', '900 SQ M (5 Bedroom Fully Detached Duplex)', '', '', '', 50, '0000-00-00', 0, '', 30000000, '900 SQ M (5 Bedroom Fully Detached Duplex)', 0, 30000000, 0, '2021-07-13', '2021-09-07 12:26:13', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(14, '530d5146-1343-45b3-b926-50374ce1', 'property', '800 SQ M (4 Bedroom Semi Detached Duplex)', '', '', '', 36, '0000-00-00', 0, '', 30000000, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0, 30000000, 0, '2021-07-13', '2021-11-15 13:18:36', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(15, '2c04575f-6173-4fc2-ba90-8ad57450', 'property', '1000 SQ M (4 Bedroom Terrace Duplex)', '', '', '', 26, '0000-00-00', 0, '', 36000000, '1000 SQ M (4 Bedroom Terrace Duplex)', 0, 36000000, 0, '2021-07-13', '2021-11-15 12:52:46', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
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
(3, 1, '45000000', '4312810', 12, '1946', 4, 4, '2017-11-08', '2021-09-08 11:31:16'),
(4, 1, '21000000', '4114681', 15, '0014', 4, 6, '2017-01-09', '2021-09-08 11:31:16'),
(5, 1, '22000000', '4410743', 15, '120', 4, 6, '2021-05-18', '2021-09-09 09:41:56'),
(6, 1, '27000000', '5737627', 15, '407', 4, 7, '2021-06-04', '2021-09-09 09:41:56'),
(7, 1, '30000000', '407644', 14, '310', 4, 5, '2021-09-15', '2021-09-09 09:47:12'),
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
(39, 1, '23000000', '3253584', 15, '119', 4, 6, '2021-04-28', '2021-09-13 12:55:23'),
(40, 1, '8500000', '2955700', 14, '122', 4, 4, '2021-06-09', '2021-09-13 12:57:27'),
(41, 1, '18000000', '3357762', 12, '112', 4, 4, '2020-10-05', '2021-09-13 12:58:57'),
(42, 1, '23000000', '359226', 12, '126', 4, 4, '2021-07-23', '2021-09-13 13:00:04'),
(43, 1, '23000000', '100685', 15, '115', 4, 6, '2020-10-05', '2021-09-13 13:01:24'),
(44, 1, '6000000', '504432', 16, 'B-96', 5, 9, '2016-07-27', '2021-09-13 13:06:01'),
(45, 1, '5000000', '76939', 21, 'KY-13', 7, 10, '2015-10-05', '2021-09-13 13:08:55'),
(46, 1, '23000000', '19431', 15, '213', 4, 6, '2020-10-05', '2021-09-13 13:11:09'),
(47, 1, '23000000', '151160', 15, '117', 4, 6, '2020-11-25', '2021-09-13 13:15:00'),
(48, 1, '13000000', '615124', 12, '004', 4, 4, '2020-06-28', '2021-09-13 13:17:29'),
(49, 1, '25000000', '3517706', 15, '215', 4, 6, '2020-10-06', '2021-09-13 13:19:09'),
(51, 1, '23000000', '2221260', 15, '246', 4, 6, '2021-03-29', '2021-09-13 13:22:48'),
(54, 1, '23000000', '1144510', 15, '214', 4, 6, '2020-10-05', '2021-09-21 09:54:54'),
(57, 1, '20000000', '1151590', 14, '33', 4, 5, '2020-06-22', '2021-11-15 11:44:14'),
(62, 1, '44600000', '5222190', 12, '', 4, 4, '2018-11-22', '2021-11-15 12:27:37'),
(73, 1, '29000000', '255431', 14, '318', 4, 5, '2021-07-22', '2021-11-15 12:55:48'),
(76, 1, '23000000', '5722468', 14, '000', 4, 5, '2020-12-28', '2021-11-15 13:18:36');

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
(2, 4114681, NULL, 0, '73500000', 1000000, 360, 46, 'Agwandas Akawaya Andrawus', NULL, '2017-01-09', '2022-09-03', '2021-09-08', 28, '', '2021-09-08 11:31:16', 0, NULL, 0, NULL),
(3, 5737627, NULL, 0, '47000000', 15000000, 360, 45, 'Akan Pius Abank', NULL, '2021-06-04', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 09:41:56', 0, NULL, 0, NULL),
(4, 1045676, NULL, 0, '25000000', 6000000, 360, 27, 'Aliyu Ahmad Tijjani', NULL, '2020-05-14', '2022-09-03', '2021-09-09', 28, 'GC@550', '2021-09-09 09:47:12', 0, NULL, 0, NULL),
(5, 1847189, NULL, 0, '20000000', 0, 360, 32, 'AMAKOR BEDE OBIOMA', NULL, '2020-08-04', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 09:51:12', 0, NULL, 0, NULL),
(7, 5421450, NULL, 0, '39000000', 0, 360, 59, 'AwaK Iniobong', NULL, '2016-01-03', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:23:17', 0, NULL, 0, NULL),
(8, 2323463, NULL, 0, '10000000', 3000000, 360, 26, 'Bala Jane Kudu', NULL, '2020-06-23', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:26:22', 0, NULL, 0, NULL),
(9, 2826105, NULL, 0, '45000000', 0, 360, 30, 'Barr Peter Dandam Kefas', NULL, '2019-12-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:32:10', 0, NULL, 0, NULL),
(10, 2236623, NULL, 0, '11000000', 0, 360, 80, 'Barrister Navati Iliya', NULL, '2016-12-20', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:40:02', 0, NULL, 0, NULL),
(12, 4410743, NULL, 0, '22000000', 5000000, 360, 68, 'Chukwuma Celestine Obiajulu', NULL, '2021-05-18', '2022-09-03', '2021-09-09', 28, 'GC@550', '2021-09-09 11:12:37', 0, NULL, 0, NULL),
(13, 4312810, NULL, 0, '45000000', 0, 360, 66, 'Dakoru Asekutu', NULL, '2017-11-08', '2022-09-03', '2021-09-09', 28, 'GC@550', '2021-09-09 11:16:04', 0, NULL, 0, NULL),
(14, 1016829, NULL, 0, '17000000', 0, 360, 74, 'Emmanuel Okechukwu Ede', NULL, '2020-12-15', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:22:51', 0, NULL, 0, NULL),
(15, 5722468, NULL, 0, '23000000', 12000000, 360, 40, 'Ezire Onoriode', NULL, '2020-12-28', '2022-09-02', '2021-09-09', 28, 'GC@550', '2021-09-09 13:26:55', 0, NULL, 0, NULL),
(16, 127925, NULL, 0, '23000000', 7500000, 360, 64, 'Gubio Rukaiyah', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:36:32', 0, NULL, 0, NULL),
(17, 3836362, NULL, 0, '17000000', 0, 360, 79, 'Hussein A. Tijjani', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:45:30', 0, NULL, 0, NULL),
(18, 3645275, NULL, 0, '12500000', 8525000, 360, 76, 'Igboanugo Chizoba', NULL, '2021-06-14', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:50:11', 0, NULL, 0, NULL),
(19, 1457478, NULL, 0, '20000000', 2051000, 360, 84, 'Ishidi Ijasini Pur', NULL, '2021-02-25', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:58:48', 0, NULL, 0, NULL),
(20, 5458637, NULL, 0, '15000000', 5000000, 360, 83, 'Ishidi Ijudigal Pur', NULL, '2021-03-25', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:00:22', 0, NULL, 0, NULL),
(21, 1448, NULL, 0, '17000000', 0, 360, 50, 'John Adayu', NULL, '2020-09-29', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:06:14', 0, NULL, 0, NULL),
(22, 206750, NULL, 0, '18000000', 0, 360, 56, 'Kafidipe Ebenezer Imaben Precious', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:08:48', 0, NULL, 0, NULL),
(23, 548691, NULL, 0, '17000000', 0, 360, 33, 'Maina Afakirya Gadzana', NULL, '2020-09-29', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:10:49', 0, NULL, 0, NULL),
(24, 5510981, NULL, 0, '20000000', 12500000, 360, 75, 'Mbanekwe Anthony Oluchukwu', NULL, '2021-07-11', '2022-09-03', '2021-09-09', 28, 'GC@550', '2021-09-09 14:13:06', 0, NULL, 0, NULL),
(25, 1213457, NULL, 0, '17000000', 2000000, 360, 77, 'Modestus Mbaneri', NULL, '2020-07-08', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:15:00', 0, NULL, 0, NULL),
(26, 2415197, NULL, 0, '44500000', 0, 360, 54, 'Mr and Mrs Julius  Nwaigwe', NULL, '2017-03-21', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:19:47', 0, NULL, 0, NULL),
(27, 5319786, NULL, 0, '18000000', 7200000, 360, 82, 'Mrs Gbaagileh Judith Mbananden ', NULL, '2021-04-22', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:22:46', 0, NULL, 0, NULL),
(28, 5222190, NULL, 0, '44600000', 0, 360, 52, 'Mrs Ifeoma Michael', NULL, '2018-11-22', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 10:24:58', 0, NULL, 0, NULL),
(29, 425773, NULL, 0, '8000000', 1000000, 360, 28, 'Nnadi Chijioke Okadili ', NULL, '2018-11-22', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 10:29:40', 0, NULL, 0, NULL),
(30, 4429533, NULL, 0, '10000000', 0, 360, 58, 'Nnamani Nehemiah Chijioke', NULL, '2020-06-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:32:46', 0, NULL, 0, NULL),
(31, 5232985, NULL, 0, '16000000', 300000, 360, 29, 'Nwankwo Chukwujekwu Donatus', NULL, '2020-06-01', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 11:37:34', 0, NULL, 0, NULL),
(32, 2249512, NULL, 0, '8000000', 0, 360, 41, 'Nworah Okechukwu Nnadozie', NULL, '2020-06-01', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 11:51:05', 0, NULL, 0, NULL),
(33, 2046949, NULL, 0, '22000000', 500000, 360, 42, 'Odu Tony Ada', NULL, '2019-08-29', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 12:47:32', 0, NULL, 0, NULL),
(34, 3847528, NULL, 0, '45000000', 0, 360, 53, 'Okafor Izuchukwu Columbanus', NULL, '2018-11-22', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 12:50:51', 0, NULL, 0, NULL),
(35, 5750425, NULL, 0, '17000000', 5000000, 360, 44, 'Okeke Christopher Ogbonna', NULL, '2021-06-04', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:53:26', 0, NULL, 0, NULL),
(36, 3253584, NULL, 0, '23000000', 4600000, 360, 69, 'Oketta Jude Onesi', NULL, '2021-04-28', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 12:55:23', 0, NULL, 0, NULL),
(37, 2955700, NULL, 0, '8500000', 3000000, 360, 51, 'Okpara Chima Centus', NULL, '2021-06-09', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:57:27', 0, NULL, 0, NULL),
(38, 3357762, NULL, 0, '18000000', 5000000, 360, 55, 'Omaba Roseline Anita', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:58:57', 0, NULL, 0, NULL),
(39, 359226, NULL, 0, '23000000', 3000000, 360, 67, 'Onuzulike Ugochukwu Babatunde', NULL, '2021-07-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:00:04', 0, NULL, 0, NULL),
(40, 100685, NULL, 0, '23000000', 3000000, 360, 63, 'Onyema Ikenna Okechukwu', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:01:24', 0, NULL, 0, NULL),
(41, 504432, NULL, 0, '6000000', 0, 360, 62, 'Orume Esther Daniel', NULL, '2016-07-27', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:06:01', 0, NULL, 0, NULL),
(42, 76939, NULL, 0, '5000000', 0, 360, 61, 'Osrogu  Nigeria Limited', NULL, '2015-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:08:55', 0, NULL, 0, NULL),
(43, 19431, NULL, 0, '23000000', 6000000, 360, 36, 'Rabiu Morgan Mariam', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:11:08', 0, NULL, 0, NULL),
(44, 151160, NULL, 0, '23000000', 0, 360, 72, 'Ramatu Bage Takuma', NULL, '2020-11-25', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:15:00', 0, NULL, 0, NULL),
(45, 615124, NULL, 0, '13000000', 0, 360, 78, 'Ukachukwu Chidiebere Emmanuel', NULL, '2020-06-28', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 13:17:29', 0, NULL, 0, NULL),
(46, 3517706, NULL, 0, '25000000', 5000000, 360, 47, 'Ukonu Nnenna Ifendu', NULL, '2020-10-06', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:19:09', 0, NULL, 0, NULL),
(47, 1519539, NULL, 0, '17000000', 5500000, 360, 65, 'Uzoigwe Obioma Helen', NULL, '2021-04-26', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 13:21:16', 0, NULL, 0, NULL),
(48, 2221260, NULL, 0, '23000000', 4600000, 360, 81, 'West Sobomabo Wariye', NULL, '2021-03-29', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:22:48', 0, NULL, 0, NULL),
(49, 1151590, NULL, 0, '64450000', 8000000, 360, 49, 'Bawa Abdullahi Yahaya', NULL, '2020-06-22', '2022-09-15', '2021-09-21', 28, 'GC@550', '2021-09-21 09:02:03', 0, NULL, 0, NULL),
(50, 1144510, NULL, 0, '23000000', 7000000, 360, 85, 'Audu Rabiu Morgan', NULL, '2020-10-05', '2022-09-16', '2021-09-21', 28, '', '2021-09-21 09:54:54', 0, NULL, 0, NULL),
(51, 134, NULL, 0, '15000000', 0, 360, 35, 'Asogwa Ernest Chijioke', NULL, '2020-07-05', '2022-09-15', '2021-09-21', 28, 'GC@550', '2021-09-21 10:05:16', 0, NULL, 0, NULL),
(52, 255431, NULL, 0, '29000000', 0, 360, 88, 'Bulus Kwaji Luka', NULL, '2021-07-22', '2022-11-10', '2021-11-15', 28, '', '2021-11-15 12:55:48', 0, NULL, 0, NULL),
(53, 407644, NULL, 0, '30000000', 0, 360, 89, 'Onyeka Okafor and Anthony Mbanekwe Oluchukwu', NULL, '2021-09-15', '2022-11-09', '2021-11-15', 28, 'GC@550', '2021-11-15 13:08:53', 0, NULL, 0, NULL);

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
  `bank` int(11) DEFAULT NULL,
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

INSERT INTO `transactionmodel` (`id`, `uuid`, `rcpt_no`, `ticket_no`, `tx_type`, `pay_method`, `amount`, `amount_in_words`, `description`, `account_FK`, `bank`, `paid`, `tx_date`, `postBy_FK`, `signature`, `createdAt`, `updatedAt`) VALUES
(140, 'c9eaceb1-b3c2-4db9-88bb-f5f8ca212ae4', 5722468, '1370', 'CR', 'transfer', '12000000', 'Twelve Million ', 'Being Deposit for a unit of plot of land for four bedroom Semi Detached Duplex at Oxford Homes, Gaduwa District, 800 square metres vide Bank transfer - ZB06012021', '2810852', 0, 0, '2021-01-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-09-21', '2021-09-21 10:32:43'),
(141, 'faba2338-2692-40d7-bf14-80bf5ccd19fd', 1144510, '1371', 'CR', 'transfer', '4000000', 'Four Million', 'Being Deposit for a plot of land measuring 1000 Quare metres at Oxford Homes, Gaduwa District, Abuja Vide Bank Transfer - ZB 7501221', '385793', 0, 0, '2021-01-15', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-09-21', '2021-09-21 10:52:09'),
(912, '8fd132d2-3d3a-4ef4-8f22-8ba8f750c6cb', 4114681, '1401', 'CR', 'transfer', '1000000', 'One Million', 'Being Additional payment for a plot of 5-bedroom duplex at oxford home Gaduwa Abuja, vide bank transfer FBN010421', '4332342', 4332342, 0, '2021-01-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 09:53:47'),
(913, '9e254d93-9584-44ee-8d75-4732b90c30de', 100685, '1405', 'CR', 'transfer', '2500000', 'Two Million, Five Hundred Thousand', 'Being additional deposit for a plot of land measuring 1000m square meters at oxford home Gaduwa, Abuja vide bank transfer ', '4332342', 4332342, 0, '2021-02-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:06:54'),
(914, '3480aa77-76b4-4e82-82d6-ecd9c2f7b820', 2221260, '1407', 'CR', 'transfer', '2600000', 'Two Million, Six hundred Thousand', 'Being deposit for  a plot of land measuring 1000m square meters  at oxfor homes, Gaduwa District, Abuja vide bank ', '4332342', 4332342, 0, '2021-03-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:15:26'),
(915, 'de08ada3-49f9-4422-be19-5d5427142773', 100685, '1408', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being additional deposit for  plot of land measuring 1000m square meters at oxford homes Gaduwa District Abuja, vide bank', '4332342', 4332342, 0, '2021-05-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:24:14'),
(916, 'e22cb4a3-9921-43f0-b732-4519da9771b8', 2221260, '1410', 'CR', 'transfer', '2000000', 'Two Million', 'Being additional deposit for a plot of land measuring 1000m square at oxford homes Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-06-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:31:22'),
(917, 'd96bdf37-f32e-4391-9b08-1b6e9f89fb92', 5232985, '1411', 'CR', 'transfer', '300000', 'Three Hundred Thousand', 'Being additional deposit for a plot of land measuring 1000m square at oxford homes Gaduwa District, Abuja vide bank FB08042021', '4332342', 4332342, 0, '2021-08-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:36:23'),
(918, '08a13a03-977e-4b29-a616-27f077e86b6b', 5319786, '1414', 'CR', 'transfer', '3600000', 'Three Million Six Hundred Thousand', 'Being additional deposit for a plot of land measuring700m square at oxford homes Gaduwa District, Abuja vide bank ZB2d042021', '4332342', 4332342, 0, '2021-04-22', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:42:29'),
(919, 'ca10297e-5b78-4124-a220-7dfe2dbdab8a', 1519539, '1416', 'CR', 'transfer', '5500000', 'Five Million Five Hundred Thousand', 'Being additional deposit for a plot of land measuring 700m square at oxford homes Gaduwa District, Abuja', '4332342', 4332342, 0, '2021-04-27', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:45:59'),
(920, '94c3b683-b59c-48e9-89d9-bc3a2d797c47', 3253584, '1417', 'CR', 'transfer', '4600000', 'Four Million Six Hundred Thousand', 'Being additional deposit for a plot of land measuring 1000m square at oxford homes Gaduwa District, Abuja vide bank ZB05052021', '4332342', 4332342, 0, '2021-04-29', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:54:17'),
(921, 'f0fc40b5-0434-4856-b3d2-ef748cac5e4e', 1213457, '1422', 'CR', 'transfer', '2000000', 'Two Million', 'Being additional deposit for a plot of land measuring 700m square at oxford homes Gaduwa District, Abuja vide bank zb19052021', '4332342', 4332342, 0, '2021-05-19', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:59:15'),
(922, '4f599600-3598-417b-9dcf-75eaa8c754cd', 2955700, '1428', 'CR', 'transfer', '1000000', 'One Million', 'Being additional deposit for a unit of semi-detached duplex vide bank ZB04062021', '4332342', 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:06:34'),
(923, '7e319ee5-1362-4e23-9678-7afb9d8c2c7f', 5737627, '1430', 'CR', 'transfer', '7000000', 'Seven Million', 'Being additional deposit for a plot of land for 4-bedroom detached duplex vide bank zbn04062021', '4332342', 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:12:27'),
(924, 'e03dc510-4c2e-4f5e-8527-b40452b2fbdf', 5737627, '1431', 'CR', 'transfer', '8000000', 'Eight Million', 'Being deposit for a unit of 4-bedroom terrace duplex measuring 1000m square meter at oxford homes, Gaduwa Abuja  vide bank zbn04062021', '4332342', 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:18:01'),
(925, '9862eff6-901f-4729-8ebf-9afbb47b91f8', 5750425, '1432', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land for 4 bedroom duplex  at oxford homes Gaduwa District, Abuja vide bank zbn04062021', '4332342', 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:22:01'),
(926, '5c01cb1f-fc02-47e1-9070-c19063fd4abb', 1151590, '1434', 'CR', 'transfer', '3000000', 'Three Million', 'Being additional deposit for a land for unit of semi detached property at oxford homes Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-08-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:26:51'),
(927, '861e3221-9dbf-4b98-81a5-7ffcd8c50243', 4410743, '1435', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land measuring 1000m square for a unit of 5 bedroom fully detached duplex vide bank', '4332342', 4332342, 0, '2021-09-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:31:09'),
(928, '7debf546-bfea-4b7a-bc84-e3c5c6ef3ea4', 3645275, '1437', 'CR', 'transfer', '4120000', 'Four Million One Hundred And Twenty Thousand', 'Being deposit for a plot of land for a unit of 4 bedroom terrace duplex vide bank', '4332342', 4332342, 0, '2021-11-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:35:07'),
(929, '9e71129a-9c05-4431-b1e8-1dbe7cd1f5a8', 3645275, '1439', 'CR', 'transfer', '1050000', 'One Million Fifty Thousand', 'Being additional deposit for a  plot of land for a unit of 4 bedroom semi detached duplex vide bank', '4332342', 4332342, 0, '2021-06-14', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:43:34'),
(930, '7b1647ba-b7b0-4bf3-a2dd-6ff1fd8941d1', 3645275, '1440', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being additional payment for a  plot of land measuring 400m square meter for a unit of 4 bedroom semi detached duplex vide bank', '4332342', 4332342, 0, '2021-06-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:48:56'),
(931, 'e25d37c8-d23c-4728-badd-09bccc7c6cde', 3645275, '1441', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being additional deposit for a  plot of land for a unit of  semi detached duplex vide bank', '4332342', 4332342, 0, '2021-06-18', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:52:46'),
(932, '05c4f108-629b-4e44-85c4-f394b060cff8', 3645275, '1443', 'CR', 'transfer', '200000', 'Two Hundred Thousand ', 'Being additional deposit for a  plot of land for a unit of semi detached duplex plot vide bank', '4332342', 4332342, 0, '2021-06-21', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:56:17'),
(933, '6772d071-7d42-4213-ae21-dc88e0c15247', 2955700, '1444', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for a unit of semi detached duplex plot at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-06-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:11:04'),
(934, '6fb383b8-5562-4379-9a48-68175059c231', 5319786, '1446', 'CR', 'transfer', '3600000', 'Three Million Six Hundred Thousand', 'Being additional deposit for a unit of plot for 4 bedroom fully detached duplex vide bank', '4332342', 4332342, 0, '2021-06-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:22:15'),
(935, '3b9b67a9-178c-443c-aaa9-8bc464c8c5de', 3645275, '1445', 'CR', 'transfer', '1000000', 'One Million', 'Being past payment for a  plot of land for a unit of semi detached duplex at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-06-24', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:25:48'),
(936, '5e5adccb-0f1b-46aa-b384-fee77edb3771', 3645275, '1447', 'CR', 'transfer', '250000', 'Two Hundred And Fifty Thousand', 'Being additional payment for a  plot of land for a unit of semi detached duplex at oxford homes Gaduwa district, Abuja vide bank', '4332342', 4332342, 0, '2021-06-28', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:34:08'),
(937, '9d4cea4e-96ab-4f3b-92a3-ddfbe558c290', 3645275, '1449', 'CR', 'transfer', '400000', 'Four Hundred Thousand ', 'Being additional payment for a  plot of land at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-06-07', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:42:27'),
(938, 'e1f5b3df-0abf-4354-b38e-39cd0071c9bb', 3645275, '1451', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being additional payment for a  plot of land at oxford homes, Gaduwa District vide bank', '4332342', 4332342, 0, '2021-07-08', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:46:17'),
(939, 'd7a5b199-c5ec-4a7a-be48-668f29e7df64', 1151590, '1452', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for our property at oxford homes Gaduwa District, Abuja. vide bank', '', 4332342, 0, '2021-07-10', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:50:41'),
(940, 'cc7472b4-591b-4549-a1a2-78dadceed117', 5510981, '1053', 'CR', 'transfer', '10000000', 'Ten Million', 'Being deposit for a plot of land measuring 700m square unit of 4 bedroom fully detached duplex vide bank', '4332342', 4332342, 0, '2021-07-12', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:59:14'),
(941, 'c364c82c-3ec5-47f2-8ddd-68d1909ac4b7', 359226, '1458', 'CR', 'transfer', '3000000', 'Three Million', 'Being deposit for a plot of land for a unit of 4 bedroom fully detached duplex at oxford homes, Gaduwa District Abuja vide banki ', '4332342', 4332342, 0, '2021-07-22', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:08:23'),
(942, 'fb137e10-d577-44a0-97db-3397262c8760', 3645275, '1460', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being additional payment for the property at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-08-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:12:37'),
(943, '309d1ecd-d054-45ac-8672-5e3f7914bb41', 1457478, '1461', 'CR', 'transfer', '2051000', 'Two Million And Fifty One Thousand', 'Being payment for our property at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-08-11', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:18:22'),
(944, '0f8bfea1-37d3-4f20-a745-ca1243c896b5', 5510981, '1462', 'CR', 'transfer', '2500000', 'Two Million, Five Hundred Thousand', 'Being additional payment for a plot of land at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 4332342, 0, '2021-08-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:23:56'),
(945, '6c21beb8-55ce-47ad-b72c-d488958de785', 3645275, '1465', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being additional deposit for our property at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 4332342, 0, '2021-08-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:28:13'),
(946, 'a21d75e8-d4ac-4f04-92bd-287dbced87cd', 5458637, '1466', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional payment for the property at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 4332342, 0, '2021-08-25', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:33:48'),
(947, '5f8a6a91-900b-4bc5-8ecd-33eab313638d', 3645275, '1467', 'CR', 'transfer', '205000', 'Two Hundred And Five Thousand', 'Being additional payment for our property at oxford homes vide bank', '4332342', 4332342, 0, '2021-09-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:36:21'),
(948, 'd0501493-05f8-48ea-974b-c80dcb065fb7', 3357762, '1468', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 4332342, 0, '2021-09-07', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:44:01'),
(949, '30ab9268-94fe-4ea4-914c-5214c29ac87a', 19431, '1469', 'CR', 'transfer', '3000000', 'Three Million', 'Being additional deposit for the property at oxford homes, Gaduwa district, Abuja vide bank ', '4332342', 4332342, 0, '2021-07-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:50:51');

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
-- Indexes for table `expense_heading`
--
ALTER TABLE `expense_heading`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `head` (`head`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `expense_heading`
--
ALTER TABLE `expense_heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_itemsmodel`
--
ALTER TABLE `expense_itemsmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_model`
--
ALTER TABLE `expense_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `sales_model`
--
ALTER TABLE `sales_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sales_scheldule_model`
--
ALTER TABLE `sales_scheldule_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1996;

--
-- AUTO_INCREMENT for table `transactionmodel`
--
ALTER TABLE `transactionmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950;

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
-- Database: `accountingdb1`
--
CREATE DATABASE IF NOT EXISTS `accountingdb1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `accountingdb1`;

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
(19, '0e1dadc0-dd24-43a8-b8d0-3f5785e3', '3017181', 'Rent', 'ex_op', 'DR', '', 1, 0, '2021-05-28', '2021-05-28 12:17:30.181693', 28, '', NULL),
(20, 'ac2b7f20-df00-4f28-9699-e69ebc97', '3520835', 'Vehicle Running Expenses', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:20:35.837066', 28, '', NULL),
(23, 'b56bc3a9-7193-40c4-a275-f00078cf', '5422183', 'Audit & Consultancy Fees', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:22:54.184719', 28, '', NULL),
(24, 'db7a3b8b-4c98-418b-be0c-0070eb32', '2723495', 'Bank charges', 'ex_op', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:23:27.496100', 28, '', NULL),
(25, '281a93a1-54a7-461b-bf77-afad800b', '3727629', 'Depreciation', 'ex_other', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:27:37.632821', 28, '', NULL),
(26, '196378d2-86fb-4718-a84f-39399e10', '930555', 'Cash Account', 'asset_ca_cash', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:30:09.556499', 28, '', NULL),
(27, '466cb863-9b6a-4cbe-95df-eff85f46', '4332342', 'Bank', 'asset_ca_cash', 'DR', '', 0, 0, '2021-05-28', '2021-05-28 12:32:43.344164', 28, '', NULL),
(29, '3eb9ca80-3bfb-4acc-b9dd-eb157da4', '1112720', 'Nwankwo Chukwujekwu Donatus', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-06-11', '2021-06-11 12:12:11.759912', 29, '', 29),
(30, '64415e04-6947-47f9-918f-338fe3d6', '5158546', 'Barr Peter Dandam Kefas', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-06-11', '2021-06-11 12:58:51.554712', 29, '', 30),
(35, 'f16722d8-4225-4d7d-adea-f1f67ae9', '3431223', 'Imprest Account', 'ex_op', 'DR', '', 0, 0, '2021-06-28', '2021-06-28 13:31:34.234741', 28, '', NULL),
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
(95, 'f623d88c-89e6-4c5a-9b2d-c929144c', '3059969', 'Sales Commission', 'ex_op', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 10:59:30.971019', 28, '', NULL),
(96, 'ecc7e618-ad3d-4fdc-9222-dc31043b', '3337366', 'Building Construction', 'ex_cap', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 12:37:33.376778', 29, '', NULL),
(97, '322026f7-b449-49ab-9827-07541077', '4235155', 'REFUND', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 13:35:42.157067', 29, '', NULL),
(99, 'a0ad93d6-700f-4351-a518-7f9c94e7', '040977', 'Legal Fees', 'ex_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 14:40:00.978617', 29, '', NULL),
(100, '6fcb4d0b-6c48-4260-ab21-214017a1', '211787', 'Interest On Loan', 'ex_interest', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:01:21.789265', 29, '', NULL),
(101, 'ba7b8608-557a-4018-95c7-2aa52563', '1820464', 'Loan Repayment', 'lia_cl_other', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:20:18.465576', 29, '', NULL),
(102, 'bbdd5293-75bb-476c-9d0f-3cc27ba7', '5725108', 'Compensation for Economic Trees', 'asset_adjustment', 'DR', '', 0, 0, '2021-09-22', '2021-09-22 15:25:57.109582', 29, '', NULL),
(104, '02a2d936-3398-4e85-a5b0-39d3573d', '737272', 'Public Relations (PR)', 'ex_other', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 11:37:07.277793', 29, '', NULL),
(105, '9dd68356-d3b5-4097-b945-6f80d1b8', '1853414', 'SURVEY FEE', 'ex_other', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 11:53:18.418338', 29, '', NULL),
(106, '4fc053df-6393-4531-9c45-7b5f930b', '5012311', 'MDs Account', 'ex_op', 'CR', '', 0, 0, '2021-09-23', '2021-09-23 12:12:50.312528', 29, '', NULL),
(107, 'ffcb4d54-9a77-46c8-b8f4-c2f9ddc7', '2518264', 'General Operational Exp', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-11-16 13:37:26.400452', 29, 'GC@550', NULL),
(108, 'e82ba922-949f-4c43-8eec-6df3e4e2', '101996', 'Registration/Renewals', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:19:10.098348', 29, '', NULL),
(109, '5d8af8f9-1dc6-4447-b602-a10ccfee', '1949733', 'Training Expenses', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 12:49:19.734811', 29, '', NULL),
(110, '25a75095-e6cf-47ec-bd1e-a18ce10a', '380727', 'Advances', 'ex_op', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:00:38.736448', 29, '', NULL),
(111, '2c32ccc6-2b28-427a-9285-4bc19f6a', '516181', 'Office Equipments', 'asset_adjustment', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:16:05.182160', 29, '', NULL),
(112, '9057c65d-0d66-4cc9-9a43-732cf23f', '534255', 'Purchase of properties', 'asset_ppe', 'DR', '', 0, 0, '2021-09-23', '2021-09-23 13:34:05.256994', 29, '', NULL),
(114, '3c5caa9a-6d1b-44c8-8638-a8658fc7', '2438219', 'EXCAVATION ', 'ex_other', 'DR', '', 0, 0, '2021-09-24', '2021-09-24 14:38:24.221650', 28, '', NULL),
(115, '5bd138f7-6ec3-4754-acd8-eb7a306c', '3724569', 'CONSULTANCY', 'ex_cap', 'CR', '', 0, 0, '2021-09-28', '2021-09-28 10:24:37.572412', 28, '', NULL),
(116, '4cf2fecc-1384-41eb-afbf-37c99a42', '556268', 'Entertainment', 'ex_other', 'DR', '', 0, 0, '2021-09-29', '2021-09-29 11:56:05.286446', 28, '', NULL),
(117, 'f7198622-4796-49e6-808f-a59dc649', '145436', 'NAGIS', 'ex_other', 'CR', '', 0, 0, '2021-10-04', '2021-10-04 13:54:15.041734', 28, '', NULL),
(118, '7729b88c-cc92-4896-aeaf-62a18e65', '5840845', 'GIFT/CHARITY', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 10:40:58.851397', 28, '', NULL),
(119, '6faa5cbc-2616-476a-bbe8-5120b46c', '2951427', 'Medical Expenses', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 10:51:29.428840', 28, '', NULL),
(121, '2035a20d-38de-4a6e-be5a-064d3621', '306183', 'DONATIONS', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 14:06:30.183871', 28, '', NULL),
(122, '3c8ca6f7-631a-4222-bc64-ba86b9dd', '4824506', 'Discount Allowed', 'ex_other', 'DR', '', 0, 0, '2021-10-05', '2021-10-05 15:24:48.508495', 28, '', NULL),
(125, '37be00b5-af3d-497c-95a3-a4a46a00', '041404', 'Nsukka Building Project', 'asset_ppe', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 12:41:00.409602', 28, '', NULL),
(126, '6ea7c591-15ff-490a-a610-145c0d64', '1057254', 'Dependant/Relations', 'ex_other', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 12:57:10.254738', 28, '', NULL),
(127, '7c4e616f-5f69-46c8-9cbd-c6cd0a0f', '314480', 'Purchase of Furnitures', 'asset_adjustment', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 15:14:03.491279', 28, '', NULL),
(128, 'fd73c62f-8783-4e1d-866e-d36bd410', '3250405', 'Purchase of Office Equipments', 'asset_adjustment', 'DR', '', 0, 0, '2021-10-06', '2021-10-06 15:50:32.408602', 28, '', NULL),
(129, 'fe1b63ab-3be3-4bc9-b533-f311b739', '145110', 'AMAC', 'ex_other', 'DR', '', 0, 0, '2021-10-07', '2021-10-07 10:45:01.112577', 28, '', NULL),
(130, '39e3c1e0-1c23-4595-9376-5142c4b0', '3052173', 'undefined', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-10-08', '2021-10-08 12:52:30.222750', 28, '', 86),
(131, 'd1b5acad-25a2-4159-b4e9-720e4947', '342610', 'undefined', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-10-08', '2021-10-08 13:02:34.627550', 28, '', 87),
(132, 'f1da4ba2-5119-4629-9c2c-b453f1ec', '2238313', 'Bulus Kwaji Luka', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-10-26', '2021-10-26 11:38:22.635390', 28, '', 88),
(133, '54ed2310-7d8c-48d9-9e52-ce0b9b63', '574102', 'Onyeka Okafor and Anthony Mbanekwe Oluchukwu', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2021-11-15', '2021-11-15 14:04:57.462067', 28, '', 89),
(134, '70ec2936-d19e-454d-8d23-d428655c', '3136696', 'S. B Integrated Cannan Farm Ltd.', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-14', '2022-02-14 12:36:31.947964', 28, '', 90),
(135, '7c6e73cd-596c-43b3-8d96-ff33d0f0', '4829279', 'Faith Makitem Khanisary', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-15', '2022-02-15 12:29:48.322919', 28, '', 91),
(136, '444fd912-56c5-4e7a-b6ed-514f4f89', '5524844', 'Uche Etunnuh', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-15', '2022-02-15 15:24:55.847695', 28, '', 92),
(137, '1eecd16c-36cc-45d3-b3ed-ab49f1a4', '3732247', 'Emmanuel Aduda', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-15', '2022-02-15 15:32:37.253890', 28, '', 93),
(138, 'be67017e-4f34-4dd1-98e6-f47b569a', '1935851', 'Akoso Korshima David', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-16', '2022-02-16 12:35:19.899978', 28, '', 94),
(139, '54979690-4ff2-4409-b058-ba0d04a8', '2758607', 'Chinedu Moghala', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-16', '2022-02-16 14:58:27.614079', 28, '', 95),
(140, 'a4afadd9-8398-491d-aa19-bb560777', '26314', 'Akuma Igwe Nwankwo', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-16', '2022-02-16 15:03:26.025363', 28, '', 96),
(141, '4ddc4938-ae43-4c4f-82d4-a36ea6cd', '418419', 'Anamdi Chike K. & Anamdi Uju Chinelo', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-16', '2022-02-16 15:08:41.436280', 28, '', 97),
(142, 'fd7646a5-5136-422e-9fd5-fba52214', '4222579', 'Komolafe Joshua Olawale', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-16', '2022-02-16 15:22:42.590151', 28, '', 98),
(143, 'ba93752d-4cd6-4f2c-ad22-10aa8c3f', '2027210', 'Aisha F. Abdullahi', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-02-16', '2022-02-16 15:27:20.218874', 28, '', 99),
(144, 'ca807bdc-68aa-4fef-abd7-120a918c', '436405', 'Hon. Abbas Iorwuese Akoso', 'lia_cl_acc_pay', 'CR', '', 0, 0, '2022-03-15', '2022-03-15 14:06:43.441707', 28, '', 100);

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
(1, '', '$2b$10$gwWpHzLTc82G8emlo2X.xOyZHZgFlBGX5vvNZ/W0oI68ctrA10NJS', '2022-04-26 13:09:30.218000', '1', 'SA@4523', 'Santos', 'Admin', '07000000121', 'sadmin@gmail.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', NULL, NULL, 1, '2021-04-15', 0, NULL, '2022-04-26 12:09:30', ''),
(28, 'ad7729cb-bd67-4d20-a5a6-2fb3c2b75599', '$2b$10$yOlNrwETrKE9QPt8oeWmluwb.ZInUGxiBt0s.kOwdHyLzoXZUDk2G', '2022-05-18 14:04:49.593000', '1', 'GC@550', 'Grace', 'Young', '08035605424', 'gracechinyere.gce@gmail.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', 'http://192.168.0.101:5000/public\\upload\\photo_1631709449588_blob', NULL, 1, '2021-05-28', 1, '2021-05-28', '2022-05-18 13:04:49', 'GC@550'),
(29, 'ace4cf92-b071-429b-ba2b-af8b135461f5', '$2b$10$C9NY7qhyUgvifNmdijEHmuSlx.gICBXpKOk4tOKvEcutEt0HRz52.', '2021-10-12 12:34:43.153000', NULL, 'NO@550', 'Ngozi', 'Oche', '07064590086', 'ngozichukwung@yahoo.com', 0, '', 'entries', 'sales', 'expense', 'accountant', 'http://192.168.0.101:5000/public\\upload\\photo_1623406810150_blob', NULL, 1, '2021-05-28', 1, '2021-05-28', '2021-10-12 11:34:43', ''),
(30, '137182bd-d8ff-4adf-8745-800c993f9654', '$2b$10$H306CHXTRKxiP0kQA/SJD.NjAbkI74//B0qSUZEKRJ5urgneI/DZG', '2021-10-18 10:57:18.156000', '1', 'AC@514', 'Augustine', 'Chime', '08023058629', 'ifeanyi25a0@yahoo.com', 0, 'md', 'entries', 'sales', 'expense', 'accountant', NULL, NULL, 1, '2021-06-11', 28, '2021-06-11', '2021-10-18 09:57:18', 'AC@514');

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
(11, '5 Bedroom Duplex (Partial Development)', '2021-08-16', '2021-08-16 11:42:00', 28),
(12, 'Bungalows', '2022-02-15', '2022-02-15 12:10:12', 28),
(13, 'Both Commercial & Residential', '2022-04-26', '2022-04-26 14:30:07', 28);

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
(77, 'b5daf67c-35db-40fc-bb4c-ac965a9f4b42', 'Modestus Mbaeri', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', '08023439191', 'moorelinks2000@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', 'moorelinks2000@gmail.com', 'Business', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja', 30, 'More Links Electrical Engineering Ltd.', 'http://192.168.0.101:5000/public\\upload\\photo_1629370668141_blob', 'Mrs Ifeoma Mbaneri', 'Suite 3, AJB Mall plaza, Gudu District, FCT - Abuja, 08124251085', 'Wife', 1, 0, '2021-08-19', '2021-08-19 10:56:59.350748', 28, '2019-11-05', 'GC@550', NULL),
(78, '0cbfe04c-bc9e-4f60-a368-3c2c79273ca5', 'Ukachukwu Chidiebere Emmanuel', 'Plot 348, Honda Spents, Apo New site, Abuja', '08066413223', 'chidiakachuks@gmail.com', 'Male', 'Married', 'Nigeria', 'Imo', 'Plot 348, Honda Spents, Apo New site, Abuja', 'Police Sign Board, Apo', 'Business', 'Lakecity Plaza', 30, 'Police Sign Board, Apo', 'http://192.168.0.101:5000/public\\upload\\photo_1629371147206_blob', 'Chiamaka Lulian Emmanuel Ukachukwu', 'Plot 348, Honda Spents, Apo New site, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:05:02.552463', 28, '2020-06-29', '', NULL),
(79, 'd704088d-6035-4fc4-b4f9-95f1a487476b', 'Hussein A. Tijjani', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', '08035894885', 'ahmedtijjanihussein@gmail.com', 'Male', 'Married', 'Nigeria', 'Kogi', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Civil Servant', 'NSITF', 30, 'NSITF', 'http://192.168.0.101:5000/public\\upload\\photo_1629371712853_blob', 'Hadiza Jibril', 'Block D8, Flat 60, Estate 1, CBN Quarters, No9, Zawa Street, Garki 2, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:14:51.058935', 28, '2020-10-05', '', NULL),
(80, '092eb36e-c762-4ca6-b3b9-8a8a8788608c', 'Barrister Navati Iliya', 'No 10, Pretorial Close, wuse Zone 6, Abuja', '0802313755', 'navatiliya@yahoo.com', 'Female', 'Married', 'Nigeria', 'Bauchi', 'No 10, Pretorial Close, wuse Zone 6, Abuja', 'No 10, Pretorial Close, wuse Zone 6, Abuja', 'civil Servant', 'Ministry', 30, 'Civil Servant', 'http://192.168.0.101:5000/public\\upload\\photo_1629372704717_blob', 'Kiwulma Iliya', 'Bauchi State Ministry of Education, Bauchi', 'Husband', 1, 0, '2021-08-19', '2021-08-19 11:30:08.199863', 28, '2016-12-20', '', NULL),
(81, '9ee2d41c-5356-427b-ae83-fb9ee802ba70', 'West Sobomabo Wariye', '48B Golden Spring Estate, Duboyi District, Abuja', '07039603545', 'sowarwest@yahoo.com', 'Male', 'Married', 'Nigeria', 'Rivers', '48B Golden Spring Estate, Duboyi District, Abuja', 'sowarwest@yahoo.com', 'Public Servant', 'PTDF', 30, 'PTDF', 'http://192.168.0.101:5000/public\\upload\\photo_1629373351392_blob', 'Pamela West', '48B Golden Spring Estate, Duboyi District, Abuja', 'Wife', 1, 0, '2021-08-19', '2021-08-19 11:42:10.008449', 28, '0021-03-29', '', NULL),
(82, '272be562-869f-479f-b402-da52cbb5915f', 'Mrs Gbaagileh Judith Mbananden ', 'Plot III Kaura District', '08061271004', 'jgbaagileh@yahoo.com', 'Female', 'Married', 'Nigeria', 'Benue', 'Ate Gbaaegileh Villa, Nyihemba IA TO AKA', 'jgbaagileh@yahoo.com', 'Retired Civil Servant', 'Ministry', 30, 'Ministry', NULL, 'Charles Terkimbi Ate', 'Plot III Kaura District', 'Son', 1, 0, '2021-08-19', '2021-08-19 11:52:45.909416', 28, '2021-04-22', '', NULL),
(83, 'fe12dbb8-ad94-41dd-8a96-a1887e02af1e', 'Ishidi Ijudigal Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', '08167637648', 'ishidp.@gmail.com', 'Male', 'Single', 'Nigeria', 'Adamawa', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Business', 'Suite No 15C, Platinum Plaza', 30, 'saltagu Graphic Designs, Platinum Plaza, No 15C, Mabushi, Abuja', 'http://192.168.0.101:5000/public\\upload\\photo_1631008675750_blob', 'Mr. Ijasini P. Ishidi', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Brother', 1, 0, '2021-09-07', '2021-09-07 09:57:22.858532', 28, '2021-03-25', '', NULL),
(84, '400bf7d0-33e1-42a4-af05-92a519f11763', 'Ishidi Ijasini Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', '07031899986', 'ijasinipur@gmail.com', 'Male', 'Married', 'Nigeria', 'Adamawa', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Business', 'Suite C16A, Platinum Plaza, Mabushi, Abuja', 30, 'Saltagu Global Graphic Services', 'http://192.168.0.101:5000/public\\upload\\photo_1631010092050_blob', 'Mr Ishidi Ijudigal Pur', 'No 10 Niami Street, Wuse zone 2, Garki Abuja', 'Brother', 1, 0, '2021-09-07', '2021-09-07 10:09:52.724473', 28, '2021-02-25', '', NULL),
(85, 'c4e6f2a4-00c4-4b35-bc11-30a5e35fa16e', 'Audu Rabiu Morgan', 'Plot 64A Golden Spring Estate, Duboyi District Ring road II Abuja FCT', '08057272808', 'morganaudu@gmail.com', 'Male', 'Married', 'Nigeria', 'Kaduna', 'Chief of Moroas Palace Manchok Kaura L.G.A Kaduna', 'P.O.Box 4541 Garki Abuja', 'Public Servant', 'Nigerian Deposit Insurance Corporation (NDIC), Beside Unity Bank Bauchi, Bauchi State', 30, 'No 3 Bank road, Beside Unity Bank Bauchi, Bauchi state', NULL, 'Mariam Morgan Rabiu', 'Plot 64A Golden Spring Estate, Duboyi District Ring road II Abuja FCT', 'Wife', 1, 0, '2021-09-21', '2021-09-21 09:43:06.899417', 28, '2020-10-05', '', NULL),
(88, 'bb902560-b8a6-463e-af1a-d4dd8adea41c', 'Bulus Kwaji Luka', 'House 10C, Helen Close, Louis Court Estate, Apo - Dutse, Abuja', '08036500542', 'bulusluka1@gmail.com', 'Male', 'Married', 'Nigeria', 'Adamawa', 'Badirsa Geret - Jimeta Yola, Adamawa State', 'No 7 Durban Street, Wuse 2, Abuja', 'Estate Surveyor', 'Jawwal Associates Ltd', 30, 'No 1 Nacenta Close, Wuse II, Abuja', 'http://127.0.0.1:5000/public\\upload\\photo_1635245261542_88_Bulus_blob', 'Aisha Mesi D. Bulus', 'NAICON Garki, Abuja', 'Wife', 1, 0, '2021-10-26', '2021-10-26 10:38:22.262834', 28, '2021-07-22', '', NULL),
(89, 'e3b950d5-ae7a-42c8-9510-fe69dab87d7b', 'Onyeka Okafor and Anthony Mbanekwe Oluchukwu', 'Plot 1680 Zone E Apo Resettlement Abuja', '', 'tomyjessy23@gmail.com', 'Male', 'Married', 'Nigeria', 'Anambra', 'Plot 1680 Zone E Apo Resettlement Abuja', 'Plot 1680 Zone E Apo Resettlement Abuja', 'Business', 'Gudu Market', 29, '', NULL, 'Mbanekwe Jacinta Nneka', 'Plot 1680 Zone E Apo Resettlement Abuja', 'Wife', 1, 0, '2021-11-15', '2021-11-15 13:04:57.060272', 28, '2021-09-16', '', NULL),
(90, '1bfb0e7a-a529-4b6b-9ba6-fc8b809213d4', 'S. B Integrated Cannan Farm Ltd.', 'Plot NS 17123, Varsity Garden Estate, Pyanko Karshi, Karshi Development Area Karshi, Nasarawa State', '', '', 'Male', 'Married', 'Nigeria', '', 'Plot NS 17123, Varsity Garden Estate, Pyanko Karshi, Karshi Development Area Karshi, Nasarawa State', '', 'Business', '', 30, '', NULL, '', '', '', 1, 0, '2022-02-14', '2022-02-14 11:36:31.607424', 28, '2022-02-07', '', NULL),
(91, 'ceb136b5-62f8-41a9-a35a-ecfa4ec0b235', 'Faith Makitem Khanisary', '23, Lusaka Street, Zone 6, Wuse, Abuja', '', '', 'Female', 'Married', 'Nigeria', '', '23, Lusaka Street, Zone 6, Wuse, Abuja', '', '', '', 30, '', NULL, '', '', '', 1, 0, '2022-02-15', '2022-02-15 11:29:48.235185', 28, '2019-07-02', '', NULL),
(92, '09ee0633-1aba-4f6b-aaf5-631d31c1a453', 'Uche Etunnuh', 'No 3307 Fairview Road, Baltimore, MD, 21207', '', '', 'Male', '', 'Nigeria', '', 'No 3307 Fairview Road, Baltimore, MD, 21207', '', '', '', 30, '', NULL, '', '', '', 1, 0, '2022-02-15', '2022-02-15 14:24:55.804078', 28, '2020-06-06', '', NULL),
(93, 'ae4fbf73-a634-40fe-b528-38e3c5d5d0d1', 'Emmanuel Aduda', 'Karu, Abuja', '', '', 'Male', '', 'Nigeria', '', '', '', '', '', 30, '', NULL, '', '', '', 1, 0, '2022-02-15', '2022-02-15 14:32:37.211147', 28, '2016-01-09', '', NULL),
(94, '39f362a5-d5d3-4cbd-b292-29d0e475c546', 'Akoso Korshima David', 'Kings Court Estate, Flat AIA Third Avenue Dakingawa', '', '', 'Male', '', 'Nigeria', '', 'Kings Court Estate, Flat AIA Third Avenue Dakingawa', '', '', '', 0, '', NULL, '', '', '', 1, 0, '2022-02-16', '2022-02-16 11:35:19.812356', 28, '2016-07-13', '', NULL),
(95, 'e6f40a32-6f4f-4101-9689-463a1fbcb344', 'Chinedu Moghala', 'Nigeria Export - Import Bank, Plot 975 Cadastral AO, Central Business District, Garki, Abuja', '', '', 'Male', '', 'Nigeria', '', '', '', '', '', 0, '', NULL, '', '', '', 1, 0, '2022-02-16', '2022-02-16 13:58:27.564440', 28, '2016-03-24', '', NULL),
(96, 'e02f9860-d945-4d8e-89de-929b0804b727', 'Akuma Igwe Nwankwo', 'AB34, ECOWAS Drive, Sunnyvale Estate, Abuja', '', '', '', '', '', '', 'AB34, ECOWAS Drive, Sunnyvale Estate, Abuja', '', '', '', 0, '', NULL, '', '', '', 1, 0, '2022-02-16', '2022-02-16 14:03:25.981690', 28, '2016-02-18', '', NULL),
(97, '37db33ed-70ca-419d-b984-55400003d64b', 'Anamdi Chike K. & Anamdi Uju Chinelo', '15, Mount Symon Close, Clonsilla, Dublin 15, Ireland', '', '', '', '', 'Nigeria', '', '', '', '', '', 0, '', NULL, '', '', '', 1, 0, '2022-02-16', '2022-02-16 14:08:41.382584', 28, '2015-06-30', '', NULL),
(98, '8dbf877a-5468-4dda-b67c-5dd0f9dd754c', 'Komolafe Joshua Olawale', 'Plot 40, AA2, Kuje, Abuja', '08050933244', '', 'Male', 'Married', 'Nigeria', '', '', '', '', '', 0, '', NULL, 'Mrs Elizabeth O. Komowale', 'Plot 40, AA2, Kuje, Abuja', 'Wife', 1, 0, '2022-02-16', '2022-02-16 14:22:42.493255', 28, '2016-03-17', '', NULL),
(99, '5b4fb043-4142-4c5c-8ee6-1e83e7844353', 'Aisha F. Abdullahi', 'No 4, Johnson Street, Surulere, Lagos', '', '', 'Female', '', 'Nigeria', '', '', '', '', '', 0, '', NULL, '', '', '', 1, 0, '2022-02-16', '2022-02-16 14:27:20.161138', 28, '2021-06-04', '', NULL),
(100, 'ccd7697c-2172-46ff-b33d-8f085a05c47a', 'Hon. Abbas Iorwuese Akoso', 'Kings Court Estate, Flat AIA Third Avenue, Dakingawa', '', '', 'Male', '', 'Nigeria', '', 'Kings Court Estate, Flat AIA Third Avenue, Dakingawa', '', '', '', 30, '', NULL, '', '', '', 1, 0, '2022-03-15', '2022-03-15 13:06:43.354183', 28, '2016-07-13', '', NULL);

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
(1, 'Agency Fee', 28, '2021-11-16', '2021-11-16 11:42:59'),
(2, 'Architectural/Engineering Design', 28, '2021-11-16', '2021-11-16 11:43:56'),
(3, 'Building/Construction', 28, '2021-11-16', '2021-11-16 11:44:35'),
(4, 'Consultancy Fees', 28, '2021-11-16', '2021-11-16 11:45:01'),
(5, 'Discount Allowed', 28, '2021-11-16', '2021-11-16 11:47:11'),
(6, 'Registration/Renewals', 28, '2021-11-16', '2021-11-16 11:47:53'),
(7, 'Purchase of Properties/Equipments', 28, '2021-11-16', '2021-11-16 11:48:29'),
(8, 'Compensation/Economic Trees', 28, '2021-11-16', '2021-11-16 11:48:57'),
(9, 'Excavation/Clearing', 28, '2021-11-16', '2021-11-16 11:49:24'),
(10, 'Public Relations', 28, '2021-11-16', '2021-11-16 11:50:45'),
(11, 'Refund', 28, '2021-11-16', '2021-11-16 11:51:07'),
(12, 'Legal Services/Fees', 28, '2021-11-16', '2021-11-16 11:51:34'),
(13, 'Survey Fee', 28, '2021-11-16', '2021-11-16 11:51:53'),
(14, 'Surrender Fee', 28, '2021-11-16', '2021-11-16 11:52:08'),
(15, 'General Expenses', 28, '2021-11-16', '2021-11-16 11:52:23'),
(16, 'Advances', 28, '2021-11-16', '2021-11-16 11:53:47'),
(17, 'Loan Interest', 28, '2021-11-16', '2021-11-16 11:54:12'),
(18, 'Office Consumables', 28, '2021-11-16', '2021-11-16 11:54:38'),
(19, 'Depreciation', 28, '2021-11-16', '2021-11-16 11:54:58'),
(20, 'Electricity Bills', 28, '2021-11-16', '2021-11-16 11:55:21'),
(21, 'Rent', 28, '2021-11-16', '2021-11-16 11:55:36'),
(22, 'Salaries/wages', 28, '2021-11-16', '2021-11-16 11:55:50'),
(23, 'Gift/Charity/Donations', 28, '2021-11-16', '2021-11-16 11:56:11'),
(24, 'Entertainment', 28, '2021-11-16', '2021-11-16 11:56:31'),
(25, 'Directors Expenses', 28, '2021-11-16', '2021-11-16 11:58:32'),
(26, 'Office Equipment/Furnitures', 28, '2021-11-16', '2021-11-16 12:01:04'),
(27, 'Vehicle Expenses (Pick-up)', 28, '2021-11-16', '2021-11-16 12:02:56'),
(28, 'Vehicle Expenses (Highlander & Venza))', 28, '2021-11-16', '2021-11-16 12:03:40'),
(29, 'Household Exp/Dependent & Relatives', 28, '2021-11-16', '2021-11-16 12:04:32'),
(30, 'Tax/VAT Liabilities', 28, '2021-11-16', '2021-11-16 12:05:09'),
(31, 'Educational Expenses', 28, '2021-11-16', '2021-11-16 12:05:35'),
(32, 'Transport/Travelling Expenses', 28, '2021-11-16', '2021-11-16 12:06:08'),
(33, 'Medical Expenses', 28, '2021-11-16', '2021-11-16 12:06:40'),
(34, 'Bank Charges', 28, '2021-11-16', '2021-11-16 12:07:30'),
(35, 'Sundry Operations', 28, '2022-04-25', '2022-04-25 13:05:04'),
(36, 'Development fee', 28, '2022-05-05', '2022-05-05 12:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `expense_heading`
--

CREATE TABLE `expense_heading` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_heading`
--

INSERT INTO `expense_heading` (`id`, `name`, `createdBy_FK`, `createdAt`, `updatedAt`) VALUES
(1, 'Oxford Homes/Gaduwa Project', 28, '2021-11-16', '2021-11-16 11:02:21'),
(2, 'Santos Properties/ Dakwo Project', 28, '2021-11-16', '2021-11-16 11:03:21'),
(3, 'Varsity Garden Estate (Karshi Project)', 28, '2021-11-16', '2021-11-16 11:04:07'),
(4, 'Life Camp (Kyami) Project', 28, '2021-11-16', '2021-11-16 11:04:36'),
(5, 'Abacha Road Project', 28, '2021-11-16', '2021-11-16 11:07:10'),
(6, 'Operational Expenses', 28, '2021-11-16', '2021-11-16 11:07:29'),
(7, 'Household', 28, '2022-05-05', '2022-05-05 12:45:20');

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
(1, 18, 'Being amount spent on office consumables bought for the month of November 2021', 8590, 3137843, '2021-10-27', '2021-11-16 12:40:30'),
(2, 34, 'Being total bank charges for Nov. 2021, charged on Santos properties Nig. Ltd. Zenith Bank Account', 34017, 351166, '2021-11-30', '2022-04-21 13:23:00'),
(3, 3, 'Being amount transferred to Raymond Onuora Udefi for the supply of Blocks at Santos properties - Dakwo', 375000, 2423727, '2021-11-01', '2022-04-21 13:39:23'),
(4, 3, 'Being expense on Building/Dakwo, transferred to Collectable Marks Associate Ltd', 1586000, 2839151, '2021-11-02', '2022-04-21 13:42:02'),
(5, 15, 'Being amount withdrawn for MD for General expenses', 150000, 842123, '2021-11-02', '2022-04-21 13:44:05'),
(6, 26, 'Being payment made for the purchase of two laptops', 550000, 1144836, '2021-11-02', '2022-04-21 13:46:34'),
(7, 17, 'Loan Interest Repayment to Felicia Ikegbulam', 2300000, 414617, '2021-11-03', '2022-04-21 13:49:02'),
(8, 1, 'Being payment of agency fee made to MD', 50000, 849861, '2021-11-03', '2022-04-21 13:51:09'),
(9, 17, 'Being Loan Liquidation to Felicia Ikegbulam', 2000000, 155190, '2021-11-05', '2022-04-21 13:54:36'),
(10, 34, 'Additional bank charges for the month of Nov. 2021', 6133, 1537511, '2021-11-30', '2022-04-25 11:53:07'),
(11, 17, 'Being Loan refund made to Felicia Ikegbulam', 1000000, 1353534, '2021-11-10', '2022-04-25 11:55:48'),
(12, 15, 'Being amount withdrawn for general office expenses', 150000, 5455367, '2021-11-10', '2022-04-25 11:59:09'),
(13, 3, 'Being amount used to purchase building materials for Santos Estate', 350000, 1559446, '2021-11-10', '2022-04-25 12:01:21'),
(14, 31, 'Being Training Expenses Made', 200000, 3022811, '2021-11-11', '2022-04-25 12:26:48'),
(15, 3, 'Being payment for construction made to Collectable Marks Associate Ltd.', 400000, 227493, '2021-11-11', '2022-04-25 12:30:05'),
(16, 31, 'Being training Expenses for Mrs Anthonia Chime', 150000, 113092, '2021-11-11', '2022-04-25 13:02:26'),
(17, 3, 'Being payment to Onuora Udefi for the supply of 1000 blocks for Dakwo', 250000, 11590, '2021-11-13', '2022-04-25 13:42:43'),
(18, 1, 'Being 2% Agency fee paid to MD', 60000, 504230, '2021-11-14', '2022-04-25 13:43:57'),
(19, 3, 'Being payment to Collins Chiji Ogbonna for iron rods - Dakwo', 878000, 344641, '2021-11-15', '2022-04-25 13:46:23'),
(20, 10, 'PR -  Joseph Francis Zoba', 450000, 2946488, '2021-11-12', '2022-04-25 13:49:08'),
(21, 11, 'Being refund of Deposit transferred to Joseph Francis', 570000, 525053, '2021-11-15', '2022-04-27 11:55:48'),
(22, 15, 'Being withdrawal made for General Office Expenses', 60000, 5455353, '2021-11-16', '2022-04-27 11:57:21'),
(23, 15, 'Being Withdrawal made for General Office Expenses', 75000, 2757650, '2021-11-16', '2022-04-27 11:58:59'),
(24, 27, 'Being amount paid for the repair of Project Vehicle', 89700, 559149, '2021-11-16', '2022-04-27 12:00:40'),
(25, 11, 'Being Refund of Deposit made to Joseph Francis/GTB', 150000, 460311, '2021-11-17', '2022-04-27 12:02:10'),
(26, 11, 'Being Refund of Deposit to Joseph Francis/GTB', 175000, 162691, '2021-11-18', '2022-04-27 12:03:40'),
(27, 25, 'Being amount Transferred to Md\'s Account', 20000, 463262, '2021-11-23', '2022-04-27 12:04:58'),
(28, 1, 'being 2% Agency fee paid to MD/Mr. Ishidi', 100000, 45425, '2021-11-23', '2022-04-27 12:07:10'),
(29, 1, 'Being 4% Agency fee paid to Maxwell Zunman/ Mr. Ishidi', 200000, 167437, '2021-11-23', '2022-04-27 12:08:42'),
(30, 28, 'Being payment (Refund) to Mrs. Anthonia Ego Chime for vehicle repairs', 100000, 488125, '2021-11-23', '2022-04-27 12:10:20'),
(31, 1, 'Being 2% Agency fee paid to Ikegbulam Felicia Ngozi/UBA', 200000, 241084, '2021-11-24', '2022-04-27 12:12:27'),
(32, 13, 'Being Survey fee paid to Suleiman Salihu/ABN', 35000, 3312148, '2021-11-24', '2022-04-27 12:14:31'),
(33, 33, 'Medical Expenses transferred to Mrs. Anthonia Ego Chime', 100000, 3714748, '2021-11-26', '2022-04-27 12:16:47'),
(34, 11, 'Being Loan repayment to Mr. Augustine Onyishi', 650000, 5316210, '2021-11-26', '2022-04-27 12:19:03'),
(35, 22, 'November staff Salaries', 735000, 919348, '2021-11-26', '2022-04-27 12:22:30'),
(36, 11, 'Being refund of deposit to Joseph Francis Zoba/GTB', 350000, 3622508, '2021-11-27', '2022-04-27 12:24:02'),
(37, 6, 'Being Refund of deposit  to Paul Patience Ezra/UBA', 300000, 824696, '2021-11-27', '2022-04-27 12:25:57'),
(38, 34, 'Being total bank charges charged on Santos Properties Nig. Ltd. Zenith Bank Account ', 28442, 2330990, '2021-12-30', '2022-05-05 12:32:23'),
(39, 11, 'Being Loan interest paid to Paul, Patience Ezra/UBA (by Uchechi)', 637000, 2932349, '2021-12-01', '2022-05-05 12:36:20'),
(40, 33, 'Medical Expenses/MD', 1000000, 2636278, '2021-12-01', '2022-05-05 12:38:10'),
(41, 36, 'Being refund of Development fee paid to Mbanugo Chambers', 3000000, 374156, '2021-12-06', '2022-05-05 12:42:34'),
(42, 29, 'Being payment made to TOUFIC SABA for purchase of properties', 6500000, 2645678, '2021-12-08', '2022-05-05 12:48:16'),
(43, 29, 'Household Expenses/MD', 1000000, 2248987, '2021-12-08', '2022-05-05 12:57:28'),
(44, 29, 'Household furniture', 300000, 3457931, '2021-12-09', '2022-05-05 12:59:23'),
(45, 17, 'Loan Interest transferred to Betterment Investment Nigeria Ltd.', 350000, 2659651, '2021-12-10', '2022-05-05 13:00:55'),
(46, 29, 'Being Burial Expenses made', 500000, 11207, '2021-12-14', '2022-05-05 13:02:11'),
(47, 22, 'Being December 2021 staff salaries and allowances paid to staff', 822600, 172409, '2021-12-14', '2022-05-05 13:05:12'),
(48, 4, 'Being Audit and Consultancy Fee paid to Martin Onyenmuru & Co.', 541250, 185666, '2021-12-15', '2022-05-05 13:06:52'),
(49, 25, 'Director\'s allowance for Dec. 2021', 250000, 586374, '2021-12-17', '2022-05-05 13:09:32'),
(50, 17, 'Being loan interest paid to Felicia Ikegbulam', 720000, 389142, '2021-12-20', '2022-05-05 13:11:27'),
(51, 7, 'Being amount paid for the purchase of office equipment', 250000, 3311332, '2021-12-22', '2022-05-05 13:12:50'),
(52, 7, 'Bein Part payment for plot 416/KYAMI/SANTOS Transferred to Samson Ephraim Tarkighir', 400000, 5612350, '2021-12-24', '2022-05-05 13:16:53'),
(53, 3, 'Being amount paid to Fredrick Ogbonna Aga for work at plot 1946, Gaduwa/Santos', 40000, 5916117, '2021-12-24', '2022-05-05 13:20:33'),
(54, 11, 'Loan repayment/MD', 500000, 3920220, '2021-12-24', '2022-05-05 13:23:19'),
(55, 25, 'Sundry Expenses/MD', 350000, 2523330, '2021-12-27', '2022-05-05 13:25:54'),
(56, 25, 'Being amount paid for Hall booking  - National Christian center, for burial Service of songs ', 750000, 26310, '2021-12-28', '2022-05-05 13:28:26'),
(57, 29, 'Burial Expenses/MD', 2300000, 3228855, '2021-12-29', '2022-05-05 13:29:42'),
(58, 34, 'Being total bank charges on Santos Properties (Zenith bank) Account for January, 2022', 37675, 56565, '2022-01-31', '2022-05-12 10:58:56'),
(59, 29, 'Being Burial Expenses for MD\'s wife (Mrs Anthonia)', 1000000, 230183, '2022-01-05', '2022-05-12 11:02:22'),
(60, 29, 'Household Expenses', 150000, 282966, '2022-01-05', '2022-05-12 11:03:38'),
(61, 29, 'Being logistics expenses for Burial', 1250000, 443250, '2022-01-06', '2022-05-12 11:24:13'),
(62, 29, 'Household Expenses/MD', 475000, 1924582, '2022-01-11', '2022-05-12 11:25:28'),
(63, 31, 'Being School fees paid to Baze University', 1512500, 3425127, '2022-01-21', '2022-05-12 11:28:37'),
(64, 31, 'Being Tuition fee paid for Uchechi Onyishi', 10000000, 4328746, '2022-01-24', '2022-05-12 11:30:12'),
(65, 11, 'Being Loan refund to Felicia Ikegbulam', 2320000, 1631754, '2022-01-24', '2022-05-12 11:32:30'),
(66, 29, 'Household Expenses', 150000, 3432214, '2022-01-24', '2022-05-12 11:33:49'),
(67, 31, 'Being school fees paid for Uchechi Onyishi', 4500000, 553364, '2022-01-24', '2022-05-12 11:35:15'),
(68, 11, 'Being Refund made to OKERE IHUOMA ONYINYECHI/GTB', 4500000, 2135205, '2022-01-25', '2022-05-12 11:37:41'),
(69, 11, 'Being refund made to JOSEPH FRANCIS ZOBA/GTB', 600000, 483721, '2022-01-25', '2022-05-12 11:39:37'),
(70, 11, 'Being refund of deposit to Joseph Francis Zoba/GTB', 900000, 4339741, '2022-01-26', '2022-05-12 11:41:39'),
(71, 35, 'MD/JAN\'22 Sundry Benefits', 1000000, 4541541, '2022-01-26', '2022-05-12 11:44:28'),
(72, 1, 'Being 3% Agency fee paid to Maxwell Zunman', 90000, 3444832, '2022-01-26', '2022-05-12 11:46:35'),
(73, 22, 'Being January 2022 Staff salaries', 452000, 4146572, '2022-01-27', '2022-05-12 11:49:27'),
(74, 22, 'Being Jan. 2022 allowance/Agency fee paid to Iveren Angera Alegh', 383000, 3349994, '2022-01-27', '2022-05-12 11:51:22'),
(75, 29, 'CCTV/Nsukka/MD', 240000, 295149, '2022-01-30', '2022-05-12 11:53:26'),
(76, 34, 'Being total bank charges charged on Santos properties (Zenith Bank) Account', 48750, 335363, '2022-02-28', '2022-05-12 12:44:41'),
(77, 1, 'Being 2% Agency fee paid to MD', 250000, 2639356, '2022-02-01', '2022-05-16 11:50:51'),
(78, 11, 'Being balance of refund of deposit (Dakwo plot) paid to OKERE IHUOMA ONYINYECHI/GTB ', 3500000, 555043, '2022-02-02', '2022-05-16 11:55:13'),
(79, 1, 'Being 3% agency fee (Ihuoma) paid to MD ', 360000, 1056695, '2022-02-02', '2022-05-16 11:58:44'),
(80, 11, 'Being refund of deposit paid to JOSEPH FRANCIS ZOBA/GTB', 750000, 3059996, '2022-02-02', '2022-05-16 12:06:26'),
(81, 1, 'Being 2% Agency fee (MATUR) paid to MD', 285000, 326344, '2022-02-03', '2022-05-16 12:13:34'),
(82, 25, 'Directors\' Expenses', 150000, 4013505, '2022-02-04', '2022-05-16 12:15:14'),
(83, 35, 'Sundry Expenses/MD', 200000, 2015491, '2022-02-04', '2022-05-16 12:16:35'),
(84, 11, 'Being refund of deposit paid to Joseph Zoba/GTB', 1500000, 4116557, '2022-02-05', '2022-05-16 12:17:59'),
(85, 3, 'Being part payment to Fredrick Ogbonna Agah/FDPfor work done at Gaduwa plot', 500000, 518125, '2022-02-07', '2022-05-16 12:26:59'),
(86, 17, 'Being Loan interest paid to Mr. & Mrs Humphery Njoku', 350000, 527152, '2022-02-10', '2022-05-16 12:28:50'),
(87, 11, 'Being refund of deposit to Joseph Zoba/GTB', 875000, 5628614, '2022-02-13', '2022-05-16 12:30:22'),
(88, 11, 'Being Loan repayment paid to Felicia Ikegbulam/ABN', 5000000, 2830545, '2022-02-15', '2022-05-16 12:31:52'),
(89, 1, 'BEING 3% Agency fee paid to Agu Alfred Nnamdi/FCMB', 1800000, 958633, '2022-02-16', '2022-05-16 14:00:26'),
(90, 23, 'DUMANIS INTERNATIONAL GOSPEL C.', 570000, 33064, '2022-02-17', '2022-05-16 14:02:26'),
(91, 7, 'Being part payment/Plot 416/KYAMI transferred to SAMSON EPHRAIM TARKIGHIR', 1500000, 322267, '2022-02-17', '2022-05-16 14:05:13'),
(92, 3, 'Being payment to Collectable Marks Associate ltd. for hiring of Grader', 200000, 195225, '2022-02-17', '2022-05-16 14:06:48'),
(93, 11, 'Being refund made to Mbanugo Chambers', 2000000, 546114, '2022-02-17', '2022-05-16 14:08:26'),
(94, 3, 'Being payment for hiring of Caterpilar for work at Gaduwa', 250000, 328642, '2022-02-18', '2022-05-16 14:12:02'),
(95, 11, 'Being Loan liquidation transferred to Felicia Ikegbulam', 5800000, 812732, '2022-02-20', '2022-05-16 14:27:18'),
(96, 3, 'Being amount paid to Collectable Marks Associates for repairs at Gaduwa', 250000, 2427525, '2022-02-22', '2022-05-16 14:29:23'),
(97, 27, 'Being amount paid for the purchase of tyres for project vehicle', 150000, 302967, '2022-02-22', '2022-05-16 14:31:46'),
(98, 11, 'Being refund of deposit made to JOSEPH FRANCIS ZOBA/GTB', 350000, 5231477, '2022-02-22', '2022-05-16 14:33:19'),
(99, 17, 'Being Loan interest paid to Felicia Ikegbulam', 720000, 2533856, '2022-02-24', '2022-05-16 14:34:32'),
(100, 11, 'Being Refund of deposit (Santos Oxford Homes) made to JUDITH MBANANDEN GBAAGILEH/STBC', 5200000, 3834473, '2022-02-25', '2022-05-16 14:36:45'),
(101, 22, 'Being staff salaries for February 2022', 702000, 523661, '2022-02-28', '2022-05-16 14:40:02'),
(102, 11, 'Being refund of Deposit to Judith Mbanaden Gbaagileh/STBC', 2000000, 94038, '2022-02-28', '2022-05-16 14:41:52'),
(103, 1, 'Being 2% agency fee paid to MD', 1150000, 4559843, '2022-03-08', '2022-05-17 12:01:11'),
(104, 11, 'Loan liquidation/Transferred to Egr. Humphrey & Mrs Chibuzo Njoku', 5350000, 171474, '2022-03-11', '2022-05-17 12:05:05'),
(105, 12, 'Legal services', 500000, 115859, '2022-03-12', '2022-05-17 12:12:48'),
(106, 31, 'Being Travel/Scholl Expenses/Uchechi Onyishi', 1500000, 541280, '2022-03-12', '2022-05-17 12:16:15'),
(107, 11, 'Being refund of deposit paid to Ugochukwu Babatunde onuzuluike', 3000000, 2116198, '2022-03-15', '2022-05-17 12:23:05'),
(108, 1, 'Being 3% agency fee from Karshi plot paid to Ajayi Oluwafemi Mathew', 100000, 1123370, '2022-03-17', '2022-05-17 12:27:18'),
(109, 11, 'Being Refund of deposit made to JOSEPH FRANCIS ZOBA', 1500000, 2427104, '2022-03-22', '2022-05-17 12:37:05'),
(110, 17, 'Being Loan interest paid to Felicia Ikegbulam', 480000, 1137460, '2022-03-22', '2022-05-17 12:46:30'),
(111, 17, 'Being Loan Interest paid to Felicia Ikegbulam', 630000, 3646497, '2022-03-25', '2022-05-17 12:47:39'),
(112, 22, 'Being March staff salaries paid', 557000, 553880, '2022-03-28', '2022-05-17 12:54:15'),
(113, 31, 'School Project Expenses/ Chidiebere Ifeanyi Onyishi', 150000, 2154985, '2022-03-28', '2022-05-17 12:56:04'),
(114, 12, 'Being legal services paid to Godwin Okechukwu Diugwu', 100000, 115664, '2022-03-28', '2022-05-17 12:58:11'),
(115, 15, 'General office expenses', 150000, 1758419, '2022-03-29', '2022-05-17 12:59:30'),
(116, 1, 'Being 3% Agency fee paid to Maxwel Zunman/ABN', 150000, 37591, '2022-03-30', '2022-05-17 13:00:30'),
(117, 31, 'School fees for Uchechi Chidinma Onyishi', 4750000, 37098, '2022-03-16', '2022-05-17 13:02:43');

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
  `head` int(11) NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_model`
--

INSERT INTO `expense_model` (`id`, `uuid`, `expense_date`, `amount`, `payee_account`, `payment_account`, `pay_method`, `head`, `createdBy_FK`, `createdAt`, `updatedAt`) VALUES
(1, '3137843', '2021-10-27', '8590', 3431223, 4332342, 'cash', 6, 28, '2021-11-16', '2021-11-16 12:40:30'),
(2, '351166', '2021-11-30', '34017', 2723495, 4332342, 'cheque', 6, 28, '2022-04-21', '2022-04-21 13:23:00'),
(3, '2423727', '2021-11-01', '375000', 930555, 4332342, 'transfer', 2, 28, '2022-04-21', '2022-04-21 13:39:23'),
(4, '2839151', '2021-11-02', '1586000', 3337366, 4332342, 'transfer', 2, 28, '2022-04-21', '2022-04-21 13:42:02'),
(5, '842123', '2021-11-02', '150000', 930555, 4332342, 'cheque', 6, 28, '2022-04-21', '2022-04-21 13:44:05'),
(6, '1144836', '2021-11-02', '550000', 516181, 4332342, 'transfer', 6, 28, '2022-04-21', '2022-04-21 13:46:34'),
(7, '414617', '2021-11-03', '2300000', 1820464, 4332342, 'transfer', 6, 28, '2022-04-21', '2022-04-21 13:49:02'),
(8, '849861', '2021-11-03', '50000', 930555, 4332342, 'transfer', 6, 28, '2022-04-21', '2022-04-21 13:51:08'),
(9, '155190', '2021-11-05', '2000000', 1820464, 4332342, 'transfer', 6, 28, '2022-04-21', '2022-04-21 13:54:36'),
(10, '1537511', '2021-11-30', '6133', 4332342, 4332342, 'cheque', 6, 28, '2022-04-25', '2022-04-25 11:53:07'),
(11, '1353534', '2021-11-10', '1000000', 1820464, 4332342, 'transfer', 6, 28, '2022-04-25', '2022-04-25 11:55:48'),
(12, '5455367', '2021-11-10', '150000', 930555, 4332342, 'cheque', 6, 28, '2022-04-25', '2022-04-25 11:59:09'),
(13, '1559446', '2021-11-10', '350000', 3337366, 4332342, 'transfer', 2, 28, '2022-04-25', '2022-04-25 12:01:21'),
(14, '3022811', '2021-11-11', '200000', 1949733, 4332342, 'transfer', 6, 28, '2022-04-25', '2022-04-25 12:26:48'),
(15, '227493', '2021-11-11', '400000', 3337366, 4332342, 'transfer', 2, 28, '2022-04-25', '2022-04-25 12:30:04'),
(16, '113092', '2021-11-11', '150000', 1949733, 4332342, 'transfer', 6, 28, '2022-04-25', '2022-04-25 13:02:26'),
(17, '11590', '2021-11-13', '250000', 3337366, 4332342, 'transfer', 2, 28, '2022-04-25', '2022-04-25 13:42:43'),
(18, '504230', '2021-11-14', '60000', 3059969, 4332342, 'transfer', 6, 28, '2022-04-25', '2022-04-25 13:43:57'),
(19, '344641', '2021-11-15', '878000', 3337366, 4332342, 'transfer', 2, 28, '2022-04-25', '2022-04-25 13:46:23'),
(20, '2946488', '2021-11-12', '450000', 737272, 4332342, 'transfer', 6, 28, '2022-04-25', '2022-04-25 13:49:08'),
(21, '525053', '2021-11-15', '570000', 930555, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 11:55:48'),
(22, '5455353', '2021-11-16', '60000', 930555, 4332342, 'cheque', 6, 28, '2022-04-27', '2022-04-27 11:57:21'),
(23, '2757650', '2021-11-16', '75000', 930555, 4332342, 'cheque', 6, 28, '2022-04-27', '2022-04-27 11:58:59'),
(24, '559149', '2021-11-16', '89700', 3520835, 4332342, 'transfer', 6, 28, '2022-04-27', '2022-04-27 12:00:40'),
(25, '460311', '2021-11-17', '150000', 4235155, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:02:10'),
(26, '162691', '2021-11-18', '175000', 4235155, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:03:40'),
(27, '463262', '2021-11-23', '20000', 5012311, 4332342, 'transfer', 6, 28, '2022-04-27', '2022-04-27 12:04:58'),
(28, '45425', '2021-11-23', '100000', 3059969, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:07:10'),
(29, '167437', '2021-11-23', '200000', 3059969, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:08:41'),
(30, '488125', '2021-11-23', '100000', 3520835, 4332342, 'transfer', 6, 28, '2022-04-27', '2022-04-27 12:10:20'),
(31, '241084', '2021-11-24', '200000', 3059969, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:12:27'),
(32, '3312148', '2021-11-24', '35000', 1853414, 4332342, 'transfer', 3, 28, '2022-04-27', '2022-04-27 12:14:31'),
(33, '3714748', '2021-11-26', '100000', 2951427, 4332342, 'transfer', 6, 28, '2022-04-27', '2022-04-27 12:16:47'),
(34, '5316210', '2021-11-26', '650000', 1820464, 4332342, 'transfer', 6, 28, '2022-04-27', '2022-04-27 12:19:03'),
(35, '919348', '2021-11-26', '735000', 415194, 4332342, 'transfer', 6, 28, '2022-04-27', '2022-04-27 12:22:30'),
(36, '3622508', '2021-11-27', '350000', 4235155, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:24:02'),
(37, '824696', '2021-11-27', '300000', 4235155, 4332342, 'transfer', 1, 28, '2022-04-27', '2022-04-27 12:25:57'),
(38, '2330990', '2021-12-30', '28442', 2723495, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 12:32:23'),
(39, '2932349', '2021-12-01', '637000', 211787, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 12:36:20'),
(40, '2636278', '2021-12-01', '1000000', 2951427, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 12:38:10'),
(41, '374156', '2021-12-06', '3000000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 12:42:34'),
(42, '2645678', '2021-12-08', '6500000', 314480, 4332342, 'transfer', 7, 28, '2022-05-05', '2022-05-05 12:48:16'),
(43, '2248987', '2021-12-08', '1000000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-05', '2022-05-05 12:57:28'),
(44, '3457931', '2021-12-09', '300000', 314480, 4332342, 'transfer', 7, 28, '2022-05-05', '2022-05-05 12:59:23'),
(45, '2659651', '2021-12-10', '350000', 211787, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:00:55'),
(46, '11207', '2021-12-14', '500000', 5012311, 4332342, 'cheque', 7, 28, '2022-05-05', '2022-05-05 13:02:11'),
(47, '172409', '2021-12-14', '822600', 415194, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:05:12'),
(48, '185666', '2021-12-15', '541250', 5422183, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:06:52'),
(49, '586374', '2021-12-17', '250000', 5012311, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:09:32'),
(50, '389142', '2021-12-20', '720000', 211787, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:11:27'),
(51, '3311332', '2021-12-22', '250000', 516181, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:12:50'),
(52, '5612350', '2021-12-24', '400000', 534255, 4332342, 'transfer', 4, 28, '2022-05-05', '2022-05-05 13:16:53'),
(53, '5916117', '2021-12-24', '40000', 3337366, 4332342, 'transfer', 1, 28, '2022-05-05', '2022-05-05 13:20:33'),
(54, '3920220', '2021-12-24', '500000', 1820464, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:23:19'),
(55, '2523330', '2021-12-27', '350000', 5012311, 4332342, 'transfer', 6, 28, '2022-05-05', '2022-05-05 13:25:54'),
(56, '026310', '2021-12-28', '750000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-05', '2022-05-05 13:28:26'),
(57, '3228855', '2021-12-29', '2300000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-05', '2022-05-05 13:29:42'),
(58, '056565', '2022-01-31', '37675', 2723495, 4332342, 'transfer', 6, 28, '2022-05-12', '2022-05-12 10:58:56'),
(59, '230183', '2022-01-05', '1000000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:02:22'),
(60, '282966', '2022-01-05', '150000', 5012311, 4332342, 'cheque', 7, 28, '2022-05-12', '2022-05-12 11:03:38'),
(61, '443250', '2022-01-06', '1250000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:24:13'),
(62, '1924582', '2022-01-11', '475000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:25:27'),
(63, '3425127', '2022-01-21', '1512500', 1057254, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:28:37'),
(64, '4328746', '2022-01-24', '10000000', 1057254, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:30:12'),
(65, '1631754', '2022-01-24', '2320000', 211787, 4332342, 'transfer', 6, 28, '2022-05-12', '2022-05-12 11:32:30'),
(66, '3432214', '2022-01-24', '150000', 5012311, 4332342, 'cheque', 7, 28, '2022-05-12', '2022-05-12 11:33:48'),
(67, '553364', '2022-01-24', '4500000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:35:15'),
(68, '2135205', '2022-01-25', '4500000', 4235155, 4332342, 'transfer', 2, 28, '2022-05-12', '2022-05-12 11:37:41'),
(69, '483721', '2022-01-25', '600000', 4235155, 4332342, 'transfer', 2, 28, '2022-05-12', '2022-05-12 11:39:37'),
(70, '4339741', '2022-01-26', '900000', 4235155, 4332342, 'transfer', 2, 28, '2022-05-12', '2022-05-12 11:41:39'),
(71, '4541541', '2022-01-26', '1000000', 5012311, 4332342, 'transfer', 6, 28, '2022-05-12', '2022-05-12 11:44:28'),
(72, '3444832', '2022-01-26', '90000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-12', '2022-05-12 11:46:35'),
(73, '4146572', '2022-01-27', '452000', 415194, 4332342, 'transfer', 6, 28, '2022-05-12', '2022-05-12 11:49:27'),
(74, '3349994', '2022-01-27', '383000', 415194, 4332342, 'cheque', 6, 28, '2022-05-12', '2022-05-12 11:51:22'),
(75, '295149', '2022-01-30', '240000', 41404, 4332342, 'transfer', 7, 28, '2022-05-12', '2022-05-12 11:53:26'),
(76, '335363', '2022-02-28', '48750', 2723495, 4332342, 'transfer', 6, 28, '2022-05-12', '2022-05-12 12:44:41'),
(77, '2639356', '2022-02-01', '250000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 11:50:51'),
(78, '555043', '2022-02-02', '3500000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 11:55:13'),
(79, '1056695', '2022-02-02', '360000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 11:58:44'),
(80, '3059996', '2022-02-02', '750000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 12:06:26'),
(81, '326344', '2022-02-03', '285000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 12:13:34'),
(82, '4013505', '2022-02-04', '150000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-16', '2022-05-16 12:15:14'),
(83, '2015491', '2022-02-04', '200000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-16', '2022-05-16 12:16:35'),
(84, '4116557', '2022-02-05', '1500000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 12:17:59'),
(85, '518125', '2022-02-07', '500000', 3337366, 4332342, 'transfer', 1, 28, '2022-05-16', '2022-05-16 12:26:59'),
(86, '527152', '2022-02-10', '350000', 211787, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 12:28:50'),
(87, '5628614', '2022-02-13', '875000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 12:30:22'),
(88, '2830545', '2022-02-15', '5000000', 1820464, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 12:31:52'),
(89, '958633', '2022-02-16', '1800000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:00:26'),
(90, '33064', '2022-02-17', '570000', 5840845, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:02:26'),
(91, '322267', '2022-02-17', '1500000', 534255, 4332342, 'transfer', 4, 28, '2022-05-16', '2022-05-16 14:05:13'),
(92, '195225', '2022-02-17', '200000', 3337366, 4332342, 'transfer', 1, 28, '2022-05-16', '2022-05-16 14:06:47'),
(93, '546114', '2022-02-17', '2000000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:08:26'),
(94, '328642', '2022-02-18', '250000', 3337366, 4332342, 'transfer', 1, 28, '2022-05-16', '2022-05-16 14:12:02'),
(95, '812732', '2022-02-20', '5800000', 1820464, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:27:18'),
(96, '2427525', '2022-02-22', '250000', 3337366, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:29:23'),
(97, '302967', '2022-02-22', '150000', 3520835, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:31:46'),
(98, '5231477', '2022-02-22', '350000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:33:19'),
(99, '2533856', '2022-02-24', '720000', 211787, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:34:32'),
(100, '3834473', '2022-02-25', '5200000', 4235155, 4332342, 'transfer', 1, 28, '2022-05-16', '2022-05-16 14:36:45'),
(101, '523661', '2022-02-28', '702000', 415194, 4332342, 'transfer', 6, 28, '2022-05-16', '2022-05-16 14:40:02'),
(102, '94038', '2022-02-28', '2000000', 4235155, 4332342, 'transfer', 1, 28, '2022-05-16', '2022-05-16 14:41:52'),
(103, '4559843', '2022-03-08', '1150000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:01:11'),
(104, '171474', '2022-03-11', '5350000', 1820464, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:05:05'),
(105, '115859', '2022-03-12', '500000', 40977, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:12:47'),
(106, '541280', '2022-03-12', '1500000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-17', '2022-05-17 12:16:15'),
(107, '2116198', '2022-03-15', '3000000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:23:05'),
(108, '1123370', '2022-03-17', '100000', 3059969, 4332342, 'transfer', 3, 28, '2022-05-17', '2022-05-17 12:27:18'),
(109, '2427104', '2022-03-22', '1500000', 4235155, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:37:05'),
(110, '1137460', '2022-03-22', '480000', 211787, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:46:30'),
(111, '3646497', '2022-03-25', '630000', 211787, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:47:39'),
(112, '553880', '2022-03-28', '557000', 415194, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:54:15'),
(113, '2154985', '2022-03-28', '150000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-17', '2022-05-17 12:56:04'),
(114, '115664', '2022-03-28', '100000', 40977, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:58:11'),
(115, '1758419', '2022-03-29', '150000', 5012311, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 12:59:30'),
(116, '37591', '2022-03-30', '150000', 3059969, 4332342, 'transfer', 6, 28, '2022-05-17', '2022-05-17 13:00:30'),
(117, '37098', '2022-03-16', '4750000', 5012311, 4332342, 'transfer', 7, 28, '2022-05-17', '2022-05-17 13:02:43');

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
(12, 'acfd8cda-1b40-4b87-b7f2-3c4d3618', 'property', '700 SQ M (4 Bedroom Fully Detached Duplex)', '', '', '', 36, '0000-00-00', 0, '', 23000000, '700 SQ M (4 Bedroom Fully Detached Duplex)', 0, 23000000, 0, '2021-07-13', '2022-04-26 14:05:48', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(13, '296905bc-7abf-4cde-ada7-a471f330', 'property', '900 SQ M (5 Bedroom Fully Detached Duplex)', '', '', '', 50, '0000-00-00', 0, '', 30000000, '900 SQ M (5 Bedroom Fully Detached Duplex)', 0, 30000000, 0, '2021-07-13', '2021-09-07 12:26:13', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(14, '530d5146-1343-45b3-b926-50374ce1', 'property', '800 SQ M (4 Bedroom Semi Detached Duplex)', '', '', '', 35, '0000-00-00', 0, '', 30000000, '800 SQ M (4 Bedroom Semi Detached Duplex)', 0, 30000000, 0, '2021-07-13', '2022-04-26 14:17:47', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(15, '2c04575f-6173-4fc2-ba90-8ad57450', 'property', '1000 SQ M (4 Bedroom Terrace Duplex)', '', '', '', 18, '0000-00-00', 0, '', 36000000, '1000 SQ M (4 Bedroom Terrace Duplex)', 0, 36000000, 0, '2021-07-13', '2022-04-26 13:57:00', 'GC@550', 0, 0, 28, 0, 0, 0, 4, 0),
(16, '2ddc1598-2264-494b-9ee4-4c9a076f', 'property', '550 SQ M (3 Bedroom Bungalow) Carcass', '', '', '', 28, '0000-00-00', 0, '', 25000000, '550 SQ M (3 Bedroom Bungalow) Carcass', 0, 25000000, 0, '2021-07-13', '2022-04-26 12:34:52', 'GC@550', 0, 0, 28, 0, 0, 0, 5, 0),
(17, '5229f1f5-87cc-4f59-83b4-fefcb74c', 'property', '700 SQ M (4 Bedroom Duplex) Decked Only', '', '', '', 28, '0000-00-00', 0, '', 30000000, '700 SQ M (4 Bedroom Duplex) Decked Only', 0, 30000000, 0, '2021-07-13', '2022-04-26 12:44:51', 'GC@550', 0, 0, 28, 0, 0, 0, 5, 0),
(18, 'b2d712ef-e962-4da3-814f-37471d6b', 'property', '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', '', '', '', 26, '0000-00-00', 0, '', 30000000, '700 SQ M ( 5 Bedroom Duplex) Partial Dev.', 0, 30000000, 0, '2021-07-13', '2022-04-26 12:44:51', 'GC@550', 0, 0, 28, 0, 0, 0, 5, 0),
(19, 'a30c2a90-74d5-4125-b61d-d7d7d6e5', 'property', '500 SQ M (Land Only)', '', '', '', 39, '0000-00-00', 0, '', 2500000, '500 SQ M (Land Only)', 0, 2500000, 0, '2021-07-13', '2022-04-26 12:46:25', 'GC@550', 0, 0, 28, 0, 0, 0, 6, 0),
(20, '111bc94a-b46d-4e80-a863-e2cf1ce3', 'property', '600SQ M (3 bedroom Bungalow) DPC, Completed', '', '', '', 25, '0000-00-00', 0, '', 5000000, '600SQ M (3 bedroom Bungalow) DPC, Completed', 0, 5000000, 0, '2021-07-13', '2022-02-16 14:16:26', 'GC@550', 0, 0, 28, 0, 0, 0, 6, 0),
(21, '2eddedef-1749-482a-bc74-69ad254d', 'property', '600 SQ (Land Only)', '', '', '', 29, '0000-00-00', 0, '', 12000000, '600 SQ (Land Only)', 0, 12000000, 0, '2021-07-13', '2022-02-16 14:18:52', 'GC@550', 0, 0, 28, 0, 0, 0, 7, 0),
(22, 'bd75dabb-9d24-4a2d-8bf7-7ff526c3', 'property', '10000 SQ M ( Recreational Land)', '', '', '', 10, '0000-00-00', 0, '', 150000000, '10000 SQ M ( Recreational Land)', 0, 150000000, 0, '2021-07-13', '2022-02-16 14:16:59', 'GC@550', 0, 0, 28, 0, 0, 0, 7, 0),
(23, 'd5c0f041-9c45-438f-bae5-0e82ca2f', 'property', 'A Mini Estate (43 Flats) Lot', '', '', '', 43, '0000-00-00', 0, '', 600000000, 'A Mini Estate (43 Flats) Lot', 0, 600000000, 0, '2021-07-13', '2022-02-16 14:17:32', 'GC@550', 0, 0, 28, 0, 0, 0, 8, 0),
(24, '46ccbafb-9b5e-49bc-915c-75d25cdf', 'property', '5000 SQM', '', '', '', 48, '0000-00-00', 0, '', 5000000, 'Property for Residential and Commercial purposes', 0, 5000000, 0, '2022-04-26', '2022-04-26 14:32:19', '', 0, 0, 28, 0, 0, 0, 6, 0);

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
  `plot_number` varchar(200) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `building_category` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Running',
  `createdAt` date DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_items_model`
--

INSERT INTO `sales_items_model` (`id`, `qty`, `amount`, `sale_ID`, `property`, `plot_number`, `location`, `building_category`, `status`, `createdAt`, `date_purchase`, `updatedAt`) VALUES
(1, 1, '23000000', '1052211', 15, '118', 4, 6, 'Running', '2020-11-25', NULL, '2021-09-08 10:52:59'),
(2, 1, '8000000', '4114681', 18, '2363', 5, 11, 'Running', '2017-01-09', NULL, '2021-09-08 11:31:16'),
(3, 1, '45000000', '2415197', 12, '1946', 4, 4, 'Running', '2017-03-20', NULL, '2021-09-08 11:31:16'),
(4, 1, '21000000', '4114681', 15, '0014', 4, 6, 'Running', '2017-01-09', NULL, '2021-09-08 11:31:16'),
(5, 1, '20000000', '5510981', 12, '120', 4, 4, 'Running', '2021-07-10', NULL, '2021-09-09 09:41:56'),
(6, 1, '27000000', '5737627', 15, '407', 4, 7, 'Running', '2021-06-03', '2022-03-29', '2021-09-09 09:41:56'),
(7, 1, '30000000', '407644', 14, '310', 4, 5, 'Running', '2021-09-14', '0000-00-00', '2021-09-09 09:47:12'),
(8, 1, '20000000', '1847189', 15, '31', 4, 7, 'Running', '2020-08-04', NULL, '2021-09-09 09:51:12'),
(10, 1, '39000000', '5421450', 18, '2365', 5, 11, 'Running', '2016-01-03', NULL, '2021-09-09 10:23:17'),
(11, 1, '10000000', '2323463', 14, '35', 4, 5, 'Running', '2020-06-23', NULL, '2021-09-09 10:26:22'),
(12, 3, '45000000', '2826105', 12, '1946A', 4, 4, 'Running', '2019-12-05', NULL, '2021-09-09 10:32:10'),
(13, 1, '11000000', '2236623', 16, '2415', 5, 9, 'Running', '2016-12-20', NULL, '2021-09-09 10:40:02'),
(17, 1, '17000000', '1016829', 14, '309', 4, 8, 'Running', '2020-12-15', NULL, '2021-09-09 13:22:51'),
(19, 1, '23000000', '127925', 15, '113', 4, 6, 'Running', '2020-10-05', NULL, '2021-09-09 13:36:32'),
(20, 1, '17000000', '3836362', 12, '108', 4, 4, 'Running', '2020-10-05', NULL, '2021-09-09 13:45:30'),
(21, 1, '12500000', '3645275', 14, '124', 4, 5, 'Running', '2021-06-14', NULL, '2021-09-09 13:50:11'),
(22, 1, '20000000', '1457478', 15, '244', 4, 4, 'Running', '2021-02-25', NULL, '2021-09-09 13:58:48'),
(23, 1, '15000000', '5458637', 15, '245', 4, 4, 'Running', '2021-03-25', NULL, '2021-09-09 14:00:22'),
(24, 1, '17000000', '1448', 12, '44', 4, 4, 'Running', '2020-09-29', NULL, '2021-09-09 14:06:14'),
(25, 1, '18000000', '206750', 12, '212', 4, 4, 'Running', '2020-10-05', NULL, '2021-09-09 14:08:48'),
(26, 1, '17000000', '548691', 12, '21', 4, 4, 'Running', '2020-09-29', NULL, '2021-09-09 14:10:49'),
(28, 1, '17000000', '1213457', 12, '017', 4, 4, 'Running', '2020-07-08', NULL, '2021-09-09 14:15:00'),
(30, 1, '18000000', '5319786', 12, '201', 4, 4, 'Running', '2021-04-22', NULL, '2021-09-13 10:22:46'),
(33, 1, '10000000', '4429533', 12, '0016', 4, 4, 'Running', '2020-06-23', NULL, '2021-09-13 10:32:46'),
(38, 1, '17000000', '5750425', 12, '121', 4, 4, 'Running', '2021-06-04', NULL, '2021-09-13 12:53:26'),
(39, 1, '17000000', '1519539', 12, '119', 4, 4, 'Running', '2021-04-25', NULL, '2021-09-13 12:55:23'),
(40, 1, '8500000', '2955700', 14, '122', 4, 4, 'Running', '2021-06-09', NULL, '2021-09-13 12:57:27'),
(41, 1, '18000000', '3357762', 12, '112', 4, 4, 'Running', '2020-10-05', NULL, '2021-09-13 12:58:57'),
(42, 1, '23000000', '359226', 12, '126', 4, 4, 'Running', '2021-07-23', NULL, '2021-09-13 13:00:04'),
(43, 1, '23000000', '100685', 15, '115', 4, 6, 'Running', '2020-10-05', NULL, '2021-09-13 13:01:24'),
(44, 1, '6000000', '504432', 16, 'B-96', 5, 9, 'Running', '2016-07-27', NULL, '2021-09-13 13:06:01'),
(45, 1, '5000000', '76939', 21, 'KY-13', 7, 10, 'Running', '2015-10-05', NULL, '2021-09-13 13:08:55'),
(46, 1, '23000000', '19431', 15, '213', 4, 6, 'Running', '2020-10-05', NULL, '2021-09-13 13:11:09'),
(47, 1, '23000000', '151160', 15, '117', 4, 6, 'Running', '2020-11-25', NULL, '2021-09-13 13:15:00'),
(48, 1, '15000000', '134', 12, '1946A', 4, 4, 'Running', '2020-07-02', '2019-01-17', '2021-09-13 13:17:29'),
(49, 1, '25000000', '3517706', 15, '215', 4, 6, 'Running', '2020-10-06', NULL, '2021-09-13 13:19:09'),
(51, 1, '23000000', '2221260', 15, '246', 4, 6, 'Running', '2021-03-29', NULL, '2021-09-13 13:22:48'),
(54, 1, '23000000', '1144510', 15, '214', 4, 6, 'Running', '2020-10-04', '0000-00-00', '2021-09-21 09:54:54'),
(57, 1, '20000000', '1151590', 14, '33', 4, 5, 'Running', '2020-06-22', NULL, '2021-11-15 11:44:14'),
(62, 1, '44600000', '5222190', 12, '', 4, 4, 'Running', '2018-11-22', NULL, '2021-11-15 12:27:37'),
(73, 1, '29000000', '255431', 14, '318', 4, 5, 'Running', '2021-07-22', NULL, '2021-11-15 12:55:48'),
(76, 1, '23000000', '5722468', 14, '000', 4, 5, 'Running', '2020-12-28', NULL, '2021-11-15 13:18:36'),
(85, 1, '25000000', '1045676', 15, '310', 4, 6, 'Running', '2020-05-13', NULL, '2022-01-27 10:22:18'),
(86, 1, '22000000', '4410743', 15, '120', 4, 6, 'Running', '2021-05-17', NULL, '2022-01-27 10:30:48'),
(87, 1, '445000000', '4312810', 12, '', 4, 4, 'Running', '2017-11-07', NULL, '2022-01-27 10:42:11'),
(88, 1, '8000000', '425773', 12, '', 4, 4, 'Running', '2018-11-20', NULL, '2022-01-27 10:47:40'),
(89, 1, '16000000', '5232985', 12, '', 4, 4, 'Running', '2020-05-30', NULL, '2022-01-27 10:52:42'),
(90, 1, '8000000', '2249512', 12, '', 4, 4, 'Running', '2020-05-30', NULL, '2022-01-27 11:06:31'),
(91, 2, '22000000', '2046949', 15, '', 4, 5, 'Running', '2019-08-27', NULL, '2022-01-27 11:34:38'),
(92, 3, '45000000', '3847528', 12, '2100 Sq Metres', 4, 5, 'Running', '2018-11-20', '0000-00-00', '2022-01-27 11:46:31'),
(93, 1, '23000000', '3253584', 15, '119', 4, 6, 'Running', '2021-04-27', NULL, '2022-01-27 11:49:01'),
(94, 1, '23000000', '615124', 12, '004', 4, 4, 'Running', '2020-06-27', NULL, '2022-01-27 11:50:58'),
(95, 10, '15880000', '1021147', 19, 'B22,B23,B24,B25,B26,B27,B28,B29,B30,B31,B32,B33,B33A', 6, 12, 'Running', '2019-07-02', NULL, '2022-02-15 12:30:08'),
(96, 1, '12250000', '1021147', 12, '', 4, 4, 'Running', '2019-07-02', NULL, '2022-02-15 12:30:08'),
(97, 3, '38025000', '1021147', 12, '', 4, 4, 'Running', '2019-07-02', NULL, '2022-02-15 12:30:08'),
(98, 1, '10525000', '2327722', 12, '', 4, 4, 'Running', '2020-06-06', NULL, '2022-02-15 14:30:20'),
(99, 1, '30000000', '3459874', 17, '2367', 5, 4, 'Running', '2016-03-24', NULL, '2022-02-16 14:01:24'),
(100, 1, '30000000', '164701', 18, '2437', 5, 5, 'Running', '2016-02-16', '2022-04-25', '2022-02-16 14:06:21'),
(101, 1, '7500000', '3517854', 21, 'KY-4', 7, 4, 'Running', '2015-06-30', NULL, '2022-02-16 14:18:52'),
(102, 1, '6000000', '4522605', 16, 'B-96', 5, 9, 'Running', '2016-03-03', NULL, '2022-02-16 14:24:34'),
(103, 1, '21000000', '5727919', 12, '121', 4, 4, 'Running', '2021-06-04', NULL, '2022-02-16 14:29:14'),
(104, 1, '40000000', '318715', 17, '17', 5, 4, 'Running', '2016-07-13', NULL, '2022-03-15 13:11:29'),
(105, 1, '12000000', '134', 12, '004', 4, 0, '4', '2020-07-03', '2020-07-06', '2022-04-26 12:29:51'),
(107, 1, '25000000', '164701', 16, '222', 5, 0, '9', '2016-02-17', '2022-04-26', '2022-04-26 12:34:52'),
(109, 1, '30000000', '164701', 17, '102', 5, 0, '10', '2016-02-16', '2022-04-26', '2022-04-26 12:44:51'),
(111, 1, '2500000', '5737627', 19, '10', 6, 0, '6', '2021-06-03', '2022-04-20', '2022-04-26 12:46:25'),
(112, 1, '12000000', '134', 12, '004', 4, 4, 'Running', '2020-07-02', '0000-00-00', '2022-04-26 13:49:25'),
(114, 1, '23000000', '1144510', 15, '115', 4, 6, 'Running', '2020-10-04', '0000-00-00', '2022-04-26 13:57:00'),
(116, 1, '45000000', '3847528', 12, '1946', 4, 4, 'Running', '2018-11-20', '0000-00-00', '2022-04-26 14:05:48'),
(118, 1, '5000000', '128796', 24, '17123', 6, 13, 'Running', '2022-02-06', '0000-00-00', '2022-04-26 14:32:19');

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
(2, 4114681, NULL, 0, '29000000', 9000000, 360, 46, 'Agwandas Akawaya Andrawus', NULL, '2017-01-09', '2022-09-03', '2021-09-08', 28, '', '2021-09-08 11:31:16', 0, NULL, 0, NULL),
(3, 5737627, NULL, 0, '27000000', 15000000, 360, 45, 'Akan Pius Abank', NULL, '2021-06-03', '2022-09-03', '2021-09-09', 28, 'SA@4523', '2021-09-09 09:41:56', 0, NULL, 0, NULL),
(4, 1045676, NULL, 0, '25000000', 11410000, 360, 27, 'Aliyu Ahmad Tijjani', NULL, '2020-05-13', '2022-09-02', '2021-09-09', 28, 'GC@550', '2021-09-09 09:47:12', 0, NULL, 0, NULL),
(5, 1847189, NULL, 0, '20000000', 12400000, 360, 32, 'AMAKOR BEDE OBIOMA', NULL, '2020-08-04', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 09:51:12', 0, NULL, 0, NULL),
(7, 5421450, NULL, 0, '39000000', 0, 360, 59, 'AwaK Iniobong', NULL, '2016-01-03', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:23:17', 0, NULL, 0, NULL),
(8, 2323463, NULL, 0, '10000000', 8000000, 360, 26, 'Bala Jane Kudu', NULL, '2020-06-23', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:26:22', 0, NULL, 0, NULL),
(9, 2826105, NULL, 0, '45000000', 0, 360, 30, 'Barr Peter Dandam Kefas', NULL, '2019-12-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:32:10', 0, NULL, 0, NULL),
(10, 2236623, NULL, 0, '11000000', 0, 360, 80, 'Barrister Navati Iliya', NULL, '2016-12-20', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 10:40:02', 0, NULL, 0, NULL),
(12, 4410743, NULL, 0, '22000000', 5000000, 360, 68, 'Chukwuma Celestine Obiajulu', NULL, '2021-05-17', '2022-09-02', '2021-09-09', 28, 'GC@550', '2021-09-09 11:12:37', 0, NULL, 0, NULL),
(13, 4312810, NULL, 0, '445000000', 2000000, 360, 66, 'Dakoru Asekutu', NULL, '2017-11-07', '2022-09-02', '2021-09-09', 28, 'GC@550', '2021-09-09 11:16:04', 0, NULL, 0, NULL),
(14, 1016829, NULL, 0, '17000000', 0, 360, 74, 'Emmanuel Okechukwu Ede', NULL, '2020-12-15', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:22:51', 0, NULL, 0, NULL),
(15, 5722468, NULL, 0, '23000000', 12000000, 360, 40, 'Ezire Onoriode', NULL, '2020-12-28', '2022-09-02', '2021-09-09', 28, 'GC@550', '2021-09-09 13:26:55', 0, NULL, 0, NULL),
(16, 127925, NULL, 0, '23000000', 7500000, 360, 64, 'Gubio Rukaiyah', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:36:32', 0, NULL, 0, NULL),
(17, 3836362, NULL, 0, '17000000', 6015000, 360, 79, 'Hussein A. Tijjani', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:45:30', 0, NULL, 0, NULL),
(18, 3645275, NULL, 0, '12500000', 8820000, 360, 76, 'Igboanugo Chizoba', NULL, '2021-06-14', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:50:11', 0, NULL, 0, NULL),
(19, 1457478, NULL, 0, '20000000', 17051000, 360, 84, 'Ishidi Ijasini Pur', NULL, '2021-02-25', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 13:58:48', 0, NULL, 0, NULL),
(20, 5458637, NULL, 0, '15000000', 14500000, 360, 83, 'Ishidi Ijudigal Pur', NULL, '2021-03-25', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:00:22', 0, NULL, 0, NULL),
(21, 1448, NULL, 0, '17000000', 5000000, 360, 50, 'John Adayu', NULL, '2020-09-29', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:06:14', 0, NULL, 0, NULL),
(22, 206750, NULL, 0, '18000000', 0, 360, 56, 'Kafidipe Ebenezer Imaben Precious', NULL, '2020-10-05', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:08:48', 0, NULL, 0, NULL),
(23, 548691, NULL, 0, '17000000', 10035000, 360, 33, 'Maina Afakirya Gadzana', NULL, '2020-09-29', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:10:49', 0, NULL, 0, NULL),
(24, 5510981, NULL, 0, '20000000', 20500000, 360, 75, 'Mbanekwe Anthony Oluchukwu', NULL, '2021-07-10', '2022-09-02', '2021-09-09', 28, 'GC@550', '2021-09-09 14:13:06', 0, NULL, 0, NULL),
(25, 1213457, NULL, 0, '17000000', 9500000, 360, 77, 'Modestus Mbaneri', NULL, '2020-07-08', '2022-09-04', '2021-09-09', 28, '', '2021-09-09 14:15:00', 0, NULL, 0, NULL),
(26, 2415197, NULL, 0, '45000000', 0, 360, 54, 'Mr and Mrs Julius  Nwaigwe', NULL, '2017-03-20', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 10:19:47', 0, NULL, 0, NULL),
(27, 5319786, NULL, 0, '18000000', 7200000, 360, 82, 'Mrs Gbaagileh Judith Mbananden ', NULL, '2021-04-22', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:22:46', 0, NULL, 0, NULL),
(28, 5222190, NULL, 0, '44600000', 500000, 360, 52, 'Mrs Ifeoma Michael', NULL, '2018-11-22', '2022-09-07', '2021-09-13', 28, 'GC@550', '2021-09-13 10:24:58', 0, NULL, 0, NULL),
(29, 425773, NULL, 0, '8000000', 1000000, 360, 28, 'Nnadi Chijioke Okadili ', NULL, '2018-11-20', '2022-09-05', '2021-09-13', 28, 'GC@550', '2021-09-13 10:29:40', 0, NULL, 0, NULL),
(30, 4429533, NULL, 0, '10000000', 9000000, 360, 58, 'Nnamani Nehemiah Chijioke', NULL, '2020-06-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 10:32:46', 0, NULL, 0, NULL),
(31, 5232985, NULL, 0, '16000000', 3800000, 360, 29, 'Nwankwo Chukwujekwu Donatus', NULL, '2020-05-30', '2022-09-05', '2021-09-13', 28, 'GC@550', '2021-09-13 11:37:34', 0, NULL, 0, NULL),
(32, 2249512, NULL, 0, '8000000', 0, 360, 41, 'Nworah Okechukwu Nnadozie', NULL, '2020-05-30', '2022-09-05', '2021-09-13', 28, 'GC@550', '2021-09-13 11:51:05', 0, NULL, 0, NULL),
(33, 2046949, NULL, 0, '22000000', 1000000, 360, 42, 'Odu Tony Ada', NULL, '2019-08-27', '2022-09-05', '2021-09-13', 28, 'GC@550', '2021-09-13 12:47:32', 0, NULL, 0, NULL),
(34, 3847528, NULL, 0, '90000000', 0, 360, 53, 'Okafor Izuchukwu Columbanus', NULL, '2018-11-20', '2022-09-05', '2021-09-13', 28, 'GC@550', '2021-09-13 12:50:51', 0, NULL, 0, NULL),
(35, 5750425, NULL, 0, '17000000', 5000000, 360, 44, 'Okeke Christopher Ogbonna', NULL, '2021-06-04', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:53:26', 0, NULL, 0, NULL),
(36, 3253584, NULL, 0, '23000000', 4600000, 360, 69, 'Oketta Jude Onesi', NULL, '2021-04-27', '2022-09-06', '2021-09-13', 28, 'GC@550', '2021-09-13 12:55:23', 0, NULL, 0, NULL),
(37, 2955700, NULL, 0, '8500000', 8000000, 360, 51, 'Okpara Chima Centus', NULL, '2021-06-09', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:57:27', 0, NULL, 0, NULL),
(38, 3357762, NULL, 0, '18000000', 8600000, 360, 55, 'Omaba Roseline Anita', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 12:58:57', 0, NULL, 0, NULL),
(39, 359226, NULL, 0, '23000000', 3000000, 360, 67, 'Onuzulike Ugochukwu Babatunde', NULL, '2021-07-23', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:00:04', 0, NULL, 0, NULL),
(40, 100685, NULL, 0, '23000000', 8000000, 360, 63, 'Onyema Ikenna Okechukwu', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:01:24', 0, NULL, 0, NULL),
(41, 504432, NULL, 0, '6000000', 0, 360, 62, 'Orume Esther Daniel', NULL, '2016-07-27', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:06:01', 0, NULL, 0, NULL),
(42, 76939, NULL, 0, '5000000', 0, 360, 61, 'Osrogu  Nigeria Limited', NULL, '2015-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:08:55', 0, NULL, 0, NULL),
(43, 19431, NULL, 0, '23000000', 7600000, 360, 36, 'Rabiu Morgan Mariam', NULL, '2020-10-05', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:11:08', 0, NULL, 0, NULL),
(44, 151160, NULL, 0, '23000000', 0, 360, 72, 'Ramatu Bage Takuma', NULL, '2020-11-25', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:15:00', 0, NULL, 0, NULL),
(45, 615124, NULL, 0, '23000000', 13470000, 360, 78, 'Ukachukwu Chidiebere Emmanuel', NULL, '2020-06-27', '2022-09-06', '2021-09-13', 28, 'GC@550', '2021-09-13 13:17:29', 0, NULL, 0, NULL),
(46, 3517706, NULL, 0, '25000000', 10000000, 360, 47, 'Ukonu Nnenna Ifendu', NULL, '2020-10-06', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:19:09', 0, NULL, 0, NULL),
(47, 1519539, NULL, 0, '17000000', 6020000, 360, 65, 'Uzoigwe Obioma Helen', NULL, '2021-04-25', '2022-09-06', '2021-09-13', 28, 'GC@550', '2021-09-13 13:21:16', 0, NULL, 0, NULL),
(48, 2221260, NULL, 0, '23000000', 4620000, 360, 81, 'West Sobomabo Wariye', NULL, '2021-03-29', '2022-09-08', '2021-09-13', 28, '', '2021-09-13 13:22:48', 0, NULL, 0, NULL),
(49, 1151590, NULL, 0, '20000000', 9000000, 360, 49, 'Bawa Abdullahi Yahaya', NULL, '2020-06-22', '2022-09-15', '2021-09-21', 28, 'GC@550', '2021-09-21 09:02:03', 0, NULL, 0, NULL),
(50, 1144510, NULL, 0, '46000000', 11620000, 360, 85, 'Audu Rabiu Morgan', NULL, '2020-10-04', '2022-09-15', '2021-09-21', 28, 'GC@550', '2021-09-21 09:54:54', 0, NULL, 0, NULL),
(51, 134, NULL, 0, '27000000', 6000000, 360, 35, 'Asogwa Ernest Chijioke', NULL, '2020-07-02', '2022-09-12', '2021-09-21', 28, 'GC@550', '2021-09-21 10:05:16', 0, NULL, 0, NULL),
(52, 255431, NULL, 0, '29000000', 0, 360, 88, 'Bulus Kwaji Luka', NULL, '2021-07-22', '2022-11-10', '2021-11-15', 28, '', '2021-11-15 12:55:48', 0, NULL, 0, NULL),
(53, 407644, NULL, 0, '30000000', 0, 360, 89, 'Onyeka Okafor and Anthony Mbanekwe Oluchukwu', NULL, '2021-09-14', '2022-11-08', '2021-11-15', 28, 'GC@550', '2021-11-15 13:08:53', 0, NULL, 0, NULL),
(54, 1021147, NULL, 0, '66155000', 0, 360, 91, 'Faith Makitem Khanisary', NULL, '2019-07-02', '2023-02-10', '2022-02-15', 28, '', '2022-02-15 12:30:08', 0, NULL, 0, NULL),
(55, 2327722, NULL, 0, '10525000', 0, 360, 92, 'Uche Etunnuh', NULL, '2020-06-06', '2023-02-10', '2022-02-15', 28, '', '2022-02-15 14:30:20', 0, NULL, 0, NULL),
(56, 3459874, NULL, 0, '30000000', 0, 360, 95, 'Chinedu Moghala', NULL, '2016-03-24', '2023-02-11', '2022-02-16', 28, '', '2022-02-16 14:01:24', 0, NULL, 0, NULL),
(57, 164701, NULL, 0, '60000000', 0, 360, 96, 'Akuma Igwe Nwankwo', NULL, '2016-02-16', '2023-02-09', '2022-02-16', 28, 'SA@4523', '2022-02-16 14:06:21', 0, NULL, 0, NULL),
(58, 3517854, NULL, 0, '7500000', 0, 360, 97, 'Anamdi Chike K. & Anamdi Uju Chinelo', NULL, '2015-06-30', '2023-02-11', '2022-02-16', 28, '', '2022-02-16 14:18:52', 0, NULL, 0, NULL),
(59, 4522605, NULL, 0, '6000000', 0, 360, 98, 'Komolafe Joshua Olawale', NULL, '2016-03-03', '2023-02-11', '2022-02-16', 28, '', '2022-02-16 14:24:34', 0, NULL, 0, NULL),
(60, 5727919, NULL, 0, '21000000', 0, 360, 99, 'Aisha F. Abdullahi', NULL, '2021-06-04', '2023-02-11', '2022-02-16', 28, '', '2022-02-16 14:29:14', 0, NULL, 0, NULL),
(61, 318715, NULL, 0, '40000000', 0, 360, 100, 'Hon. Abbas Iorwuese Akoso', NULL, '2016-07-13', '2023-03-10', '2022-03-15', 28, '', '2022-03-15 13:11:29', 0, NULL, 0, NULL),
(62, 128796, NULL, 0, '5000000', 0, 360, 90, 'S. B Integrated Cannan Farm Ltd.', NULL, '2022-02-06', '2023-04-20', '2022-04-26', 28, 'GC@550', '2022-04-26 14:30:29', 0, NULL, 0, NULL);

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
  `property_FK` int(11) NOT NULL,
  `bank` int(11) DEFAULT NULL,
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

INSERT INTO `transactionmodel` (`id`, `uuid`, `rcpt_no`, `ticket_no`, `tx_type`, `pay_method`, `amount`, `amount_in_words`, `description`, `account_FK`, `property_FK`, `bank`, `paid`, `tx_date`, `postBy_FK`, `signature`, `createdAt`, `updatedAt`) VALUES
(140, 'c9eaceb1-b3c2-4db9-88bb-f5f8ca212ae4', 5722468, '1370', 'CR', 'transfer', '12000000', 'Twelve Million ', 'Being Deposit for a unit of plot of land for four bedroom Semi Detached Duplex at Oxford Homes, Gaduwa District, 800 square metres vide Bank transfer - ZB06012021', '2810852', 0, 0, 0, '2021-01-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-09-21', '2021-09-21 10:32:43'),
(141, 'faba2338-2692-40d7-bf14-80bf5ccd19fd', 1144510, '1371', 'CR', 'transfer', '4000000', 'Four Million', 'Being Deposit for a plot of land measuring 1000 Quare metres at Oxford Homes, Gaduwa District, Abuja Vide Bank Transfer - ZB 7501221', '385793', 0, 0, 0, '2021-01-15', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-09-21', '2021-09-21 10:52:09'),
(912, '8fd132d2-3d3a-4ef4-8f22-8ba8f750c6cb', 4114681, '1401', 'CR', 'transfer', '1000000', 'One Million', 'Being Additional payment for a plot of 5-bedroom duplex at oxford home Gaduwa Abuja, vide bank transfer FBN010421', '4332342', 0, 4332342, 0, '2021-01-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 09:53:47'),
(913, '9e254d93-9584-44ee-8d75-4732b90c30de', 100685, '1405', 'CR', 'transfer', '2500000', 'Two Million, Five Hundred Thousand', 'Being additional deposit for a plot of land measuring 1000m square meters at oxford home Gaduwa, Abuja vide bank transfer ', '4332342', 0, 4332342, 0, '2021-02-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:06:54'),
(914, '3480aa77-76b4-4e82-82d6-ecd9c2f7b820', 2221260, '1407', 'CR', 'transfer', '2600000', 'Two Million, Six hundred Thousand', 'Being deposit for  a plot of land measuring 1000m square meters  at oxfor homes, Gaduwa District, Abuja vide bank ', '4332342', 0, 4332342, 0, '2021-03-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:15:26'),
(915, 'de08ada3-49f9-4422-be19-5d5427142773', 100685, '1408', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being additional deposit for  plot of land measuring 1000m square meters at oxford homes Gaduwa District Abuja, vide bank', '4332342', 0, 4332342, 0, '2021-05-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:24:14'),
(916, 'e22cb4a3-9921-43f0-b732-4519da9771b8', 2221260, '1410', 'CR', 'transfer', '2000000', 'Two Million', 'Being additional deposit for a plot of land measuring 1000m square at oxford homes Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-06-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:31:22'),
(917, 'd96bdf37-f32e-4391-9b08-1b6e9f89fb92', 5232985, '1411', 'CR', 'transfer', '300000', 'Three Hundred Thousand', 'Being additional deposit for a plot of land measuring 1000m square at oxford homes Gaduwa District, Abuja vide bank FB08042021', '4332342', 0, 4332342, 0, '2021-08-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:36:23'),
(918, '08a13a03-977e-4b29-a616-27f077e86b6b', 5319786, '1414', 'CR', 'transfer', '3600000', 'Three Million Six Hundred Thousand', 'Being additional deposit for a plot of land measuring700m square at oxford homes Gaduwa District, Abuja vide bank ZB2d042021', '4332342', 0, 4332342, 0, '2021-04-22', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:42:29'),
(919, 'ca10297e-5b78-4124-a220-7dfe2dbdab8a', 1519539, '1416', 'CR', 'transfer', '5500000', 'Five Million Five Hundred Thousand', 'Being additional deposit for a plot of land measuring 700m square at oxford homes Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2021-04-27', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:45:59'),
(920, '94c3b683-b59c-48e9-89d9-bc3a2d797c47', 3253584, '1417', 'CR', 'transfer', '4600000', 'Four Million Six Hundred Thousand', 'Being additional deposit for a plot of land measuring 1000m square at oxford homes Gaduwa District, Abuja vide bank ZB05052021', '4332342', 0, 4332342, 0, '2021-04-29', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:54:17'),
(921, 'f0fc40b5-0434-4856-b3d2-ef748cac5e4e', 1213457, '1422', 'CR', 'transfer', '2000000', 'Two Million', 'Being additional deposit for a plot of land measuring 700m square at oxford homes Gaduwa District, Abuja vide bank zb19052021', '4332342', 0, 4332342, 0, '2021-05-19', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 10:59:15'),
(922, '4f599600-3598-417b-9dcf-75eaa8c754cd', 2955700, '1428', 'CR', 'transfer', '1000000', 'One Million', 'Being additional deposit for a unit of semi-detached duplex vide bank ZB04062021', '4332342', 0, 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:06:34'),
(923, '7e319ee5-1362-4e23-9678-7afb9d8c2c7f', 5737627, '1430', 'CR', 'transfer', '7000000', 'Seven Million', 'Being additional deposit for a plot of land for 4-bedroom detached duplex vide bank zbn04062021', '4332342', 0, 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:12:27'),
(924, 'e03dc510-4c2e-4f5e-8527-b40452b2fbdf', 5737627, '1431', 'CR', 'transfer', '8000000', 'Eight Million', 'Being deposit for a unit of 4-bedroom terrace duplex measuring 1000m square meter at oxford homes, Gaduwa Abuja  vide bank zbn04062021', '4332342', 0, 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:18:01'),
(925, '9862eff6-901f-4729-8ebf-9afbb47b91f8', 5750425, '1432', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land for 4 bedroom duplex  at oxford homes Gaduwa District, Abuja vide bank zbn04062021', '4332342', 0, 4332342, 0, '2021-04-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:22:01'),
(926, '5c01cb1f-fc02-47e1-9070-c19063fd4abb', 1151590, '1434', 'CR', 'transfer', '3000000', 'Three Million', 'Being additional deposit for a land for unit of semi detached property at oxford homes Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:26:51'),
(927, '861e3221-9dbf-4b98-81a5-7ffcd8c50243', 4410743, '1435', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land measuring 1000m square for a unit of 5 bedroom fully detached duplex vide bank', '4332342', 0, 4332342, 0, '2021-09-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:31:09'),
(928, '7debf546-bfea-4b7a-bc84-e3c5c6ef3ea4', 3645275, '1437', 'CR', 'transfer', '4120000', 'Four Million One Hundred And Twenty Thousand', 'Being deposit for a plot of land for a unit of 4 bedroom terrace duplex vide bank', '4332342', 0, 4332342, 0, '2021-11-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:35:07'),
(929, '9e71129a-9c05-4431-b1e8-1dbe7cd1f5a8', 3645275, '1439', 'CR', 'transfer', '1050000', 'One Million Fifty Thousand', 'Being additional deposit for a  plot of land for a unit of 4 bedroom semi detached duplex vide bank', '4332342', 0, 4332342, 0, '2021-06-14', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:43:34'),
(930, '7b1647ba-b7b0-4bf3-a2dd-6ff1fd8941d1', 3645275, '1440', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being additional payment for a  plot of land measuring 400m square meter for a unit of 4 bedroom semi detached duplex vide bank', '4332342', 0, 4332342, 0, '2021-06-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:48:56'),
(931, 'e25d37c8-d23c-4728-badd-09bccc7c6cde', 3645275, '1441', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being additional deposit for a  plot of land for a unit of  semi detached duplex vide bank', '4332342', 0, 4332342, 0, '2021-06-18', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:52:46'),
(932, '05c4f108-629b-4e44-85c4-f394b060cff8', 3645275, '1443', 'CR', 'transfer', '200000', 'Two Hundred Thousand ', 'Being additional deposit for a  plot of land for a unit of semi detached duplex plot vide bank', '4332342', 0, 4332342, 0, '2021-06-21', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 11:56:17'),
(933, '6772d071-7d42-4213-ae21-dc88e0c15247', 2955700, '1444', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for a unit of semi detached duplex plot at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-06-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:11:04'),
(934, '6fb383b8-5562-4379-9a48-68175059c231', 5319786, '1446', 'CR', 'transfer', '3600000', 'Three Million Six Hundred Thousand', 'Being additional deposit for a unit of plot for 4 bedroom fully detached duplex vide bank', '4332342', 0, 4332342, 0, '2021-06-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:22:15'),
(935, '3b9b67a9-178c-443c-aaa9-8bc464c8c5de', 3645275, '1445', 'CR', 'transfer', '1000000', 'One Million', 'Being past payment for a  plot of land for a unit of semi detached duplex at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-06-24', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:25:48'),
(936, '5e5adccb-0f1b-46aa-b384-fee77edb3771', 3645275, '1447', 'CR', 'transfer', '250000', 'Two Hundred And Fifty Thousand', 'Being additional payment for a  plot of land for a unit of semi detached duplex at oxford homes Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-06-28', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:34:08'),
(937, '9d4cea4e-96ab-4f3b-92a3-ddfbe558c290', 3645275, '1449', 'CR', 'transfer', '400000', 'Four Hundred Thousand ', 'Being additional payment for a  plot of land at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-06-07', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:42:27'),
(938, 'e1f5b3df-0abf-4354-b38e-39cd0071c9bb', 3645275, '1451', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being additional payment for a  plot of land at oxford homes, Gaduwa District vide bank', '4332342', 0, 4332342, 0, '2021-07-08', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:46:17'),
(939, 'd7a5b199-c5ec-4a7a-be48-668f29e7df64', 1151590, '1452', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for our property at oxford homes Gaduwa District, Abuja. vide bank', '', 0, 4332342, 0, '2021-07-10', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:50:41'),
(940, 'cc7472b4-591b-4549-a1a2-78dadceed117', 5510981, '1053', 'CR', 'transfer', '10000000', 'Ten Million', 'Being deposit for a plot of land measuring 700m square unit of 4 bedroom fully detached duplex vide bank', '4332342', 0, 4332342, 0, '2021-07-12', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 12:59:14'),
(941, 'c364c82c-3ec5-47f2-8ddd-68d1909ac4b7', 359226, '1458', 'CR', 'transfer', '3000000', 'Three Million', 'Being deposit for a plot of land for a unit of 4 bedroom fully detached duplex at oxford homes, Gaduwa District Abuja vide banki ', '4332342', 0, 4332342, 0, '2021-07-22', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:08:23'),
(942, 'fb137e10-d577-44a0-97db-3397262c8760', 3645275, '1460', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being additional payment for the property at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:12:37'),
(943, '309d1ecd-d054-45ac-8672-5e3f7914bb41', 1457478, '1461', 'CR', 'transfer', '2051000', 'Two Million And Fifty One Thousand', 'Being payment for our property at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-11', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:18:22'),
(944, '0f8bfea1-37d3-4f20-a745-ca1243c896b5', 5510981, '1462', 'CR', 'transfer', '2500000', 'Two Million, Five Hundred Thousand', 'Being additional payment for a plot of land at oxford homes, Gaduwa District, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:23:56'),
(945, '6c21beb8-55ce-47ad-b72c-d488958de785', 3645275, '1465', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being additional deposit for our property at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:28:13'),
(946, 'a21d75e8-d4ac-4f04-92bd-287dbced87cd', 5458637, '1466', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional payment for the property at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-25', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:33:48'),
(947, '5f8a6a91-900b-4bc5-8ecd-33eab313638d', 3645275, '1467', 'CR', 'transfer', '205000', 'Two Hundred And Five Thousand', 'Being additional payment for our property at oxford homes vide bank', '4332342', 0, 4332342, 0, '2021-09-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:36:21'),
(948, 'd0501493-05f8-48ea-974b-c80dcb065fb7', 3357762, '1468', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-09-07', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:44:01'),
(949, '30ab9268-94fe-4ea4-914c-5214c29ac87a', 19431, '1469', 'CR', 'transfer', '3000000', 'Three Million', 'Being additional deposit for the property at oxford homes, Gaduwa district, Abuja vide bank ', '4332342', 0, 4332342, 0, '2021-07-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-19', '2021-11-19 13:50:51'),
(950, '102613ec-f3d8-4b1c-b2fc-8ebd03cf55f7', 127925, '1470', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-09-08', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 10:32:25'),
(951, '91f4c26b-3013-4bc5-8355-8a1157ad91b9', 100685, '1471', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-08-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 10:35:51'),
(952, '8955dc3f-92c1-4fa1-b8ac-15c7dabbc74f', 1144510, '1472', 'CR', 'transfer', '3000000', 'Three Million', 'Being additional deposit for a plot of land at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-09-08', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 10:38:58'),
(953, '7961884a-2a6a-48d8-9cd7-85cfcb55b43d', 5510981, '1473', 'CR', 'transfer', '8000000', 'Eighth Million', 'Being deposit for property at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-09-10', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 10:48:07'),
(954, '27f849d9-48a1-48ec-81c2-2a62320671e5', 2323463, '1475', 'CR', 'transfer', '3000000', 'Three Million', 'Being additional deposit for property at oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-09-12', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 10:53:41'),
(955, '41a35a46-499b-47d5-96e2-7e528db9a575', 2046949, '1476', 'CR', 'transfer', '500000', 'Five Hundred Thousand', 'Being additional deposit for our property at varsity garden estate, Karshi  vide bank', '4332342', 0, 4332342, 0, '2021-09-30', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 10:59:15'),
(956, '911f4f19-d8f2-4b22-9057-364de4f272a0', 3645275, '1477', 'CR', 'transfer', '295000', 'Two Hundred And Ninety Five Thousand', 'Being additional payment for our property at oxford homes vide bank', '4332342', 0, 4332342, 0, '2021-09-30', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:08:58'),
(957, 'd1be096a-2d88-41b7-ad47-4c7faabf432a', 127925, '1373', 'CR', '', '2500000', 'Two Million Five Hundred Thousand', 'Being additional deposit for plot 113, oxford homes, Gaduwa district, Abuja vide bank', '4332342', 0, 4332342, 0, '2021-01-15', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:22:50'),
(958, '3e189fc9-76e6-451c-94c7-5578eb497b93', 1213457, '1377', 'CR', 'transfer', '900000', 'Nine Hundred Thousand', 'Being additional deposit for the property at oxford homes Gaduwa district vide bank ', '4332342', 0, 4332342, 0, '2021-01-29', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:32:15'),
(959, '96f97baa-59ab-4c93-b82a-3d9a02286609', 2955700, '1381', 'CR', 'transfer', '4000000', 'Four Million', 'Being deposit for a unit of 4 bedroom semi detached duplex vide bank ', '4332342', 0, 4332342, 0, '2021-02-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:36:12'),
(960, '34d574fc-6ce3-42a8-afeb-2140fac49312', 3517706, '1382', 'CR', 'transfer', '5000000', 'Five Million', 'Being additional deposit for a plot of land at oxford homes, Gaduwa district, Abuja vide bank ', '4332342', 0, 4332342, 0, '2021-02-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:39:30'),
(961, 'cd5c51ab-d32d-458b-9576-42a9c4fd920d', 3836362, '1387', 'CR', 'transfer', '6000000', 'Six Million', 'Being additional deposit on plot 15, oxford homes, Gaduwa district Abuja vide bank ', '4332342', 0, 4332342, 0, '2021-02-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:42:47'),
(962, '80533760-e8ae-4087-8ba2-0929b9f4657d', 1457478, '1389', 'CR', 'transfer', '15000000', 'Fifteen Million', 'Being payment for ', '4332342', 0, 4332342, 0, '2021-02-26', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:45:14'),
(963, '0988da75-5e71-4207-9981-fe72e55de358', 2955700, '1390', 'CR', 'transfer', '1000000', 'One Million', 'Being additional deposit for a unit of 4 bedroom semi detached duplex plot vide bank ', '4332342', 0, 4332342, 0, '2021-01-03', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:48:00'),
(964, '7548c5d7-1fc3-415b-a98c-1c095aa9521d', 425773, '1394', 'CR', 'transfer', '1000000', 'One Million', 'Being deposit for plot 202 Dakwo district vide bank ', '4332342', 0, 4332342, 0, '2021-03-18', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:51:45'),
(965, '9f4d1695-24c7-425c-969c-bfd07ae735ee', 2221260, '1395', 'CR', 'transfer', '20000', 'Twenty Thousand', 'Being application form fee vide bank ', '4332342', 0, 4332342, 0, '2021-03-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:56:12'),
(966, '8776d8aa-3ec2-44d1-ab65-355508530e80', 5458637, '1397', 'CR', 'transfer', '7500000', 'Seven Million Five Hundred Thousand', 'Being deposit for a plot of land measuring 1000m square for a 4 bedroom duplex at oxford homes, Gaduwa Abuja vide bank ', '4332342', 0, 4332342, 0, '2021-03-25', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 11:59:29'),
(967, '60338230-c04e-4033-b551-a0dd66e178fd', 5458637, '1478', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for our property (Plot 245) Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2021-10-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2021-11-22', '2021-11-22 12:56:32'),
(968, 'd7fb9095-6801-4555-b8d4-1bd6e1c0d36e', 134, '1232', 'CR', 'transfer', '4000000', 'Four Million', 'Being Final  payment for a plot of land at Oxford Homes, Gaduwa District', '', 0, 0, 0, '2020-01-10', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 10:07:55'),
(969, '98d18d6e-7a78-41f5-b80a-2ea96142e85c', 4114681, '1243', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for ', '', 0, 0, 0, '2021-05-05', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 10:27:38'),
(970, '9251d9be-d922-48eb-ac80-125545951083', 4114681, '1244', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for a plot of land at Oxford Homes, Gaduwa District', '', 0, 0, 0, '2020-05-05', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 10:31:48'),
(971, 'aa697e41-dac6-4bf6-b351-84266aaba433', 0, '1245', 'CR', 'transfer', '1000000', 'One Million', 'Being Part Payment for a plot of land at Oxford Homes, Gaduwa, Abuja', 'undefined', 0, 0, 0, '2020-05-08', 'GC@550', 'undefined', '2022-01-31', '2022-01-31 10:33:45'),
(972, 'b951153a-c4bf-49bc-9385-f8ba7d326c26', 4114681, '1245', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Part-Payment for a Plot of land at Oxford Homes, Gaduwa Abuja', '', 0, 0, 0, '2020-05-08', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 10:38:34'),
(973, 'f95842d7-3e4c-4f60-b080-b303c76fe439', 1045676, '1250', 'CR', 'transfer', '10000', 'Ten Thousand', 'Being payment for Application Fee', '4332342', 0, 4332342, 0, '2020-05-05', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 11:01:25'),
(974, '6de23f7c-9159-494c-8d69-0d8d2c7125a2', 1213457, '1251', 'CR', 'transfer', '1500000', 'One million, five hundred Thousand', 'Being payment for Additional Deposit for a plot of Land at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-05-20', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 13:12:13'),
(975, 'a1dca91f-b818-4c27-86d2-b0e530065547', 4429533, '1252', 'CR', 'transfer', '7000000', 'Seven Million', 'Being payment for Deposit for a plot of land at Oxford Homes, Plot 1946, Cadestral Zone B13, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-05-28', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 13:32:45'),
(976, '6d4ad18b-d562-4589-8b87-62d877e15395', 1045676, '1254', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for Deposit for a Plot of land measuring 1000 square meters at Oxford Homes, Gaduwa District', '4332342', 0, 4332342, 0, '2020-06-02', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 13:56:39'),
(977, 'adc8b25d-e191-4660-8a48-ff8f6ac6a7d1', 1151590, '1255', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional Deposit for a unit of plot of land at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-06-02', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-01-31', '2022-01-31 13:59:51'),
(978, '66c8ea0a-10dc-4a94-8ebc-5c6310bda466', 4114681, '1260', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional payment for a plot of land at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-06-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 10:49:31'),
(979, '7783c27c-bcf0-4b5c-b824-9ec675108618', 4114681, '1262', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for ', '4332342', 0, 4332342, 0, '2020-06-19', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 10:53:48'),
(980, '52c1637f-86e2-484c-8b8e-1c5df685985c', 4429533, '1263', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional deposit for a property at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-06-23', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 10:57:00'),
(981, '62e42daf-c41e-46f3-965d-25d5f296b412', 2323463, '1265', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Deposit for a semi-detached Duplex at Gaduwa District', '4332342', 0, 4332342, 0, '2020-06-29', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 12:47:23'),
(982, '525bfa4e-b9d5-4d8d-af0a-cb9a099474bb', 615124, '1266', 'CR', 'cash', '20000', 'Twenty Thousand', 'Being payment for Application fee', 'undefined', 0, 0, 0, '2020-06-29', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 12:48:58'),
(983, '16ce32ba-5d68-42f9-b912-81002e9e3a79', 615124, '1268', 'CR', 'transfer', '9950000', 'Nine Million, Nine hundred and fifty thousand', 'Being payment for Deposit for a plot of land for 4 bedroom Duplex at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-06-30', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 12:56:33'),
(984, 'c9eb609e-102c-4226-aad8-87ac72e607f0', 2323463, '1269', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional Deposit for a property in Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-06-30', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:00:14'),
(985, 'a7b4a592-9a5a-45bc-9b8e-d5c6d3297760', 5222190, '1271', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being payment for Additional Deposit for a plot of land at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-01', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:06:55'),
(986, 'a27b5f7b-ccb9-4cb6-b36d-67c728fc2c9a', 1213457, '1272', 'CR', 'transfer', '3000000', 'Three Million ', 'Being payment for Deposit for property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-01', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:25:23'),
(987, 'dfb85d25-54b8-4597-8d41-9eb241e3803d', 5232985, '1273', 'CR', 'transfer', '3500000', 'Three Million, Five Hundred Thousand', 'Being payment for Deposit for property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-01', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:31:36'),
(988, '3ff35606-7536-48b8-8418-7e06ceff8bfb', 1213457, '1276', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for Additional deposit for property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-03', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:37:13'),
(989, 'dff9ccdb-d84d-4418-96ca-f310ce66fb4e', 2323463, '1277', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional Deposit For our Property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-07', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:39:00'),
(990, '5b42692c-63a0-4f44-888a-59fbede8e652', 4429533, '1278', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional Deposit for our property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-07', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:40:51'),
(991, 'a7b242cd-c647-48a3-a86f-e524d806c6e1', 134, '1279', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for Deposit for Plot 20, Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-07-08', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:42:43'),
(992, '785cd320-f282-48a4-8888-e507cac42ab5', 2323463, '1280', 'CR', 'transfer', '1500000', 'One million, five hundred Thousand', 'Being payment for Additional payment for our property at Oxford Homes, Gaduwa District, Abuja', '', 0, 0, 0, '2020-07-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:44:45'),
(993, 'b9552bc0-ca81-4af4-b123-176c7eb37b7c', 1213457, '1281', 'CR', 'transfer', '100000', 'One Hundred Thousand ', 'Being payment for Additional deposit for our property at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-07-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 13:58:18'),
(994, '1d549d30-a012-4d07-a279-eb18450479f8', 1519539, '1282', 'CR', 'transfer', '20000', '', 'Being payment for Application Fee for a plot of land at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-07-14', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 14:00:16'),
(995, 'e99bec93-b7ad-4c7a-ae2b-8fba22275ff4', 4312810, '1292', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for Additional Deposit for our property at oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-08-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 14:05:38'),
(996, 'b3296b5e-14f9-4230-9316-924019f4055a', 0, '1293', 'CR', 'transfer', '10000000', 'Ten Million', 'Being Deposit for a plot of land for Terrace Duplex at Oxford Homes, Gaduwa deistrict, Abuja', 'undefined', 0, 0, 0, '2020-08-04', 'GC@550', 'undefined', '2022-02-02', '2022-02-02 14:07:39'),
(997, 'b05c41f0-be0b-4eb3-a8c2-5e4b75e3aa82', 1519539, '1295', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being payment for Deposit for a Unit of Plot of land for a 4 Bedroom fully detached Duplex at Gaduwa District Abuja', 'undefined', 0, 0, 0, '2020-08-22', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 14:09:58'),
(998, '6bf6e338-98b6-4c83-9355-ddbb701b18df', 1847189, '1293', 'CR', 'transfer', '10000000', 'Ten Million', 'Being payment for Deposit for a plot of land for Terrace Duplex at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-08-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-02', '2022-02-02 14:19:58'),
(999, 'b3c1dc3a-614b-41e9-b68d-0c5a438acc9f', 615124, '1310', 'CR', 'transfer', '3000000', 'Three Million', 'Being payment for A plot of land for 4 Bedroom Duplex at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-09-11', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 13:31:46'),
(1000, 'f0f2a734-a243-4cf3-b02e-c46984904cb3', 615124, '1311', 'CR', '', '500000', 'Five Hundred Thousand ', 'Being Non - cash Discount of 20% on N3,000,000 (Balance Payment on property) at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-09-11', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 13:35:29'),
(1001, 'ce7a38c4-eaa5-43e2-bc26-53114e75ef1b', 0, '1312', 'CR', '', '100000', 'One Hundred Thousand ', 'Being Non - Cash Discount on N3,000,000 (Excavation for Fencing of Plot on Plot 004 at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-09-11', 'GC@550', 'undefined', '2022-02-03', '2022-02-03 13:37:53'),
(1002, '684de09a-3135-4652-aa23-2a5cafceb878', 1847189, '1314', 'CR', 'transfer', '2400000', 'Two Million', 'Being Additional Payment for our property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-09-12', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 13:41:54'),
(1003, 'ca3dd038-a9af-4ecd-9d3f-407418f1ff7d', 4114681, '1319', 'CR', 'transfer', '2500000', 'Two Million Five Hundred', 'Being payment for our property at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-09-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 13:47:17'),
(1004, 'b43c216c-c353-478b-9919-fd9e93a0ec33', 4114681, '1320', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being Bonus representing 20% Special discount on N2.5m payment made on our property at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-09-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 13:53:55'),
(1005, '9c1dece3-f250-4235-a31a-764a6cefc110', 548691, '1322', 'CR', 'transfer', '35000', 'Thrity five thousand thousand ', 'Being payment for Application fee', '4332342', 0, 4332342, 0, '2020-09-26', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:08:20'),
(1006, '28fa41d6-99e3-46e2-aee4-f136dc5d5914', 548691, '1326', 'CR', 'transfer', '5000000', 'Five Million', 'Being Deposit for a plot of land measuring 700 Square metres at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-09-29', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:12:07'),
(1007, '342f4d89-aa1d-44e8-af4b-7e1fa5e44b6d', 1448, '1330', 'CR', 'transfer', '5000000', 'Five Million', 'Being Deposit for a plot of land at Oxford Homes, Gaduwa District, Abuja for a Unit of 4 Bedroom fully Detached Duplex', '4332342', 0, 4332342, 0, '2020-09-30', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:16:12'),
(1008, 'c3acd011-0b78-4904-bae7-f757f091175f', 3836362, '1331', 'CR', 'transfer', '15000', 'Fifteen Thousand', 'Being payment for Application fee for a property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-10-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:20:06'),
(1009, '11944f61-8286-4b89-a3b0-0916736ea488', 1045676, '1332', 'CR', 'transfer', '2000000', 'Two Million', 'Being payment for Additional Deposit for a Plot of land at Oxford Homes, Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-10-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:22:06'),
(1010, '6fc0c74f-5b55-4fd5-a51b-3a2c372c5d05', 1045676, '1334', 'CR', 'transfer', '1000000', 'One Million', 'Being payment for Additional Deposit for the property at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-10-14', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:25:12'),
(1011, 'f048f1e0-9173-4c2e-b30c-b4cecd05a0f8', 1045676, '1336', 'CR', 'transfer', '400000', 'Four Million', 'Being Deposit for a plot of land at Oxford Homes Gaduwa District, Abuja', '4332342', 0, 4332342, 0, '2020-10-15', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:30:37'),
(1012, 'a72b78ea-e05d-480c-9b68-dc26d2132938', 2046949, '1341', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being Deposit for 2 plots of land at Varsity Gardens estate, karshi', 'undefined', 0, 0, 0, '2020-11-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:39:19'),
(1013, 'ac6f2c09-e718-4a62-9b59-242da6388af0', 1144510, '1342', 'CR', 'transfer', '4600000', 'Four million, six hundred ', 'Being deposit for a Plot of land measuring 1000 square metres at Oxford Homes, gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-11-04', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:42:28'),
(1014, '63a83b73-cdb4-4ab3-bf87-f999008c8187', 3517706, '1343', 'CR', 'transfer', '5000000', 'Five Million', 'Being Deposit for a plot of land measuring 1000 square metres at Oxford homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-11-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:44:55'),
(1015, 'e6692030-9e57-4950-a0b1-5db40cd0a143', 19431, '1344', 'CR', 'transfer', '4600000', 'Four Million Six Hundred Thousand', 'Being Deposit for a plot of land at Oxford Homes, Measuring 1000 square metres at Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-11-09', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:47:31'),
(1016, '8201c8eb-21d8-489e-a1a8-53c0f091c5a2', 2323463, '1345', 'CR', 'transfer', '500000', 'Five Hundred Thousand ', 'Being payment for Additional deposit for a plot of land for a unit of semi-Detached Duplex at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-11-06', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:50:09'),
(1017, '4b1ab7bb-972b-4370-a378-2f08df55c796', 548691, '1346', 'CR', 'transfer', '5000000', 'Five Million', 'Being Additional Deposit for our property at Oxford Homes, Gaduwa District, Abuja ', 'undefined', 0, 0, 0, '2020-11-13', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:51:41'),
(1018, '871d8de8-d3b4-4441-8557-481988d6e869', 1144510, '1348', 'CR', 'transfer', '20000', 'Twenty Thousand', 'Being payment for Application form fee ', '4332342', 0, 4332342, 0, '2020-11-16', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:57:27'),
(1019, '2c715f50-5d49-4bbc-a584-db89bdd6557e', 3357762, '1349', 'CR', 'transfer', '3600000', 'Three Million Six Hundred Thousand', 'Being payment for Deposit for a plot of land measuring 700 square meters at Oxford Homes, Gaduwa District, Abuja', 'undefined', 0, 0, 0, '2020-11-24', 'GC@550', 'http://192.168.0.101:5000/publicuploadphoto_1631709449588_blob', '2022-02-03', '2022-02-03 14:59:40'),
(1020, '9f0c2467-7d46-46f1-827c-7d8fedf1f05a', 351166, 'undefined', 'DR', 'cheque', '34017', 'undefined', 'Being total bank charges for Nov. 2021, charged on Santos properties Nig. Ltd. Zenith Bank Account', '4332342', 0, 0, 1, '2021-11-30', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:23:00'),
(1021, '93c910f1-d103-4bff-bba5-cd797240b992', 351166, 'undefined', 'CR', 'cheque', '34017', 'undefined', 'Being total bank charges for Nov. 2021, charged on Santos properties Nig. Ltd. Zenith Bank Account', '2723495', 0, 0, 1, '2021-11-30', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:23:00'),
(1022, '661ea921-54f7-4ede-93c8-34355f5e7d44', 2423727, 'undefined', 'DR', 'transfer', '375000', 'undefined', 'Being amount transferred to Raymond Onuora Udefi for the supply of Blocks at Santos properties - Dakwo', '4332342', 0, 0, 1, '2021-11-01', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:39:23'),
(1023, '4df4831d-5469-448d-aac9-e4c9400950d9', 2423727, 'undefined', 'CR', 'transfer', '375000', 'undefined', 'Being amount transferred to Raymond Onuora Udefi for the supply of Blocks at Santos properties - Dakwo', '930555', 0, 0, 1, '2021-11-01', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:39:23'),
(1024, 'd43348df-9620-4f57-97e1-5cad7d5905b2', 2839151, 'undefined', 'DR', 'transfer', '1586000', 'undefined', 'Being expense on Building/Dakwo, transferred to Collectable Marks Associate Ltd', '4332342', 0, 0, 1, '2021-11-02', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:42:02'),
(1025, 'bdf1eccb-d5a4-4948-b86b-0141367b5cb4', 2839151, 'undefined', 'CR', 'transfer', '1586000', 'undefined', 'Being expense on Building/Dakwo, transferred to Collectable Marks Associate Ltd', '3337366', 0, 0, 1, '2021-11-02', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:42:02'),
(1026, '57686f5c-f4aa-4e16-a8f2-1e923f3994fd', 842123, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Being amount withdrawn for MD for General expenses', '4332342', 0, 0, 1, '2021-11-02', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:44:05'),
(1027, 'f0bbf6d8-5294-44aa-9e61-5d8e2550f96c', 842123, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Being amount withdrawn for MD for General expenses', '930555', 0, 0, 1, '2021-11-02', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:44:05'),
(1028, '6b6565b4-3923-46cd-8e57-8d6d8c5e3267', 1144836, 'undefined', 'DR', 'transfer', '550000', 'undefined', 'Being payment made for the purchase of two laptops', '4332342', 0, 0, 1, '2021-11-02', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:46:35'),
(1029, '6791df3c-eeaa-415b-b6ed-19eb75ee5ed0', 1144836, 'undefined', 'CR', 'transfer', '550000', 'undefined', 'Being payment made for the purchase of two laptops', '516181', 0, 0, 1, '2021-11-02', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:46:35'),
(1030, '4be14fd1-bf0f-4a2d-8585-a656536155d7', 414617, 'undefined', 'DR', 'transfer', '2300000', 'undefined', 'Loan Interest Repayment to Felicia Ikegbulam', '4332342', 0, 0, 1, '2021-11-03', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:49:02'),
(1031, 'b410c3e5-e328-463c-9853-b2dfb8b35ea2', 414617, 'undefined', 'CR', 'transfer', '2300000', 'undefined', 'Loan Interest Repayment to Felicia Ikegbulam', '1820464', 0, 0, 1, '2021-11-03', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:49:02'),
(1032, '056ae14a-32a7-4683-9e1e-3bb2a9a9444f', 849861, 'undefined', 'DR', 'transfer', '50000', 'undefined', 'Being payment of agency fee made to MD', '4332342', 0, 0, 1, '2021-11-03', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:51:09'),
(1033, 'ab124a85-c4a9-4049-87e7-9f9bdc02efb4', 849861, 'undefined', 'CR', 'transfer', '50000', 'undefined', 'Being payment of agency fee made to MD', '930555', 0, 0, 1, '2021-11-03', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:51:09'),
(1034, '22ca6acc-26b5-44ef-9551-a83c6851b288', 155190, 'undefined', 'DR', 'transfer', '2000000', 'undefined', 'Being Loan Liquidation to Felicia Ikegbulam', '4332342', 0, 0, 1, '2021-11-05', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:54:36'),
(1035, 'b01247c4-e079-4a1e-840e-bc023465219b', 155190, 'undefined', 'CR', 'transfer', '2000000', 'undefined', 'Being Loan Liquidation to Felicia Ikegbulam', '1820464', 0, 0, 1, '2021-11-05', 'GC@550', 'undefined', '2022-04-21', '2022-04-21 13:54:36'),
(1036, 'f45e655b-f153-4377-b565-d9fd8cc95285', 1537511, 'undefined', 'DR', 'cheque', '6133', 'undefined', 'Additional bank charges for the month of Nov. 2021', '4332342', 0, 0, 1, '2021-11-30', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 11:53:07'),
(1037, '6fce6bf7-5e0e-4ced-a9b8-e3e64e133ebb', 1537511, 'undefined', 'CR', 'cheque', '6133', 'undefined', 'Additional bank charges for the month of Nov. 2021', '4332342', 0, 0, 1, '2021-11-30', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 11:53:07'),
(1038, 'd637575f-1786-41ed-904a-6e10d3c31363', 1353534, 'undefined', 'DR', 'transfer', '1000000', 'undefined', 'Being Loan refund made to Felicia Ikegbulam', '4332342', 0, 0, 1, '2021-11-10', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 11:55:48'),
(1039, 'e46bdd24-6251-45f5-9055-ac5bffd06298', 1353534, 'undefined', 'CR', 'transfer', '1000000', 'undefined', 'Being Loan refund made to Felicia Ikegbulam', '1820464', 0, 0, 1, '2021-11-10', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 11:55:48'),
(1040, '8208361a-b398-4a44-a1b5-8290dd11e887', 5455367, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Being amount withdrawn for general office expenses', '4332342', 0, 0, 1, '2021-11-10', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 11:59:09'),
(1041, 'ac82cc62-5566-467f-ba39-b47db46ecd3d', 5455367, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Being amount withdrawn for general office expenses', '930555', 0, 0, 1, '2021-11-10', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 11:59:09'),
(1042, 'd14a0839-c4a8-4b27-874d-ab5bb19947e0', 1559446, 'undefined', 'DR', 'transfer', '350000', 'undefined', 'Being amount used to purchase building materials for Santos Estate', '4332342', 0, 0, 1, '2021-11-10', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 12:01:21'),
(1043, 'da89a81f-309b-49be-8402-781c8fe5a426', 1559446, 'undefined', 'CR', 'transfer', '350000', 'undefined', 'Being amount used to purchase building materials for Santos Estate', '3337366', 0, 0, 1, '2021-11-10', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 12:01:21'),
(1044, '0c987bcd-632e-4627-9e93-ccaaa321f85b', 3022811, 'undefined', 'DR', 'transfer', '200000', 'undefined', 'Being Training Expenses Made', '4332342', 0, 0, 1, '2021-11-11', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 12:26:48'),
(1045, '062cf61f-36a0-47b8-9496-08de6d6f0436', 3022811, 'undefined', 'CR', 'transfer', '200000', 'undefined', 'Being Training Expenses Made', '1949733', 0, 0, 1, '2021-11-11', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 12:26:48'),
(1046, 'ca4c97f4-8302-4244-b374-7c3b13b59d38', 227493, 'undefined', 'DR', 'transfer', '400000', 'undefined', 'Being payment for construction made to Collectable Marks Associate Ltd.', '4332342', 0, 0, 1, '2021-11-11', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 12:30:05'),
(1047, '5d323700-3513-4274-aebb-65073c3fdcca', 227493, 'undefined', 'CR', 'transfer', '400000', 'undefined', 'Being payment for construction made to Collectable Marks Associate Ltd.', '3337366', 0, 0, 1, '2021-11-11', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 12:30:05'),
(1048, 'd1163afb-7167-48d7-a648-5b188d4a10a4', 113092, 'undefined', 'DR', 'transfer', '150000', 'undefined', 'Being training Expenses for Mrs Anthonia Chime', '4332342', 0, 0, 1, '2021-11-11', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:02:26'),
(1049, '3a75bf7f-a7a4-49e3-bfda-56f06c6ec4ce', 113092, 'undefined', 'CR', 'transfer', '150000', 'undefined', 'Being training Expenses for Mrs Anthonia Chime', '1949733', 0, 0, 1, '2021-11-11', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:02:26'),
(1050, '8063b755-6922-485a-9aa5-c76575a5022d', 11590, 'undefined', 'DR', 'transfer', '250000', 'undefined', 'Being payment to Onuora Udefi for the supply of 1000 blocks for Dakwo', '4332342', 0, 0, 1, '2021-11-13', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:42:44'),
(1051, 'bc5005de-3b96-492f-9ca8-ca919f5555dc', 11590, 'undefined', 'CR', 'transfer', '250000', 'undefined', 'Being payment to Onuora Udefi for the supply of 1000 blocks for Dakwo', '3337366', 0, 0, 1, '2021-11-13', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:42:44'),
(1052, 'ce01bb38-b3bf-47eb-a17c-9ee94af408f9', 504230, 'undefined', 'DR', 'transfer', '60000', 'undefined', 'Being 2% Agency fee paid to MD', '4332342', 0, 0, 1, '2021-11-14', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:43:57'),
(1053, '79f52731-b504-4587-ba54-eb6bb86cd832', 504230, 'undefined', 'CR', 'transfer', '60000', 'undefined', 'Being 2% Agency fee paid to MD', '3059969', 0, 0, 1, '2021-11-14', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:43:57'),
(1054, 'c73958dc-d4af-42f7-9330-8834cd8e9333', 344641, 'undefined', 'DR', 'transfer', '878000', 'undefined', 'Being payment to Collins Chiji Ogbonna for iron rods - Dakwo', '4332342', 0, 0, 1, '2021-11-15', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:46:23'),
(1055, 'def0881c-42db-40f8-bcb1-c80aff533d38', 344641, 'undefined', 'CR', 'transfer', '878000', 'undefined', 'Being payment to Collins Chiji Ogbonna for iron rods - Dakwo', '3337366', 0, 0, 1, '2021-11-15', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:46:23'),
(1056, '6a8f43a9-0a53-4eb3-8529-725293c4e280', 2946488, 'undefined', 'DR', 'transfer', '450000', 'undefined', 'PR -  Joseph Francis Zoba', '4332342', 0, 0, 1, '2021-11-12', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:49:08'),
(1057, '68931bb9-ec7a-4d86-a9c0-0bdd5bafc192', 2946488, 'undefined', 'CR', 'transfer', '450000', 'undefined', 'PR -  Joseph Francis Zoba', '737272', 0, 0, 1, '2021-11-12', 'GC@550', 'undefined', '2022-04-25', '2022-04-25 13:49:08'),
(1058, '367aa0b3-0a14-4198-b1d1-abcb06acc7d4', 525053, 'undefined', 'DR', 'transfer', '570000', 'undefined', 'Being refund of Deposit transferred to Joseph Francis', '4332342', 0, 0, 1, '2021-11-15', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 11:55:48');
INSERT INTO `transactionmodel` (`id`, `uuid`, `rcpt_no`, `ticket_no`, `tx_type`, `pay_method`, `amount`, `amount_in_words`, `description`, `account_FK`, `property_FK`, `bank`, `paid`, `tx_date`, `postBy_FK`, `signature`, `createdAt`, `updatedAt`) VALUES
(1059, '4c13db5a-8441-4425-82b4-e7cd5d8f923d', 525053, 'undefined', 'CR', 'transfer', '570000', 'undefined', 'Being refund of Deposit transferred to Joseph Francis', '930555', 0, 0, 1, '2021-11-15', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 11:55:48'),
(1060, 'f4b50eaf-fad6-4faf-8072-4fb601a81379', 5455353, 'undefined', 'DR', 'cheque', '60000', 'undefined', 'Being withdrawal made for General Office Expenses', '4332342', 0, 0, 1, '2021-11-16', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 11:57:21'),
(1061, '7c3627f6-d859-494e-abda-0ccd4a31fd82', 5455353, 'undefined', 'CR', 'cheque', '60000', 'undefined', 'Being withdrawal made for General Office Expenses', '930555', 0, 0, 1, '2021-11-16', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 11:57:21'),
(1062, 'af93debb-e158-42d7-a708-8da402a95cda', 2757650, 'undefined', 'DR', 'cheque', '75000', 'undefined', 'Being Withdrawal made for General Office Expenses', '4332342', 0, 0, 1, '2021-11-16', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 11:58:59'),
(1063, '606f2565-904c-440c-9b62-53a3a7f88e24', 2757650, 'undefined', 'CR', 'cheque', '75000', 'undefined', 'Being Withdrawal made for General Office Expenses', '930555', 0, 0, 1, '2021-11-16', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 11:58:59'),
(1064, '0f87a294-3960-45d0-b89b-9ccab2111a3f', 559149, 'undefined', 'DR', 'transfer', '89700', 'undefined', 'Being amount paid for the repair of Project Vehicle', '4332342', 0, 0, 1, '2021-11-16', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:00:40'),
(1065, '400159b0-008c-4888-a648-59c37c138360', 559149, 'undefined', 'CR', 'transfer', '89700', 'undefined', 'Being amount paid for the repair of Project Vehicle', '3520835', 0, 0, 1, '2021-11-16', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:00:40'),
(1066, '518d7a88-2dc9-4693-8932-f7839e13ffd0', 460311, 'undefined', 'DR', 'transfer', '150000', 'undefined', 'Being Refund of Deposit made to Joseph Francis/GTB', '4332342', 0, 0, 1, '2021-11-17', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:02:10'),
(1067, 'f3128c5c-1acd-4a58-a0e2-ee0ede2bd2d2', 460311, 'undefined', 'CR', 'transfer', '150000', 'undefined', 'Being Refund of Deposit made to Joseph Francis/GTB', '4235155', 0, 0, 1, '2021-11-17', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:02:10'),
(1068, 'a35722fa-b10c-4554-8792-6c27d4a16569', 162691, 'undefined', 'DR', 'transfer', '175000', 'undefined', 'Being Refund of Deposit to Joseph Francis/GTB', '4332342', 0, 0, 1, '2021-11-18', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:03:40'),
(1069, '1d35bccf-6c4c-4c9d-8171-c3c51feacb5f', 162691, 'undefined', 'CR', 'transfer', '175000', 'undefined', 'Being Refund of Deposit to Joseph Francis/GTB', '4235155', 0, 0, 1, '2021-11-18', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:03:40'),
(1070, '53581f91-477f-4d27-ac7f-3f45660045d0', 45425, 'undefined', 'DR', 'transfer', '100000', 'undefined', 'being 2% Agency fee paid to MD/Mr. Ishidi', '4332342', 0, 0, 1, '2021-11-23', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:07:10'),
(1071, '7578ce74-5018-45ac-a915-1ada8cad8d4c', 45425, 'undefined', 'CR', 'transfer', '100000', 'undefined', 'being 2% Agency fee paid to MD/Mr. Ishidi', '3059969', 0, 0, 1, '2021-11-23', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:07:10'),
(1072, '2f87a890-f229-4d96-8629-636d292ca6b8', 167437, 'undefined', 'DR', 'transfer', '200000', 'undefined', 'Being 4% Agency fee paid to Maxwell Zunman/ Mr. Ishidi', '4332342', 0, 0, 1, '2021-11-23', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:08:42'),
(1073, 'c216eaff-2aa3-43db-a391-7e21da0dee75', 167437, 'undefined', 'CR', 'transfer', '200000', 'undefined', 'Being 4% Agency fee paid to Maxwell Zunman/ Mr. Ishidi', '3059969', 0, 0, 1, '2021-11-23', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:08:42'),
(1074, '23b24d4b-0a8d-4ae3-8b9c-fa752b670edf', 488125, 'undefined', 'DR', 'transfer', '100000', 'undefined', 'Being payment (Refund) to Mrs. Anthonia Ego Chime for vehicle repairs', '4332342', 0, 0, 1, '2021-11-23', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:10:20'),
(1075, 'eecd510b-7eb5-41a6-8aee-4838f7f0e0cd', 488125, 'undefined', 'CR', 'transfer', '100000', 'undefined', 'Being payment (Refund) to Mrs. Anthonia Ego Chime for vehicle repairs', '3520835', 0, 0, 1, '2021-11-23', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:10:20'),
(1076, '8157c8cc-36d7-467f-bb03-a041ff557158', 241084, 'undefined', 'DR', 'transfer', '200000', 'undefined', 'Being 2% Agency fee paid to Ikegbulam Felicia Ngozi/UBA', '4332342', 0, 0, 1, '2021-11-24', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:12:27'),
(1077, '4ba7a517-6e3a-46c3-871a-5f8e39e811e6', 241084, 'undefined', 'CR', 'transfer', '200000', 'undefined', 'Being 2% Agency fee paid to Ikegbulam Felicia Ngozi/UBA', '3059969', 0, 0, 1, '2021-11-24', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:12:27'),
(1078, '538d4772-09fa-42be-95e7-d43ceabbc84e', 3312148, 'undefined', 'DR', 'transfer', '35000', 'undefined', 'Being Survey fee paid to Suleiman Salihu/ABN', '4332342', 0, 0, 1, '2021-11-24', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:14:31'),
(1079, '4cc79c8b-54aa-449c-bc01-55a4921b26b5', 3312148, 'undefined', 'CR', 'transfer', '35000', 'undefined', 'Being Survey fee paid to Suleiman Salihu/ABN', '1853414', 0, 0, 1, '2021-11-24', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:14:31'),
(1080, 'a31e73f6-b239-4d77-a933-5191d919be5d', 3714748, 'undefined', 'DR', 'transfer', '100000', 'undefined', 'Medical Expenses transferred to Mrs. Anthonia Ego Chime', '4332342', 0, 0, 1, '2021-11-26', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:16:47'),
(1081, '071f9629-9f9b-4b2c-9287-64d2e2798dd1', 3714748, 'undefined', 'CR', 'transfer', '100000', 'undefined', 'Medical Expenses transferred to Mrs. Anthonia Ego Chime', '2951427', 0, 0, 1, '2021-11-26', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:16:47'),
(1082, 'fd0b5857-103b-4bfc-8989-211ad9c87396', 5316210, 'undefined', 'DR', 'transfer', '650000', 'undefined', 'Being Loan repayment to Mr. Augustine Onyishi', '4332342', 0, 0, 1, '2021-11-26', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:19:03'),
(1083, 'd6d9bf46-1408-444f-a68f-c3fd80ea9a1d', 5316210, 'undefined', 'CR', 'transfer', '650000', 'undefined', 'Being Loan repayment to Mr. Augustine Onyishi', '1820464', 0, 0, 1, '2021-11-26', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:19:03'),
(1084, '6db3219e-c15c-403c-a25f-6a6f39259252', 919348, 'undefined', 'DR', 'transfer', '735000', 'undefined', 'November staff Salaries', '4332342', 0, 0, 1, '2021-11-26', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:22:30'),
(1085, '4efc63e7-75bd-4119-8413-8e16c66b23cc', 919348, 'undefined', 'CR', 'transfer', '735000', 'undefined', 'November staff Salaries', '415194', 0, 0, 1, '2021-11-26', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:22:30'),
(1086, '53f94249-bd65-40e4-8f11-3eacaf6141bc', 3622508, 'undefined', 'DR', 'transfer', '350000', 'undefined', 'Being refund of deposit to Joseph Francis Zoba/GTB', '4332342', 0, 0, 1, '2021-11-27', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:24:02'),
(1087, '9a370e8e-d696-48ba-b8c2-036321706c15', 3622508, 'undefined', 'CR', 'transfer', '350000', 'undefined', 'Being refund of deposit to Joseph Francis Zoba/GTB', '4235155', 0, 0, 1, '2021-11-27', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:24:02'),
(1088, 'cbd86cd6-e650-4808-92e8-eaf2e733b5db', 824696, 'undefined', 'DR', 'transfer', '300000', 'undefined', 'Being Refund of deposit  to Paul Patience Ezra/UBA', '4332342', 0, 0, 1, '2021-11-27', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:25:57'),
(1089, 'f360c81d-b50b-47d8-b797-f4340ee0c84e', 824696, 'undefined', 'CR', 'transfer', '300000', 'undefined', 'Being Refund of deposit  to Paul Patience Ezra/UBA', '4235155', 0, 0, 1, '2021-11-27', 'GC@550', 'undefined', '2022-04-27', '2022-04-27 12:25:57'),
(1090, '36883244-c8b6-42be-936f-25f09091c141', 2330990, 'undefined', 'DR', 'transfer', '28442', 'undefined', 'Being total bank charges charged on Santos Properties Nig. Ltd. Zenith Bank Account ', '4332342', 0, 0, 1, '2021-12-30', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:32:23'),
(1091, '6a70a883-e8b6-45c2-97bc-6a2ccb894117', 2330990, 'undefined', 'CR', 'transfer', '28442', 'undefined', 'Being total bank charges charged on Santos Properties Nig. Ltd. Zenith Bank Account ', '2723495', 0, 0, 1, '2021-12-30', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:32:23'),
(1092, '68735760-7e8c-4345-be25-f7242443456b', 2932349, 'undefined', 'DR', 'transfer', '637000', 'undefined', 'Being Loan interest paid to Paul, Patience Ezra/UBA (by Uchechi)', '4332342', 0, 0, 1, '2021-12-01', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:36:20'),
(1093, '0ae9b9fb-ad6c-4529-a600-b5c53dcc946b', 2932349, 'undefined', 'CR', 'transfer', '637000', 'undefined', 'Being Loan interest paid to Paul, Patience Ezra/UBA (by Uchechi)', '211787', 0, 0, 1, '2021-12-01', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:36:20'),
(1094, '71b8e12b-ee8e-480d-aad7-bb500366ad28', 2636278, 'undefined', 'DR', 'transfer', '1000000', 'undefined', 'Medical Expenses/MD', '4332342', 0, 0, 1, '2021-12-01', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:38:10'),
(1095, '96973641-e47d-4b1b-bea8-0f4f2383a7ad', 2636278, 'undefined', 'CR', 'transfer', '1000000', 'undefined', 'Medical Expenses/MD', '2951427', 0, 0, 1, '2021-12-01', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:38:10'),
(1096, '72e327f9-4341-4090-958f-1e212a427ab2', 374156, 'undefined', 'DR', 'transfer', '3000000', 'undefined', 'Being refund of Development fee paid to Mbanugo Chambers', '4332342', 0, 0, 1, '2021-12-06', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:42:34'),
(1097, '88409dae-d2e1-48ba-9420-705e07ef465d', 374156, 'undefined', 'CR', 'transfer', '3000000', 'undefined', 'Being refund of Development fee paid to Mbanugo Chambers', '4235155', 0, 0, 1, '2021-12-06', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:42:34'),
(1098, '12c792e0-7b64-4e93-a61f-d0076da85f8c', 2645678, 'undefined', 'DR', 'transfer', '6500000', 'undefined', 'Being payment made to TOUFIC SABA for purchase of properties', '4332342', 0, 0, 1, '2021-12-08', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:48:17'),
(1099, '2587fbc5-5209-44b0-b2d9-bbcc0a86a87d', 2645678, 'undefined', 'CR', 'transfer', '6500000', 'undefined', 'Being payment made to TOUFIC SABA for purchase of properties', '314480', 0, 0, 1, '2021-12-08', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:48:17'),
(1100, '6cc1c544-3ec8-40e0-bf0f-2c111242a332', 2248987, 'undefined', 'DR', 'transfer', '1000000', 'undefined', 'Household Expenses/MD', '4332342', 0, 0, 1, '2021-12-08', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:57:28'),
(1101, '0bc6db51-f31e-42ee-b8a6-c5a5200c454e', 2248987, 'undefined', 'CR', 'transfer', '1000000', 'undefined', 'Household Expenses/MD', '5012311', 0, 0, 1, '2021-12-08', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:57:28'),
(1102, '329b4ac2-6ddc-433a-8fcf-d6f4b8d12156', 3457931, 'undefined', 'DR', 'transfer', '300000', 'undefined', 'Household furniture', '4332342', 0, 0, 1, '2021-12-09', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:59:23'),
(1103, 'dbc647f7-7e36-41a5-a161-c279d8135b6a', 3457931, 'undefined', 'CR', 'transfer', '300000', 'undefined', 'Household furniture', '314480', 0, 0, 1, '2021-12-09', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 12:59:23'),
(1104, '8f0e7472-dd2f-4187-a7aa-309cd9c7281e', 2659651, 'undefined', 'DR', 'transfer', '350000', 'undefined', 'Loan Interest transferred to Betterment Investment Nigeria Ltd.', '4332342', 0, 0, 1, '2021-12-10', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:00:55'),
(1105, 'b00f7dfb-33e6-4bdb-b6f3-c27b2cda6607', 2659651, 'undefined', 'CR', 'transfer', '350000', 'undefined', 'Loan Interest transferred to Betterment Investment Nigeria Ltd.', '211787', 0, 0, 1, '2021-12-10', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:00:55'),
(1106, 'f08c5855-2561-41b7-8cf2-ec7f007e44bc', 11207, 'undefined', 'DR', 'cheque', '500000', 'undefined', 'Being Burial Expenses made', '4332342', 0, 0, 1, '2021-12-14', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:02:11'),
(1107, '938dc339-2a21-462b-98b7-221a2c8d4e0c', 11207, 'undefined', 'CR', 'cheque', '500000', 'undefined', 'Being Burial Expenses made', '5012311', 0, 0, 1, '2021-12-14', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:02:11'),
(1108, '005e21e2-7665-4190-a4d9-b913b221b1fe', 172409, 'undefined', 'DR', 'transfer', '822600', 'undefined', 'Being December 2021 staff salaries and allowances paid to staff', '4332342', 0, 0, 1, '2021-12-14', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:05:12'),
(1109, '5b767f1b-519b-4728-ae19-48e755eab30e', 172409, 'undefined', 'CR', 'transfer', '822600', 'undefined', 'Being December 2021 staff salaries and allowances paid to staff', '415194', 0, 0, 1, '2021-12-14', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:05:12'),
(1110, '3fa257f0-61e6-4c8d-a29b-eb24d3d50df2', 185666, 'undefined', 'DR', 'transfer', '541250', 'undefined', 'Being Audit and Consultancy Fee paid to Martin Onyenmuru & Co.', '4332342', 0, 0, 1, '2021-12-15', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:06:52'),
(1111, 'c758848f-6804-4cf8-b2f8-e0ced4e22ca6', 185666, 'undefined', 'CR', 'transfer', '541250', 'undefined', 'Being Audit and Consultancy Fee paid to Martin Onyenmuru & Co.', '5422183', 0, 0, 1, '2021-12-15', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:06:52'),
(1112, '515a1456-d0be-4b1b-b04f-5e62fc1383ac', 389142, 'undefined', 'DR', 'transfer', '720000', 'undefined', 'Being loan interest paid to Felicia Ikegbulam', '4332342', 0, 0, 1, '2021-12-20', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:11:27'),
(1113, '6d1e340c-a9e9-4c0b-891c-86a894c60910', 389142, 'undefined', 'CR', 'transfer', '720000', 'undefined', 'Being loan interest paid to Felicia Ikegbulam', '211787', 0, 0, 1, '2021-12-20', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:11:27'),
(1114, '3a8b33f7-bb75-499e-9527-afc70340f61f', 3311332, 'undefined', 'DR', 'transfer', '250000', 'undefined', 'Being amount paid for the purchase of office equipment', '4332342', 0, 0, 1, '2021-12-22', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:12:50'),
(1115, '73584d16-9ddd-4815-a05e-a29b8d0c6b13', 3311332, 'undefined', 'CR', 'transfer', '250000', 'undefined', 'Being amount paid for the purchase of office equipment', '516181', 0, 0, 1, '2021-12-22', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:12:50'),
(1116, 'ca77f4f1-b328-45ee-a05a-39ab0ad21014', 5612350, 'undefined', 'DR', 'transfer', '400000', 'undefined', 'Bein Part payment for plot 416/KYAMI/SANTOS Transferred to Samson Ephraim Tarkighir', '4332342', 0, 0, 1, '2021-12-24', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:16:53'),
(1117, 'cca3252a-ba78-483e-95fd-c4633ac253e0', 5612350, 'undefined', 'CR', 'transfer', '400000', 'undefined', 'Bein Part payment for plot 416/KYAMI/SANTOS Transferred to Samson Ephraim Tarkighir', '534255', 0, 0, 1, '2021-12-24', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:16:53'),
(1118, '4a7668b1-94ce-4c4e-998f-d25712f2fc2f', 5916117, 'undefined', 'DR', 'transfer', '40000', 'undefined', 'Being amount paid to Fredrick Ogbonna Aga for work at plot 1946, Gaduwa/Santos', '4332342', 0, 0, 1, '2021-12-24', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:20:33'),
(1119, '590ca974-e639-4d25-979d-58b28e3656b8', 5916117, 'undefined', 'CR', 'transfer', '40000', 'undefined', 'Being amount paid to Fredrick Ogbonna Aga for work at plot 1946, Gaduwa/Santos', '3337366', 0, 0, 1, '2021-12-24', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:20:33'),
(1120, '64e83bf5-80eb-4116-b42d-e528ec7e3f1a', 3920220, 'undefined', 'DR', 'transfer', '500000', 'undefined', 'Loan repayment/MD', '4332342', 0, 0, 1, '2021-12-24', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:23:19'),
(1121, 'f2005ac6-7adf-4007-99ae-276f3fc874c9', 3920220, 'undefined', 'CR', 'transfer', '500000', 'undefined', 'Loan repayment/MD', '1820464', 0, 0, 1, '2021-12-24', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:23:19'),
(1122, '36d3a3e5-830b-42e0-b4ad-d80a5ec49f0b', 2523330, 'undefined', 'DR', 'transfer', '350000', 'undefined', 'Sundry Expenses/MD', '4332342', 0, 0, 1, '2021-12-27', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:25:54'),
(1123, '83ca26de-3486-479e-be5c-f427554180c5', 2523330, 'undefined', 'CR', 'transfer', '350000', 'undefined', 'Sundry Expenses/MD', '5012311', 0, 0, 1, '2021-12-27', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:25:54'),
(1124, '2b4c43dd-eccc-47bb-ae62-fb6b78208c32', 26310, 'undefined', 'DR', 'transfer', '750000', 'undefined', 'Being amount paid for Hall booking  - National Christian center, for burial Service of songs ', '4332342', 0, 0, 1, '2021-12-28', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:28:26'),
(1125, '0f108a48-82bb-4085-a953-43d86ee99fe4', 26310, 'undefined', 'CR', 'transfer', '750000', 'undefined', 'Being amount paid for Hall booking  - National Christian center, for burial Service of songs ', '5012311', 0, 0, 1, '2021-12-28', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:28:26'),
(1126, 'd75ba958-41be-4824-bdfc-14d8e931128e', 3228855, 'undefined', 'DR', 'transfer', '2300000', 'undefined', 'Burial Expenses/MD', '4332342', 0, 0, 1, '2021-12-29', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:29:42'),
(1127, '53f26b87-58c9-4f0f-9459-ed750fb7ba66', 3228855, 'undefined', 'CR', 'transfer', '2300000', 'undefined', 'Burial Expenses/MD', '5012311', 0, 0, 1, '2021-12-29', 'GC@550', 'undefined', '2022-05-05', '2022-05-05 13:29:42'),
(1128, '6e997eb6-963b-4f6e-a3e3-2ee3a8c5148a', 56565, 'undefined', 'DR', 'transfer', '37675', 'undefined', 'Being total bank charges on Santos Properties (Zenith bank) Account for January, 2022', '4332342', 0, 0, 1, '2022-01-31', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 10:58:56'),
(1129, 'db9c7edc-a601-4d56-b151-a9d562a85628', 56565, 'undefined', 'CR', 'transfer', '37675', 'undefined', 'Being total bank charges on Santos Properties (Zenith bank) Account for January, 2022', '2723495', 0, 0, 1, '2022-01-31', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 10:58:56'),
(1130, '3a0b3c07-898d-4b69-b8fb-c50b7dee4ea3', 282966, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Household Expenses', '4332342', 0, 0, 1, '2022-01-05', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:03:38'),
(1131, '46c5f22e-402b-4405-98d1-c2bb11bdfff1', 282966, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Household Expenses', '5012311', 0, 0, 1, '2022-01-05', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:03:38'),
(1132, 'cd2fd1e8-8dbf-4d4d-8815-9fe6bceb3410', 443250, 'undefined', 'DR', 'transfer', '1250000', 'undefined', 'Being logistics expenses for Burial', '4332342', 0, 0, 1, '2022-01-06', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:24:13'),
(1133, '45227883-f826-4429-89ab-02a1aef9e03a', 443250, 'undefined', 'CR', 'transfer', '1250000', 'undefined', 'Being logistics expenses for Burial', '5012311', 0, 0, 1, '2022-01-06', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:24:13'),
(1134, '84169a54-7bcf-48af-b05c-f15dd6f14308', 1924582, 'undefined', 'DR', 'transfer', '475000', 'undefined', 'Household Expenses/MD', '4332342', 0, 0, 1, '2022-01-11', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:25:28'),
(1135, 'd49986eb-fa95-407a-bd2c-1193a65a9e49', 1924582, 'undefined', 'CR', 'transfer', '475000', 'undefined', 'Household Expenses/MD', '5012311', 0, 0, 1, '2022-01-11', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:25:28'),
(1136, '138c39e5-4f73-4f13-94ed-dc811e747877', 3425127, 'undefined', 'DR', 'transfer', '1512500', 'undefined', 'Being School fees paid to Baze University', '4332342', 0, 0, 1, '2022-01-21', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:28:37'),
(1137, 'a3e880f7-d397-4735-92bd-3c95549cfcaf', 3425127, 'undefined', 'CR', 'transfer', '1512500', 'undefined', 'Being School fees paid to Baze University', '1057254', 0, 0, 1, '2022-01-21', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:28:37'),
(1138, '49c6eeb4-ec36-4c0a-a176-31139292d55b', 4328746, 'undefined', 'DR', 'transfer', '10000000', 'undefined', 'Being Tuition fee paid for Uchechi Onyishi', '4332342', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:30:12'),
(1139, 'dc709b75-ef59-48f7-8d25-0dc737c660cf', 4328746, 'undefined', 'CR', 'transfer', '10000000', 'undefined', 'Being Tuition fee paid for Uchechi Onyishi', '1057254', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:30:12'),
(1140, '57cb3f2c-3bd3-449e-88cf-b28981154d63', 1631754, 'undefined', 'DR', 'transfer', '2320000', 'undefined', 'Being Loan refund to Felicia Ikegbulam', '4332342', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:32:30'),
(1141, 'f0334fc1-55b3-44b8-aa57-0f8402366938', 1631754, 'undefined', 'CR', 'transfer', '2320000', 'undefined', 'Being Loan refund to Felicia Ikegbulam', '211787', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:32:30'),
(1142, '8674e80a-c6a1-4fa4-b80b-d49f146e01af', 3432214, 'undefined', 'DR', 'cheque', '150000', 'undefined', 'Household Expenses', '4332342', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:33:49'),
(1143, '60781946-2898-4aa0-ae4b-1c519a317b19', 3432214, 'undefined', 'CR', 'cheque', '150000', 'undefined', 'Household Expenses', '5012311', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:33:49'),
(1144, 'dd072af7-d67d-4066-b3b2-8002c45b6c05', 553364, 'undefined', 'DR', 'transfer', '4500000', 'undefined', 'Being school fees paid for Uchechi Onyishi', '4332342', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:35:15'),
(1145, 'a7d7d0b1-0adc-4ee7-81f2-e2145146b954', 553364, 'undefined', 'CR', 'transfer', '4500000', 'undefined', 'Being school fees paid for Uchechi Onyishi', '5012311', 0, 0, 1, '2022-01-24', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:35:15'),
(1146, 'faa69c81-7e9d-4ad6-b060-2ef60c55651d', 2135205, 'undefined', 'DR', 'transfer', '4500000', 'undefined', 'Being Refund made to OKERE IHUOMA ONYINYECHI/GTB', '4332342', 0, 0, 1, '2022-01-25', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:37:41'),
(1147, '82f29fc3-1a09-4533-a6f4-01638e6cd83e', 2135205, 'undefined', 'CR', 'transfer', '4500000', 'undefined', 'Being Refund made to OKERE IHUOMA ONYINYECHI/GTB', '4235155', 0, 0, 1, '2022-01-25', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:37:42'),
(1148, 'b596eb1e-b7d7-476e-9dc4-631df3990b23', 483721, 'undefined', 'DR', 'transfer', '600000', 'undefined', 'Being refund made to JOSEPH FRANCIS ZOBA/GTB', '4332342', 0, 0, 1, '2022-01-25', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:39:37'),
(1149, 'c49d8e85-eb57-47f8-b817-ab8e33fc2f5a', 483721, 'undefined', 'CR', 'transfer', '600000', 'undefined', 'Being refund made to JOSEPH FRANCIS ZOBA/GTB', '4235155', 0, 0, 1, '2022-01-25', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:39:37'),
(1150, '56966bc8-8d5a-4d26-a8f6-78e8021cba42', 4339741, 'undefined', 'DR', 'transfer', '900000', 'undefined', 'Being refund of deposit to Joseph Francis Zoba/GTB', '4332342', 0, 0, 1, '2022-01-26', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:41:39'),
(1151, 'a29b8e0a-c190-4197-890a-b1d2cd57e05d', 4339741, 'undefined', 'CR', 'transfer', '900000', 'undefined', 'Being refund of deposit to Joseph Francis Zoba/GTB', '4235155', 0, 0, 1, '2022-01-26', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:41:39'),
(1152, '496235c6-21ca-4e0c-ad52-fccb7db9605d', 3444832, 'undefined', 'DR', 'transfer', '90000', 'undefined', 'Being 3% Agency fee paid to Maxwell Zunman', '4332342', 0, 0, 1, '2022-01-26', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:46:35'),
(1153, 'f253c35c-3788-4a84-8735-1509e0381bd4', 3444832, 'undefined', 'CR', 'transfer', '90000', 'undefined', 'Being 3% Agency fee paid to Maxwell Zunman', '3059969', 0, 0, 1, '2022-01-26', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:46:35'),
(1154, 'a65ea067-4f8e-4ace-81b8-505bdb376a7f', 4146572, 'undefined', 'DR', 'transfer', '452000', 'undefined', 'Being January 2022 Staff salaries', '4332342', 0, 0, 1, '2022-01-27', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:49:27'),
(1155, '75320889-6f13-48f4-a364-6b6f536ed948', 4146572, 'undefined', 'CR', 'transfer', '452000', 'undefined', 'Being January 2022 Staff salaries', '415194', 0, 0, 1, '2022-01-27', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:49:28'),
(1156, 'f08f07a2-e6fa-4cdd-b0e5-add2940b0c09', 3349994, 'undefined', 'DR', 'cheque', '383000', 'undefined', 'Being Jan. 2022 allowance/Agency fee paid to Iveren Angera Alegh', '4332342', 0, 0, 1, '2022-01-27', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:51:23'),
(1157, 'b0567159-c544-4afe-a88e-142fe16bb770', 3349994, 'undefined', 'CR', 'cheque', '383000', 'undefined', 'Being Jan. 2022 allowance/Agency fee paid to Iveren Angera Alegh', '415194', 0, 0, 1, '2022-01-27', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:51:23'),
(1158, '471b5db1-d935-4e4d-bd41-72ee33f57c29', 295149, 'undefined', 'DR', 'transfer', '240000', 'undefined', 'CCTV/Nsukka/MD', '4332342', 0, 0, 1, '2022-01-30', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:53:27'),
(1159, 'e939e55f-896b-4184-a8ce-283c40730ab7', 295149, 'undefined', 'CR', 'transfer', '240000', 'undefined', 'CCTV/Nsukka/MD', '041404', 0, 0, 1, '2022-01-30', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 11:53:27'),
(1160, 'a42d9871-f8ff-4f21-8ea4-c53a442de94c', 335363, 'undefined', 'DR', 'transfer', '48750', 'undefined', 'Being total bank charges charged on Santos properties (Zenith Bank) Account', '4332342', 0, 0, 1, '2022-02-28', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 12:44:41'),
(1161, 'e2278970-c410-4fe9-aeeb-4389e167dbbe', 335363, 'undefined', 'CR', 'transfer', '48750', 'undefined', 'Being total bank charges charged on Santos properties (Zenith Bank) Account', '2723495', 0, 0, 1, '2022-02-28', 'GC@550', 'undefined', '2022-05-12', '2022-05-12 12:44:41'),
(1162, '839c4011-cf5d-4ab3-8618-0d77359dd58c', 2639356, 'undefined', 'DR', 'transfer', '250000', 'undefined', 'Being 2% Agency fee paid to MD', '4332342', 0, 0, 1, '2022-02-01', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 11:50:51'),
(1163, '2485af65-bf78-4579-96ac-509420c513ae', 2639356, 'undefined', 'CR', 'transfer', '250000', 'undefined', 'Being 2% Agency fee paid to MD', '3059969', 0, 0, 1, '2022-02-01', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 11:50:51'),
(1164, '81964ccd-84a8-4cd6-b0dd-810070909eed', 555043, 'undefined', 'DR', 'transfer', '3500000', 'undefined', 'Being balance of refund of deposit (Dakwo plot) paid to OKERE IHUOMA ONYINYECHI/GTB ', '4332342', 0, 0, 1, '2022-02-02', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 11:55:13'),
(1165, '5fd7009b-6fcb-4364-854a-0de0d05732f3', 555043, 'undefined', 'CR', 'transfer', '3500000', 'undefined', 'Being balance of refund of deposit (Dakwo plot) paid to OKERE IHUOMA ONYINYECHI/GTB ', '4235155', 0, 0, 1, '2022-02-02', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 11:55:13'),
(1166, '3d129530-d479-430c-8fbb-3b0b984a6c5d', 1056695, 'undefined', 'DR', 'transfer', '360000', 'undefined', 'Being 3% agency fee (Ihuoma) paid to MD ', '4332342', 0, 0, 1, '2022-02-02', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 11:58:44'),
(1167, '7c580e84-3d0a-4eed-94a9-fba43f630c1a', 1056695, 'undefined', 'CR', 'transfer', '360000', 'undefined', 'Being 3% agency fee (Ihuoma) paid to MD ', '3059969', 0, 0, 1, '2022-02-02', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 11:58:44'),
(1168, '397fd480-6b13-45d1-b15d-d1b8930c51e5', 3059996, 'undefined', 'DR', 'transfer', '750000', 'undefined', 'Being refund of deposit paid to JOSEPH FRANCIS ZOBA/GTB', '4332342', 0, 0, 1, '2022-02-02', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:06:26'),
(1169, '810c230e-6a19-45ce-849b-ba6f7aa4628f', 3059996, 'undefined', 'CR', 'transfer', '750000', 'undefined', 'Being refund of deposit paid to JOSEPH FRANCIS ZOBA/GTB', '4235155', 0, 0, 1, '2022-02-02', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:06:26'),
(1170, 'ba21f3d7-67c3-44f0-a576-ac144798ec57', 326344, 'undefined', 'DR', 'transfer', '285000', 'undefined', 'Being 2% Agency fee (MATUR) paid to MD', '4332342', 0, 0, 1, '2022-02-03', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:13:34'),
(1171, '38442758-7ada-4ff2-aba7-a7666ed8d8eb', 326344, 'undefined', 'CR', 'transfer', '285000', 'undefined', 'Being 2% Agency fee (MATUR) paid to MD', '3059969', 0, 0, 1, '2022-02-03', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:13:34'),
(1172, '0e803d80-949f-4cf4-8e47-02d0d11efb31', 2015491, 'undefined', 'DR', 'transfer', '200000', 'undefined', 'Sundry Expenses/MD', '4332342', 0, 0, 1, '2022-02-04', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:16:35'),
(1173, 'cbc85741-209c-49ba-aa13-d064fb0d9164', 2015491, 'undefined', 'CR', 'transfer', '200000', 'undefined', 'Sundry Expenses/MD', '5012311', 0, 0, 1, '2022-02-04', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:16:35'),
(1174, 'fdb78629-052f-47e1-a8d5-5ddb92f27369', 4116557, 'undefined', 'DR', 'transfer', '1500000', 'undefined', 'Being refund of deposit paid to Joseph Zoba/GTB', '4332342', 0, 0, 1, '2022-02-05', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:17:59'),
(1175, '3a9c61b6-34f2-46de-8ca2-857c8b7cba3b', 4116557, 'undefined', 'CR', 'transfer', '1500000', 'undefined', 'Being refund of deposit paid to Joseph Zoba/GTB', '4235155', 0, 0, 1, '2022-02-05', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:17:59'),
(1176, 'b636b5aa-be92-40cf-bb7d-67cb83c26966', 518125, 'undefined', 'DR', 'transfer', '500000', 'undefined', 'Being part payment to Fredrick Ogbonna Agah/FDPfor work done at Gaduwa plot', '4332342', 0, 0, 1, '2022-02-07', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:26:59'),
(1177, 'eb4c8298-3150-4217-a455-23ab89333a48', 518125, 'undefined', 'CR', 'transfer', '500000', 'undefined', 'Being part payment to Fredrick Ogbonna Agah/FDPfor work done at Gaduwa plot', '3337366', 0, 0, 1, '2022-02-07', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:26:59'),
(1178, 'a87bbff2-ae47-4942-a743-4112061a99d1', 527152, 'undefined', 'DR', 'transfer', '350000', 'undefined', 'Being Loan interest paid to Mr. & Mrs Humphery Njoku', '4332342', 0, 0, 1, '2022-02-10', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:28:50'),
(1179, '41b1e205-f242-46ea-b2d6-32ab0da38787', 527152, 'undefined', 'CR', 'transfer', '350000', 'undefined', 'Being Loan interest paid to Mr. & Mrs Humphery Njoku', '211787', 0, 0, 1, '2022-02-10', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:28:50'),
(1180, '5e9b42d3-d264-46fd-a05f-e7c4414889e2', 5628614, 'undefined', 'DR', 'transfer', '875000', 'undefined', 'Being refund of deposit to Joseph Zoba/GTB', '4332342', 0, 0, 1, '2022-02-13', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:30:22'),
(1181, '9ff6b0d7-bb1a-46b2-8054-48151f764545', 5628614, 'undefined', 'CR', 'transfer', '875000', 'undefined', 'Being refund of deposit to Joseph Zoba/GTB', '4235155', 0, 0, 1, '2022-02-13', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:30:22'),
(1182, '8fd546ec-38f5-424d-aada-bff1a2f1d13f', 2830545, 'undefined', 'DR', 'transfer', '5000000', 'undefined', 'Being Loan repayment paid to Felicia Ikegbulam/ABN', '4332342', 0, 0, 1, '2022-02-15', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:31:52'),
(1183, '181adfdd-5c7f-46ed-b590-299258a2adc9', 2830545, 'undefined', 'CR', 'transfer', '5000000', 'undefined', 'Being Loan repayment paid to Felicia Ikegbulam/ABN', '1820464', 0, 0, 1, '2022-02-15', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 12:31:52'),
(1184, '216535bd-a2cb-4e09-86ef-bc8943224280', 958633, 'undefined', 'DR', 'transfer', '1800000', 'undefined', 'BEING 3% Agency fee paid to Agu Alfred Nnamdi/FCMB', '4332342', 0, 0, 1, '2022-02-16', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:00:27'),
(1185, '529bdf6d-a8a5-4f68-9ceb-c440cdb66bf3', 958633, 'undefined', 'CR', 'transfer', '1800000', 'undefined', 'BEING 3% Agency fee paid to Agu Alfred Nnamdi/FCMB', '3059969', 0, 0, 1, '2022-02-16', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:00:27'),
(1186, 'b7df42dd-0e91-40e0-b942-797a969dbacc', 33064, 'undefined', 'DR', 'transfer', '570000', 'undefined', 'DUMANIS INTERNATIONAL GOSPEL C.', '4332342', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:02:26'),
(1187, '24c29ced-61a5-4058-a46d-0bb6cd73de6a', 33064, 'undefined', 'CR', 'transfer', '570000', 'undefined', 'DUMANIS INTERNATIONAL GOSPEL C.', '5840845', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:02:26'),
(1188, '615ac679-c2c4-4bd2-b859-daf095fbb96c', 322267, 'undefined', 'DR', 'transfer', '1500000', 'undefined', 'Being part payment/Plot 416/KYAMI transferred to SAMSON EPHRAIM TARKIGHIR', '4332342', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:05:13'),
(1189, '6094a8ca-381a-4c36-b38f-06541d6c75d2', 322267, 'undefined', 'CR', 'transfer', '1500000', 'undefined', 'Being part payment/Plot 416/KYAMI transferred to SAMSON EPHRAIM TARKIGHIR', '534255', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:05:13'),
(1190, '0f199981-2b94-471b-aa0c-e36efb5f52e9', 195225, 'undefined', 'DR', 'transfer', '200000', 'undefined', 'Being payment to Collectable Marks Associate ltd. for hiring of Grader', '4332342', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:06:48'),
(1191, '149b03bd-c914-435b-a4ca-e8d56e5d2aed', 195225, 'undefined', 'CR', 'transfer', '200000', 'undefined', 'Being payment to Collectable Marks Associate ltd. for hiring of Grader', '3337366', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:06:48'),
(1192, '91f0bf93-7d0b-4c71-b71c-a73de7213482', 546114, 'undefined', 'DR', 'transfer', '2000000', 'undefined', 'Being refund made to Mbanugo Chambers', '4332342', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:08:26'),
(1193, '59664dcc-05eb-4308-8a34-8a0bea002917', 546114, 'undefined', 'CR', 'transfer', '2000000', 'undefined', 'Being refund made to Mbanugo Chambers', '4235155', 0, 0, 1, '2022-02-17', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:08:26'),
(1194, '5e775d9f-f7de-4969-86cf-f25e151b3cb5', 328642, 'undefined', 'DR', 'transfer', '250000', 'undefined', 'Being payment for hiring of Caterpilar for work at Gaduwa', '4332342', 0, 0, 1, '2022-02-18', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:12:02'),
(1195, '2c580245-4393-43bb-b69c-0ecf48ae30f5', 328642, 'undefined', 'CR', 'transfer', '250000', 'undefined', 'Being payment for hiring of Caterpilar for work at Gaduwa', '3337366', 0, 0, 1, '2022-02-18', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:12:02'),
(1196, 'c7730f85-3304-4fb8-b24e-04f08e9e60cb', 812732, 'undefined', 'DR', 'transfer', '5800000', 'undefined', 'Being Loan liquidation transferred to Felicia Ikegbulam', '4332342', 0, 0, 1, '2022-02-20', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:27:18'),
(1197, '647ce79e-c2b4-4d26-ace8-712d4e0fce88', 812732, 'undefined', 'CR', 'transfer', '5800000', 'undefined', 'Being Loan liquidation transferred to Felicia Ikegbulam', '1820464', 0, 0, 1, '2022-02-20', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:27:18'),
(1198, 'c47047ee-07d7-41c9-ade4-c2973718f407', 2427525, 'undefined', 'DR', 'transfer', '250000', 'undefined', 'Being amount paid to Collectable Marks Associates for repairs at Gaduwa', '4332342', 0, 0, 1, '2022-02-22', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:29:24'),
(1199, '8154e99b-4668-4d24-acb5-db60f88a9f30', 2427525, 'undefined', 'CR', 'transfer', '250000', 'undefined', 'Being amount paid to Collectable Marks Associates for repairs at Gaduwa', '3337366', 0, 0, 1, '2022-02-22', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:29:24'),
(1200, 'a6310fcf-ff19-47be-a3a7-643848972d6c', 302967, 'undefined', 'DR', 'transfer', '150000', 'undefined', 'Being amount paid for the purchase of tyres for project vehicle', '4332342', 0, 0, 1, '2022-02-22', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:31:46'),
(1201, '3b1151e1-a1f6-4648-b33f-78b59c609c23', 302967, 'undefined', 'CR', 'transfer', '150000', 'undefined', 'Being amount paid for the purchase of tyres for project vehicle', '3520835', 0, 0, 1, '2022-02-22', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:31:46'),
(1202, 'bf210cbd-0a74-4ffe-bbb0-b9c87727f4c1', 5231477, 'undefined', 'DR', 'transfer', '350000', 'undefined', 'Being refund of deposit made to JOSEPH FRANCIS ZOBA/GTB', '4332342', 0, 0, 1, '2022-02-22', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:33:19'),
(1203, '22142b02-f23c-4780-b93c-de60e3897a42', 5231477, 'undefined', 'CR', 'transfer', '350000', 'undefined', 'Being refund of deposit made to JOSEPH FRANCIS ZOBA/GTB', '4235155', 0, 0, 1, '2022-02-22', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:33:19'),
(1204, '14866716-0e06-4b01-ab0e-13cb932669e5', 2533856, 'undefined', 'DR', 'transfer', '720000', 'undefined', 'Being Loan interest paid to Felicia Ikegbulam', '4332342', 0, 0, 1, '2022-02-24', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:34:32'),
(1205, '57c46eb1-6fc6-494a-ad55-a3f9ad99cc8c', 2533856, 'undefined', 'CR', 'transfer', '720000', 'undefined', 'Being Loan interest paid to Felicia Ikegbulam', '211787', 0, 0, 1, '2022-02-24', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:34:32'),
(1206, '1e6069e2-6860-4273-b844-3e4ddb09f40a', 3834473, 'undefined', 'DR', 'transfer', '5200000', 'undefined', 'Being Refund of deposit (Santos Oxford Homes) made to JUDITH MBANANDEN GBAAGILEH/STBC', '4332342', 0, 0, 1, '2022-02-25', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:36:46'),
(1207, '36283515-d696-4ccd-bae6-199ba559f92c', 3834473, 'undefined', 'CR', 'transfer', '5200000', 'undefined', 'Being Refund of deposit (Santos Oxford Homes) made to JUDITH MBANANDEN GBAAGILEH/STBC', '4235155', 0, 0, 1, '2022-02-25', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:36:46'),
(1208, 'c97a7de4-e9b7-4199-b550-ab26880a9b37', 523661, 'undefined', 'DR', 'transfer', '702000', 'undefined', 'Being staff salaries for February 2022', '4332342', 0, 0, 1, '2022-02-28', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:40:03'),
(1209, '94aadd08-6eb9-4de7-8c8e-7136577aedf1', 523661, 'undefined', 'CR', 'transfer', '702000', 'undefined', 'Being staff salaries for February 2022', '415194', 0, 0, 1, '2022-02-28', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:40:03'),
(1210, 'cb3b1da4-3fa7-4bda-8bcf-2b51aca52caf', 94038, 'undefined', 'DR', 'transfer', '2000000', 'undefined', 'Being refund of Deposit to Judith Mbanaden Gbaagileh/STBC', '4332342', 0, 0, 1, '2022-02-28', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:41:52'),
(1211, '471c32cf-c3e7-4260-8309-e7270f5b24d6', 94038, 'undefined', 'CR', 'transfer', '2000000', 'undefined', 'Being refund of Deposit to Judith Mbanaden Gbaagileh/STBC', '4235155', 0, 0, 1, '2022-02-28', 'GC@550', 'undefined', '2022-05-16', '2022-05-16 14:41:52'),
(1212, '145e756c-1790-4a1a-b326-dc3f89f23323', 4559843, 'undefined', 'DR', 'transfer', '1150000', 'undefined', 'Being 2% agency fee paid to MD', '4332342', 0, 0, 1, '2022-03-08', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:01:11'),
(1213, '96812dba-ca83-42c5-bc53-c855eeb618e5', 4559843, 'undefined', 'CR', 'transfer', '1150000', 'undefined', 'Being 2% agency fee paid to MD', '3059969', 0, 0, 1, '2022-03-08', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:01:11'),
(1214, 'f9679c71-20b3-4ad9-b731-a374cbe13dd6', 171474, 'undefined', 'DR', 'transfer', '5350000', 'undefined', 'Loan liquidation/Transferred to Egr. Humphrey & Mrs Chibuzo Njoku', '4332342', 0, 0, 1, '2022-03-11', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:05:05'),
(1215, 'f715d09a-810e-45ed-9f4e-397d1c1e445e', 171474, 'undefined', 'CR', 'transfer', '5350000', 'undefined', 'Loan liquidation/Transferred to Egr. Humphrey & Mrs Chibuzo Njoku', '1820464', 0, 0, 1, '2022-03-11', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:05:05'),
(1216, '07c6a10a-77c6-408b-8506-4eb7a4760ae4', 115859, 'undefined', 'DR', 'transfer', '500000', 'undefined', 'Legal services', '4332342', 0, 0, 1, '2022-03-12', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:12:48'),
(1217, '28f02ef2-c4c6-4332-8d1d-52f8d2d32a55', 115859, 'undefined', 'CR', 'transfer', '500000', 'undefined', 'Legal services', '040977', 0, 0, 1, '2022-03-12', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:12:48'),
(1218, 'c2704c02-e171-40f5-81c9-fc67e480fc47', 541280, 'undefined', 'DR', 'transfer', '1500000', 'undefined', 'Being Travel/Scholl Expenses/Uchechi Onyishi', '4332342', 0, 0, 1, '2022-03-12', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:16:15'),
(1219, 'ceeef41a-c1b9-4f29-b45f-f3a7eaca8e5e', 541280, 'undefined', 'CR', 'transfer', '1500000', 'undefined', 'Being Travel/Scholl Expenses/Uchechi Onyishi', '5012311', 0, 0, 1, '2022-03-12', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:16:15'),
(1220, '558eba80-9f60-48c2-968e-1fc8abcaa4c4', 2116198, 'undefined', 'DR', 'transfer', '3000000', 'undefined', 'Being refund of deposit paid to Ugochukwu Babatunde onuzuluike', '4332342', 0, 0, 1, '2022-03-15', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:23:05'),
(1221, 'e9f154e4-dfcc-4d50-bfcf-bf34b00aea27', 2116198, 'undefined', 'CR', 'transfer', '3000000', 'undefined', 'Being refund of deposit paid to Ugochukwu Babatunde onuzuluike', '4235155', 0, 0, 1, '2022-03-15', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:23:05'),
(1222, 'e5a085a3-bf7a-4eb1-baa1-307f52fb0556', 1123370, 'undefined', 'DR', 'transfer', '100000', 'undefined', 'Being 3% agency fee from Karshi plot paid to Ajayi Oluwafemi Mathew', '4332342', 0, 0, 1, '2022-03-17', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:27:18'),
(1223, 'a8fe28fd-8fa9-404f-981f-d70e867d386a', 1123370, 'undefined', 'CR', 'transfer', '100000', 'undefined', 'Being 3% agency fee from Karshi plot paid to Ajayi Oluwafemi Mathew', '3059969', 0, 0, 1, '2022-03-17', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:27:18'),
(1224, 'ddc00ad5-485e-4e18-b296-14e4c40bad0f', 2427104, 'undefined', 'DR', 'transfer', '1500000', 'undefined', 'Being Refund of deposit made to JOSEPH FRANCIS ZOBA', '4332342', 0, 0, 1, '2022-03-22', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:37:05'),
(1225, 'd8ecaced-d05c-4571-ad81-96997b875452', 2427104, 'undefined', 'CR', 'transfer', '1500000', 'undefined', 'Being Refund of deposit made to JOSEPH FRANCIS ZOBA', '4235155', 0, 0, 1, '2022-03-22', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:37:05'),
(1226, '6c384666-6b4b-4dd2-958c-7ffdd92cec34', 1137460, 'undefined', 'DR', 'transfer', '480000', 'undefined', 'Being Loan interest paid to Felicia Ikegbulam', '4332342', 0, 0, 1, '2022-03-22', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:46:30'),
(1227, 'ea45a64b-992d-4fd7-8318-42b9aac684ff', 1137460, 'undefined', 'CR', 'transfer', '480000', 'undefined', 'Being Loan interest paid to Felicia Ikegbulam', '211787', 0, 0, 1, '2022-03-22', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:46:30'),
(1228, '9204e907-8887-45cd-ab47-73058f6208f9', 3646497, 'undefined', 'DR', 'transfer', '630000', 'undefined', 'Being Loan Interest paid to Felicia Ikegbulam', '4332342', 0, 0, 1, '2022-03-25', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:47:39'),
(1229, 'fac00a41-7a4a-46e1-82e8-3e5230212bc3', 3646497, 'undefined', 'CR', 'transfer', '630000', 'undefined', 'Being Loan Interest paid to Felicia Ikegbulam', '211787', 0, 0, 1, '2022-03-25', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:47:39'),
(1230, '32fb586d-2e89-4af9-b976-f43873508dec', 553880, 'undefined', 'DR', 'transfer', '557000', 'undefined', 'Being March staff salaries paid', '4332342', 0, 0, 1, '2022-03-28', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:54:15'),
(1231, '224179d3-063b-4979-9b46-9f0a44c9bd37', 553880, 'undefined', 'CR', 'transfer', '557000', 'undefined', 'Being March staff salaries paid', '415194', 0, 0, 1, '2022-03-28', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:54:16'),
(1232, 'ba8f1567-aad7-4b4c-ac4e-58fee068be3e', 2154985, 'undefined', 'DR', 'transfer', '150000', 'undefined', 'School Project Expenses/ Chidiebere Ifeanyi Onyishi', '4332342', 0, 0, 1, '2022-03-28', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:56:05'),
(1233, '1df7d757-9703-47bf-a966-9204de7e0c5b', 2154985, 'undefined', 'CR', 'transfer', '150000', 'undefined', 'School Project Expenses/ Chidiebere Ifeanyi Onyishi', '5012311', 0, 0, 1, '2022-03-28', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:56:05'),
(1234, '61eeb8b0-036e-4b3f-b86c-0d52daec6dd7', 115664, 'undefined', 'DR', 'transfer', '100000', 'undefined', 'Being legal services paid to Godwin Okechukwu Diugwu', '4332342', 0, 0, 1, '2022-03-28', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:58:11'),
(1235, '40f1fec4-abd8-4c61-9f44-d48bc075e209', 115664, 'undefined', 'CR', 'transfer', '100000', 'undefined', 'Being legal services paid to Godwin Okechukwu Diugwu', '040977', 0, 0, 1, '2022-03-28', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:58:11'),
(1236, '7ea251a3-d05a-482f-b13f-c9c77f83e22e', 1758419, 'undefined', 'DR', 'transfer', '150000', 'undefined', 'General office expenses', '4332342', 0, 0, 1, '2022-03-29', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:59:30'),
(1237, '9a9562cb-da1c-417b-9a27-3dbf61082670', 1758419, 'undefined', 'CR', 'transfer', '150000', 'undefined', 'General office expenses', '5012311', 0, 0, 1, '2022-03-29', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 12:59:31'),
(1238, '64f1a878-309a-40f0-8f61-bdd3e6a94f51', 37591, 'undefined', 'DR', 'transfer', '150000', 'undefined', 'Being 3% Agency fee paid to Maxwel Zunman/ABN', '4332342', 0, 0, 1, '2022-03-30', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 13:00:30'),
(1239, '9c1eb1c2-4b48-468d-b9fc-7dbb6ce6d364', 37591, 'undefined', 'CR', 'transfer', '150000', 'undefined', 'Being 3% Agency fee paid to Maxwel Zunman/ABN', '3059969', 0, 0, 1, '2022-03-30', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 13:00:30'),
(1240, '39a7b7c0-7e8e-4b48-babc-e906f00efcf0', 37098, 'undefined', 'DR', 'transfer', '4750000', 'undefined', 'School fees for Uchechi Chidinma Onyishi', '4332342', 0, 0, 1, '2022-03-16', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 13:02:43'),
(1241, '77ddd39f-e7f0-4108-887b-f6b8de8a7431', 37098, 'undefined', 'CR', 'transfer', '4750000', 'undefined', 'School fees for Uchechi Chidinma Onyishi', '5012311', 0, 0, 1, '2022-03-16', 'GC@550', 'undefined', '2022-05-17', '2022-05-17 13:02:43');

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
-- Indexes for table `expense_heading`
--
ALTER TABLE `expense_heading`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `createdBy_FK` (`createdBy_FK`),
  ADD KEY `head` (`head`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_customermodel`
--
ALTER TABLE `customer_customermodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `expense_heading`
--
ALTER TABLE `expense_heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense_itemsmodel`
--
ALTER TABLE `expense_itemsmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `expense_model`
--
ALTER TABLE `expense_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sales_items_model`
--
ALTER TABLE `sales_items_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `sales_model`
--
ALTER TABLE `sales_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sales_scheldule_model`
--
ALTER TABLE `sales_scheldule_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1996;

--
-- AUTO_INCREMENT for table `transactionmodel`
--
ALTER TABLE `transactionmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1242;

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
('root', '[{\"db\":\"accountingdb1\",\"table\":\"transactionmodel\"},{\"db\":\"accountingdb1\",\"table\":\"sales_model\"},{\"db\":\"accountingdb1\",\"table\":\"sales_items_model\"},{\"db\":\"accountingdb\",\"table\":\"transactionmodel\"},{\"db\":\"accountingdb\",\"table\":\"sales_model\"},{\"db\":\"accountingdb\",\"table\":\"account_accountmodel\"},{\"db\":\"accountingdb\",\"table\":\"expense_category\"},{\"db\":\"accountingdb\",\"table\":\"expense_model\"},{\"db\":\"accountingdb\",\"table\":\"expense_heading\"},{\"db\":\"accountingdb\",\"table\":\"customer_customermodel\"}]');

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
('root', '2022-05-19 13:17:34', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"metro\"}');

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
