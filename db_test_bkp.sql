-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 10:40 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test_bkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `et_advance_voucher`
--

CREATE TABLE `et_advance_voucher` (
  `uid` int(11) NOT NULL,
  `voucher_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_date` date NOT NULL,
  `debit_account_id` int(11) NOT NULL,
  `credit_account_id` int(11) NOT NULL,
  `amount` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `narration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_agents`
--

CREATE TABLE `et_agents` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `company_name` longtext NOT NULL,
  `mob_num` varchar(25) NOT NULL,
  `nic_num` varchar(25) NOT NULL,
  `nic_expiry` date NOT NULL,
  `ntn_num` varchar(50) NOT NULL,
  `license_num` varchar(50) NOT NULL,
  `license_expiry` date NOT NULL,
  `bank_account` varchar(50) NOT NULL,
  `account_title` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `et_broker`
--

CREATE TABLE `et_broker` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `company_name` longtext NOT NULL,
  `mob_num` varchar(25) NOT NULL,
  `nic_num` varchar(25) NOT NULL,
  `nic_expiry` date NOT NULL,
  `ntn_num` varchar(50) NOT NULL,
  `license_num` varchar(50) NOT NULL,
  `license_expiry` date NOT NULL,
  `bank_account` varchar(50) NOT NULL,
  `account_title` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `et_case_list`
--

CREATE TABLE `et_case_list` (
  `id` int(11) NOT NULL,
  `case_list_num` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ondate` date NOT NULL,
  `destination` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `location` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `agents` int(11) NOT NULL,
  `company_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `agent_mob` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `agent_nic` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `driver` int(11) NOT NULL,
  `driver_nic` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mob_num_driver` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vehicle` int(11) NOT NULL,
  `vehicle_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `engine_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `chassis_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `broker` int(11) NOT NULL,
  `broker_company` longtext COLLATE utf8_unicode_ci NOT NULL,
  `broker_mob` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `broker_nic` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gd_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gd_date` date NOT NULL,
  `port_loading` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pc_delivery` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `igm` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `igm_date` date NOT NULL,
  `marks` longtext COLLATE utf8_unicode_ci NOT NULL,
  `container` longtext COLLATE utf8_unicode_ci NOT NULL,
  `loading_person` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bl_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bl_date` date NOT NULL,
  `weight` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `consignee` longtext COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `desc_goods` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nature_pkg` longtext COLLATE utf8_unicode_ci NOT NULL,
  `trip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `b_rec_date` date NOT NULL,
  `cross_b_date` date NOT NULL,
  `emp_cross_border` date NOT NULL,
  `emp_con_rcv_date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_chart_of_account`
--

CREATE TABLE `et_chart_of_account` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `account_code` varchar(25) NOT NULL,
  `main_header` int(11) NOT NULL,
  `child_header` int(11) NOT NULL,
  `balance_type` varchar(25) NOT NULL,
  `opening_balance` varchar(25) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `et_chart_of_account`
--

INSERT INTO `et_chart_of_account` (`uid`, `name`, `account_code`, `main_header`, `child_header`, `balance_type`, `opening_balance`, `status`, `created_at`, `display_id`) VALUES
(1, 'Danial', 'Danial', 1, 1, 'DR', '1000', 1, '2021-07-07 01:34:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `et_child_headers`
--

CREATE TABLE `et_child_headers` (
  `uid` int(11) NOT NULL,
  `main_header` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_child_headers`
--

INSERT INTO `et_child_headers` (`uid`, `main_header`, `name`, `created_at`, `display_id`) VALUES
(1, 4, 'Current Assets', '2021-05-10 17:54:19', 1),
(2, 4, 'Fixed Assets', '2021-05-10 17:54:25', 1),
(3, 4, 'A/C Receivable', '2021-05-10 17:54:31', 1),
(4, 2, 'A/C Payable', '2021-05-10 17:54:41', 1),
(5, 1, 'Capital', '2021-05-10 17:54:53', 1),
(6, 5, 'Sales', '2021-05-10 17:55:19', 1),
(7, 2, 'Purchase', '2021-05-10 17:55:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `et_city`
--

CREATE TABLE `et_city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_country`
--

CREATE TABLE `et_country` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_destination`
--

CREATE TABLE `et_destination` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `location` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `et_driver`
--

CREATE TABLE `et_driver` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `mob_num` varchar(25) NOT NULL,
  `nic_num` varchar(25) NOT NULL,
  `nic_expiry` date NOT NULL,
  `license_num` varchar(50) NOT NULL,
  `license_expiry` date NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `et_header`
--

CREATE TABLE `et_header` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_header`
--

INSERT INTO `et_header` (`uid`, `name`, `created_at`, `display_id`) VALUES
(1, 'Capital', '2021-05-10 22:53:22', 1),
(2, 'Liability', '2021-05-10 22:53:22', 1),
(3, 'Expense', '2021-05-10 22:53:22', 1),
(4, 'Assets', '2021-05-10 22:53:22', 1),
(5, 'Revenue', '2021-05-10 22:53:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `et_invoice`
--

CREATE TABLE `et_invoice` (
  `id` int(11) NOT NULL,
  `caselist_id` int(11) NOT NULL,
  `invoice_num` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `particulars` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_journal_ledger`
--

CREATE TABLE `et_journal_ledger` (
  `uid` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `ondate` datetime NOT NULL,
  `amount` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `narration` longtext NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_journal_ledger`
--

INSERT INTO `et_journal_ledger` (`uid`, `account_id`, `ondate`, `amount`, `type`, `narration`, `created_at`) VALUES
(1, 1, '2021-07-07 00:00:00', '5000', 'debit', '', '2021-07-07 00:00:00'),
(2, 1, '2021-07-07 00:00:00', '5000', 'credit', '', '2021-07-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `et_journal_voucher`
--

CREATE TABLE `et_journal_voucher` (
  `uid` int(11) NOT NULL,
  `voucher_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_date` date NOT NULL,
  `debit_account_id` int(11) NOT NULL,
  `credit_account_id` int(11) NOT NULL,
  `amount` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `narration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_menu`
--

CREATE TABLE `et_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `link` varchar(25) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_child` int(11) NOT NULL,
  `add_access` int(11) NOT NULL,
  `edit_access` int(11) NOT NULL,
  `delete_access` int(11) NOT NULL,
  `view_access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_menu`
--

INSERT INTO `et_menu` (`id`, `name`, `link`, `icon`, `parent`, `is_child`, `add_access`, `edit_access`, `delete_access`, `view_access`) VALUES
(1, 'Dashboard', 'dashboard', 'ti-home', 0, 0, 0, 0, 0, 1),
(2, 'Carrier manifest', 'dashboard', 'ti-layout-grid2-alt', 0, 0, 0, 0, 0, 1),
(3, 'Countries', 'countries', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(4, 'Cities', 'city', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(5, 'Destinations', 'destinations', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(6, 'Agents', 'agents', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(7, 'Drivers', 'drivers', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(8, 'Vehicles', 'vehicles', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(9, 'Brokers', 'brokers', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(10, 'Case List', 'case-list', 'ti-angle-right', 2, 0, 1, 1, 1, 1),
(11, 'Invoices', 'invoices', 'ti-file', 0, 0, 1, 1, 1, 1),
(12, 'Job Wise Profit', 'profit', 'ti-layers', 0, 0, 0, 0, 0, 1),
(13, 'Chart Of Accounts', 'countries', 'ti-layers', 0, 0, 0, 0, 0, 1),
(14, 'Main Header', 'headers', 'ti-layers', 13, 0, 1, 1, 1, 1),
(15, 'Child Headers', 'headers/child', 'ti-layers', 13, 0, 1, 1, 1, 1),
(16, 'Party Accounts', 'party', 'ti-layers', 13, 0, 1, 1, 1, 1),
(17, 'Vouchers', 'countries', 'ti-layers', 0, 0, 0, 0, 0, 1),
(18, 'Advance Voucher', 'advance-voucher', 'ti-layers', 17, 0, 1, 1, 1, 1),
(19, 'Journal Voucher', 'journal-voucher', 'ti-layers', 17, 0, 1, 1, 1, 1),
(20, 'Reports', 'countries', 'ti-file', 0, 0, 0, 0, 0, 1),
(21, 'Ledger Report', 'countries', 'ti-file', 20, 0, 1, 1, 1, 1),
(22, 'A/C Receivable Reports', 'countries', 'ti-file', 20, 0, 1, 1, 1, 1),
(23, 'A/C Payable Reports', 'countries', 'ti-file', 20, 0, 1, 1, 1, 1),
(24, 'Cash In Hand', 'countries', 'ti-file', 20, 0, 1, 1, 1, 1),
(25, 'Expense Report', 'countries', 'ti-file', 20, 0, 1, 1, 1, 1),
(26, 'Settings', 'countries', 'ti-settings', 0, 0, 0, 0, 0, 1),
(27, 'Roles', 'roles', 'ti-settings', 26, 0, 1, 1, 1, 1),
(28, 'Role Permission', 'permission', 'ti-settings', 26, 0, 1, 1, 1, 1),
(29, 'Users', 'countries', 'ti-settings', 26, 0, 1, 1, 1, 1),
(30, 'Sales invoices', 'countries', 'ti-settings', 11, 0, 1, 1, 1, 1),
(31, 'Purchase invoices', 'countries', 'ti-settings', 11, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `et_menu_access`
--

CREATE TABLE `et_menu_access` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `add_acces` int(11) NOT NULL,
  `edit_access` int(11) NOT NULL,
  `delete_access` int(11) NOT NULL,
  `view_access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_menu_access`
--

INSERT INTO `et_menu_access` (`id`, `role_id`, `menu_id`, `add_acces`, `edit_access`, `delete_access`, `view_access`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 1, 1),
(3, 1, 3, 1, 1, 1, 1),
(4, 1, 4, 1, 1, 1, 1),
(5, 1, 5, 1, 1, 1, 1),
(6, 1, 6, 1, 1, 1, 1),
(7, 1, 7, 1, 1, 1, 1),
(8, 1, 8, 1, 1, 1, 1),
(9, 1, 9, 1, 1, 1, 1),
(10, 1, 10, 1, 1, 1, 1),
(11, 1, 11, 1, 1, 1, 1),
(12, 1, 12, 1, 1, 1, 1),
(13, 1, 13, 1, 1, 1, 1),
(14, 1, 14, 1, 1, 1, 1),
(15, 1, 15, 1, 1, 1, 1),
(16, 1, 16, 1, 1, 1, 1),
(17, 1, 17, 1, 1, 1, 1),
(18, 1, 18, 1, 1, 1, 1),
(19, 1, 19, 1, 1, 1, 1),
(20, 1, 20, 1, 1, 1, 1),
(21, 1, 21, 1, 1, 1, 1),
(22, 1, 22, 1, 1, 1, 1),
(23, 1, 23, 1, 1, 1, 1),
(24, 1, 24, 1, 1, 1, 1),
(25, 1, 25, 1, 1, 1, 1),
(26, 1, 26, 1, 1, 1, 1),
(27, 1, 27, 1, 1, 1, 1),
(28, 1, 28, 1, 1, 1, 1),
(29, 1, 29, 1, 1, 1, 1),
(30, 1, 30, 1, 1, 1, 1),
(31, 1, 31, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `et_role`
--

CREATE TABLE `et_role` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_role`
--

INSERT INTO `et_role` (`id`, `name`, `created_at`) VALUES
(1, 'Admin', '2021-05-04 17:57:54'),
(2, 'Users', '2021-05-04 18:00:31'),
(3, 'Users', '2021-05-04 18:00:31'),
(4, 'Users', '2021-05-04 18:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `et_temp_invoice`
--

CREATE TABLE `et_temp_invoice` (
  `uid` int(11) NOT NULL,
  `case_list_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `particulars` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `et_users`
--

CREATE TABLE `et_users` (
  `uid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `et_users`
--

INSERT INTO `et_users` (`uid`, `username`, `password`, `role_id`, `status`) VALUES
(1, 'admin', 'admin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `et_vehicle`
--

CREATE TABLE `et_vehicle` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `vehicle_num` varchar(25) NOT NULL,
  `engine_num` varchar(50) NOT NULL,
  `chesis_num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `display_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `et_advance_voucher`
--
ALTER TABLE `et_advance_voucher`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_agents`
--
ALTER TABLE `et_agents`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_broker`
--
ALTER TABLE `et_broker`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_case_list`
--
ALTER TABLE `et_case_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_chart_of_account`
--
ALTER TABLE `et_chart_of_account`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_child_headers`
--
ALTER TABLE `et_child_headers`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_city`
--
ALTER TABLE `et_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_country`
--
ALTER TABLE `et_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_destination`
--
ALTER TABLE `et_destination`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_driver`
--
ALTER TABLE `et_driver`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_header`
--
ALTER TABLE `et_header`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_invoice`
--
ALTER TABLE `et_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_journal_ledger`
--
ALTER TABLE `et_journal_ledger`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_journal_voucher`
--
ALTER TABLE `et_journal_voucher`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_menu`
--
ALTER TABLE `et_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_menu_access`
--
ALTER TABLE `et_menu_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_role`
--
ALTER TABLE `et_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et_temp_invoice`
--
ALTER TABLE `et_temp_invoice`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_users`
--
ALTER TABLE `et_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `et_vehicle`
--
ALTER TABLE `et_vehicle`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `et_advance_voucher`
--
ALTER TABLE `et_advance_voucher`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_agents`
--
ALTER TABLE `et_agents`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_broker`
--
ALTER TABLE `et_broker`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_case_list`
--
ALTER TABLE `et_case_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_chart_of_account`
--
ALTER TABLE `et_chart_of_account`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `et_child_headers`
--
ALTER TABLE `et_child_headers`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `et_city`
--
ALTER TABLE `et_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_country`
--
ALTER TABLE `et_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_destination`
--
ALTER TABLE `et_destination`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_driver`
--
ALTER TABLE `et_driver`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_header`
--
ALTER TABLE `et_header`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `et_invoice`
--
ALTER TABLE `et_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_journal_ledger`
--
ALTER TABLE `et_journal_ledger`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `et_journal_voucher`
--
ALTER TABLE `et_journal_voucher`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_menu`
--
ALTER TABLE `et_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `et_menu_access`
--
ALTER TABLE `et_menu_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `et_role`
--
ALTER TABLE `et_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `et_temp_invoice`
--
ALTER TABLE `et_temp_invoice`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `et_users`
--
ALTER TABLE `et_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `et_vehicle`
--
ALTER TABLE `et_vehicle`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
