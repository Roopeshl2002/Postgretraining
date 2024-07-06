--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `Address3` varchar(255) DEFAULT NULL,
  `MobileNo` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Country` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `PinCode` varchar(50) NOT NULL,
  `TIN` varchar(100) DEFAULT NULL,
  `CST` varchar(100) DEFAULT NULL,
  `OpenBalance` varchar(100) NOT NULL DEFAULT '0',
  `ClosedBalance` varchar(100) NOT NULL DEFAULT '0',
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EmpCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `JoiningDate` timestamp NULL DEFAULT NULL,
  `Designation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FullName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BasicPay` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BloodGroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PlaceofBirth` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Nationality` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DOB` timestamp NULL DEFAULT NULL,
  `ContactNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EmailID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EmpImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Qualification` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LastEmployer` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `YearsofExperience` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BankCode` varchar(255) NOT NULL,
  `BankName` varchar(255) NOT NULL,
  `BankDesc` varchar(500) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,l
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `BankCode`, `BankName`, `BankDesc`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(5, 'SBI', 'State bank of India', 'State bank of India', 1, 0, '2021-10-19 17:10:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BranchCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BranchName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `BranchCode`, `BranchName`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, '001', 'All', 1, 0, '2022-04-29 05:18:32', NULL),
(2, '002', 'Chennai', 1, 0, '2022-04-29 05:18:43', NULL),
(3, '003', 'Madurai', 1, 0, '2022-04-29 05:19:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cashbill`
--

CREATE TABLE `cashbill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BillNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MobileNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustomerID` varchar(255) NOT NULL,
  `SalesmanID` varchar(255) NOT NULL,
  `CashBillDate` timestamp NULL DEFAULT NULL,
  `Disc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TotalQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NetAmount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SubTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Balance` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `BranchID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `CommisionTotal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cashbillitems`
--

CREATE TABLE `cashbillitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CashBillID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `UOM` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Rate` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiscountPrice` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustPrice` varchar(100) NOT NULL,
  `CustDiscount` varchar(100) NOT NULL,
  `CustDiscAmt` varchar(100) NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `CommisionAmount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cashflow`
--

CREATE TABLE `cashflow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Date` timestamp NULL DEFAULT NULL,
  `Debit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ACType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Narration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CategoryCode` varchar(255) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `CategoryCode`, `CategoryName`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, '101', 'LADIES BAG', 1, 0, '2022-06-01 12:31:36', NULL),
(2, '600', 'STROLLY', 1, 0, '2022-06-01 14:37:41', NULL),
(3, '601', 'DUFFEL', 1, 0, '2022-06-01 14:38:16', NULL),
(4, '603', 'TRAVEL BAG', 1, 0, '2022-06-01 15:25:52', NULL),
(5, '604', 'BACKPACK', 1, 0, '2022-06-01 15:26:41', NULL),
(6, '605', 'LADIES PURSE', 1, 0, '2022-06-01 15:43:03', NULL),
(7, '606', 'GENTS PURSE', 1, 0, '2022-06-01 15:48:21', NULL),
(8, '607', 'JOLA', 1, 0, '2022-06-01 15:50:04', NULL),
(9, '608', 'SLING', 1, 0, '2022-06-01 15:50:39', NULL),
(10, '609', 'CASH BAG', 1, 0, '2022-06-01 15:51:12', NULL),
(11, '611', 'TREK BAG', 1, 0, '2022-06-02 07:57:19', NULL);

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ExpenseCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ExpenseName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ExpenseDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `ExpenseCode`, `ExpenseName`, `ExpenseDesc`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'TRANS', 'Transport', 'Transport Charges', 1, 0, '2021-07-24 17:21:32', '2021-10-21 07:57:06'),
(2, 'H', 'H', 'Honey', 1, 0, '2021-07-24 18:33:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceiving`
--

CREATE TABLE `goodsreceiving` (
  `id` int(10) UNSIGNED NOT NULL,
  `GRNNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `GRNDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `TotalQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Less` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LessAmount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `GrandTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TotalExpense` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxAmount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrevLess` varchar(50) DEFAULT '0',
  `PrevLessAmount` varchar(100) DEFAULT '0',
  `PrevRecAmount` varchar(100) DEFAULT '0',
  `BalanceAmount` varchar(100) DEFAULT '0',
  `ReceivedAmount` varchar(100) DEFAULT '0',
  `ReturnTotal` varchar(200) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `PaymentID` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `BranchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceivingexpense`
--

CREATE TABLE `goodsreceivingexpense` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `GRID` int(10) UNSIGNED NOT NULL,
  `ExpenseID` int(10) UNSIGNED NOT NULL,
  `ExpenseAmount` varchar(100) NOT NULL DEFAULT '0',
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceivingitems`
--

CREATE TABLE `goodsreceivingitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `GRID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiscountPrice` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsRowEdit` tinyint(1) DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goodsreceivingitems`
--

INSERT INTO `goodsreceivingitems` (`id`, `GRID`, `ItemID`, `Quantity`, `Discount`, `DiscountPrice`, `Amount`, `IsRowEdit`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(18, 1, 1, '2', '0', '0', '100', 0, 1, 0, '2022-04-11 18:30:00', NULL),
(19, 1, 1, '2', '0', '0', '1040', 0, 1, 0, '2022-04-11 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceivingitems2`
--

CREATE TABLE `goodsreceivingitems2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `GRID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiscountPrice` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsRowEdit` tinyint(1) DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceivingtax`
--

CREATE TABLE `goodsreceivingtax` (
  `id` int(11) NOT NULL,
  `TaxID` int(11) NOT NULL,
  `GRID` int(11) NOT NULL,
  `TaxAmount` varchar(45) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goodsreceivingtax`
--

INSERT INTO `goodsreceivingtax` (`id`, `TaxID`, `GRID`, `TaxAmount`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(7, 1, 2, NULL, 1, 0, '2022-05-31 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goodsreturn`
--

CREATE TABLE `goodsreturn` (
  `id` int(10) UNSIGNED NOT NULL,
  `GoodsReturnNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Telephone` varchar(255) DEFAULT NULL,
  `GoodsReturnDate` date DEFAULT NULL,
  `TotalQuantity` varchar(255) DEFAULT NULL,
  `SubTotal` varchar(255) DEFAULT NULL,
  `Less` varchar(255) DEFAULT NULL,
  `LessAmount` varchar(255) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL,
  `GrandTotal` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goodsreturn`
--

INSERT INTO `goodsreturn` (`id`, `GoodsReturnNo`, `SupplierID`, `Address`, `Telephone`, `GoodsReturnDate`, `TotalQuantity`, `SubTotal`, `Less`, `LessAmount`, `Remarks`, `GrandTotal`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(4, 'RETURN20220420_1', 1, NULL, NULL, '2022-04-04', '5', '50', '0', '0', '', '100', 1, 0, '2022-04-18 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goodsreturnitems`
--

CREATE TABLE `goodsreturnitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `GoodsReturnID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Reason` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `GRID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goodsreturnitems`
--

INSERT INTO `goodsreturnitems` (`id`, `GoodsReturnID`, `ItemID`, `Quantity`, `Amount`, `Reason`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`, `GRID`) VALUES
(5, 1, 1, '2', '10', '', 1, 0, '2022-04-18 18:30:00', NULL, 1),
(6, 1, 1, '2', '10', '', 1, 0, '2022-04-18 18:30:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `ItemTypeID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ItemCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ItemName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustomerID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CategoryID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ModelID` varchar(255) NOT NULL,
  `SizeID` varchar(255) NOT NULL,
  `UOM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SellPrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discount` varchar(255) NOT NULL,
  `DiscountAmt` varchar(255) NOT NULL,
  `CustPrice` varchar(255) NOT NULL,
  `CustDiscount` varchar(255) NOT NULL,
  `CustDiscAmt` varchar(255) NOT NULL,
  `CostPrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OpenStock` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CloseStock` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ItemImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `ItemTypeID`, `ItemCode`, `ItemName`, `CustomerID`, `CategoryID`, `ModelID`, `SizeID`, `UOM`, `SellPrice`, `Discount`, `DiscountAmt`, `CustPrice`, `CustDiscount`, `CustDiscAmt`, `CostPrice`, `OpenStock`, `CloseStock`, `ItemImage`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, '9', 'EX9004', 'EX9004', '1', '1', '1', '1', '', '1325', '0', '0', '1325', '20', '265', '1060', '0', '0', NULL, 1, 0, '2022-06-01 12:43:43', NULL),
(2, '23', '55 ZAKK', 'ZAKK 55', '1', '2', '1', '2', '', '7100', '60', '4260', '2840', '25', '710', '2130', '3', '0', NULL, 1, 0, '2022-06-02 08:23:33', '2022-06-02 08:26:26'),
(3, '23', '68 ZAKK', 'ZAKK 68', '1', '2', '1', '3', '', '9000', '60', '5400', '3600', '25', '900', '2700', '3', '3', NULL, 1, 0, '2022-06-02 08:40:46', NULL),
(4, '23', '79 ZAKK', 'ZAKK 79', '1', '2', '1', '4', '', '11500', '60', '6900', '4600', '25', '1150', '3450', '2', '2', NULL, 1, 0, '2022-06-02 08:43:02', NULL),
(5, '23', '62 ZODIAC', 'ZODIA 62', '1', '3', '1', '3', '', '5130', '65', '3334.5', '1795.5', '25', '448.875', '1346.625', '6', '6', NULL, 1, 0, '2022-06-02 08:44:29', '2022-06-03 09:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `itemsize`
--

CREATE TABLE `itemsize` (
  `Id` int(11) NOT NULL,
  `SizeCode` varchar(255) NOT NULL,
  `SizeName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemsize`
--

INSERT INTO `itemsize` (`Id`, `SizeCode`, `SizeName`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, '101', 'Normal', 1, 0, '2022-06-01 12:35:19', NULL),
(2, '20', 'CABIN', 1, 0, '2022-06-02 08:15:51', NULL),
(3, '24', 'CARGO MEDIUM', 1, 0, '2022-06-02 08:16:07', NULL),
(4, '28', 'CARGO LARGE', 1, 0, '2022-06-02 08:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `itemtype`
--

CREATE TABLE `itemtype` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ItemTypeCode` varchar(255) NOT NULL,
  `ItemTypeName` varchar(255) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemtype`
--

INSERT INTO `itemtype` (`id`, `ItemTypeCode`, `ItemTypeName`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'WC', 'Wildcraft', 1, 0, '2021-07-24 17:49:20', '2022-06-03 08:46:36'),
(2, 'AC', 'Aristocrat', 1, 0, '2021-10-17 17:11:38', '2022-06-03 08:47:41'),
(3, 'SF', 'Safari', 1, 0, '2021-10-17 17:12:30', '2022-06-03 08:48:20'),
(4, 'SB', 'SkyBags', 1, 1, '2021-10-17 17:13:03', '2022-06-03 08:44:51'),
(5, 'VI', 'VIP', 1, 0, '2021-10-22 13:49:34', '2022-06-03 08:44:26'),
(6, '108', 'Baggit', 1, 1, '2021-10-22 13:49:43', '2022-05-28 15:02:35'),
(7, '109', 'Addidas', 1, 1, '2021-10-22 13:50:13', '2022-05-28 15:01:57'),
(8, 'SK', 'skybag', 1, 0, '2021-10-22 13:50:22', '2022-06-03 08:43:07'),
(9, 'EX', 'EXPERT', 1, 0, '2021-10-22 13:50:33', '2022-06-03 08:42:47'),
(10, 'AT', 'American Tourister', 1, 0, '2021-10-22 13:50:41', '2022-06-03 08:41:44'),
(11, '501', 'KAMILIANT', 1, 1, '2022-06-01 14:19:19', NULL),
(12, 'SE', 'SEASONS', 1, 0, '2022-06-01 14:20:38', '2022-06-03 08:41:25'),
(13, 'FY', 'FANATASY', 1, 0, '2022-06-01 14:20:51', '2022-06-03 08:42:33'),
(14, 'TR', 'TREKKER', 1, 0, '2022-06-01 14:21:05', '2022-06-03 08:39:39'),
(15, 'KI', 'KISH', 1, 0, '2022-06-01 14:21:24', '2022-06-03 08:39:21'),
(16, 'HI', 'HIGH SIERRIA', 1, 0, '2022-06-01 14:21:42', '2022-06-03 08:38:58'),
(17, 'WE', 'WEEKEND', 1, 0, '2022-06-01 14:24:15', '2022-06-03 08:38:41'),
(18, 'OS', 'OASIS', 1, 0, '2022-06-01 14:33:40', '2022-06-03 08:47:10'),
(19, 'SP', 'SPACE', 1, 0, '2022-06-01 14:33:51', '2022-06-03 08:37:49'),
(20, 'VA', 'VAULT', 1, 0, '2022-06-01 14:34:45', '2022-06-03 08:37:40'),
(21, 'FA', 'FASTRACK', 1, 0, '2022-06-01 14:35:19', '2022-06-03 08:37:19'),
(22, 'TI', 'TITAN', 1, 0, '2022-06-01 14:36:19', '2022-06-03 08:37:05'),
(23, 'KA', 'KAMILIANT', 1, 0, '2022-06-02 08:10:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menudetails`
--

CREATE TABLE `menudetails` (
  `id` int(11) NOT NULL,
  `MenuDisplayName` text DEFAULT NULL,
  `IconName` text DEFAULT NULL,
  `MenuLevel` int(11) DEFAULT NULL,
  `IsParent` int(11) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `MenuDisplayID` text DEFAULT NULL,
  `MenuLink` text DEFAULT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menudetails`
--

INSERT INTO `menudetails` (`id`, `MenuDisplayName`, `IconName`, `MenuLevel`, `IsParent`, `ParentID`, `MenuDisplayID`, `MenuLink`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'Masters', 'IconMaster', 1, 0, 0, 'Masters', '', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(2, 'Sales', 'IconSales', 1, 0, 0, 'Sales', '', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(3, 'Purchase', 'IconPurchase', 1, 0, 0, 'purchase', '', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(4, 'User Rights', 'IconRights', 1, 0, 4, 'userrights', '/userrights', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(5, 'Users', 'IconAgents', 2, 1, 1, 'users', '/users', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(6, 'User Role', 'IconUserrole', 2, 1, 1, 'userrole', '/userroles', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(7, 'Customers', 'IconCustomer', 2, 1, 1, 'customers', '/customers', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(8, 'Suppliers', 'IconSupplier', 2, 1, 1, 'suppliers', '/suppliers', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(9, 'Cashbill', 'CashBill', 2, 1, 2, 'Cashbill', '/cashbill', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(10, 'Cashflow', 'cashflow', 2, 1, 2, 'Cashflow', '/cashflow', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(11, 'Item Type', 'IconItemType', 2, 1, 1, 'itemtype', '/itemtype', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(12, 'Items', 'IconItem', 2, 1, 1, 'items', '/items', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(13, 'Goods Receiving', 'Receive', 2, 1, 3, 'GoodsReceiving', '/goodsreceiving', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(14, 'Tax', 'IconTax', 2, 1, 1, 'tax', '/tax', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(15, 'Employee', 'IconEmployee', 2, 1, 1, 'Employee', '/employee', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(17, 'Sales Invoice', 'Invoice', 2, 1, 2, 'salesinvoice', '/salesinvoice', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(18, 'Sales Return', 'Return', 2, 1, 2, 'salesreturn', '/salesreturn', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(19, 'Goods Return', 'Return', 2, 1, 3, 'GoodsReturn', '/goodsreturn', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(20, 'Payments', 'Payment', 2, 1, 3, 'Payments', '/payments', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(21, 'Expense', 'IconExpense', 2, 1, 1, 'expense', '/expense', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(22, 'Receipts', 'Receipt', 2, 1, 2, 'receipts', '/receipts', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(23, 'Category', 'category', 2, 1, 1, 'category', '/category', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(24, 'Bank', 'bank', 2, 1, 1, 'bank', '/bank', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(25, 'Sales Report', 'SalesReport', 1, 0, 0, 'salesreport', '', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(26, 'Total Sales', 'InvoiceReport', 2, 1, 25, 'totalsales', '/invoicereport', 1, 0, '2021-06-18 18:30:00', '2021-06-18 18:30:00'),
(27, 'Sales Return', 'SalesReport', 2, 1, 25, 'salesreturnreport', '/returnreport', 1, 0, '2021-11-01 18:30:00', NULL),
(28, 'Receipts', 'SalesReport', 2, 1, 25, 'receiptsreport', '/receiptsreport', 1, 0, '2021-11-01 18:30:00', NULL),
(29, 'Cash Report', 'SalesReport', 2, 1, 25, 'cashreport', '/cashreport', 1, 0, NULL, NULL),
(30, 'Branch', 'category', 2, 1, 1, 'branch', '/branch', 1, 0, NULL, NULL),
(31, 'Model', 'IconModel', 2, 1, 1, 'model', '/model', 1, 0, NULL, NULL),
(32, 'ItemSize', 'IconSize', 2, 1, 1, 'itemsize', '/itemsize', 1, 0, NULL, NULL),
(33, 'Range', 'IconRange', 2, 1, 1, 'range', '/rangemaster', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `Id` int(11) NOT NULL,
  `ModelCode` varchar(255) DEFAULT NULL,
  `ModelName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdateAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `PaymentNo` varchar(50) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `Fax` varchar(100) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `BalanceAmount` varchar(100) DEFAULT NULL,
  `VoucherNo` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `RefNo` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChequeDate` date DEFAULT NULL,
  `CollectionDate` date DEFAULT NULL,
  `Narration` varchar(150) DEFAULT NULL,
  `PaymentTotal` varchar(100) DEFAULT NULL,
  `PaymentLessTot` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `PaymentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `PaymentNo`, `SupplierID`, `ContactNo`, `Fax`, `Telephone`, `Address`, `BalanceAmount`, `VoucherNo`, `Currency`, `Type`, `bank`, `RefNo`, `Date`, `ChequeDate`, `CollectionDate`, `Narration`, `PaymentTotal`, `PaymentLessTot`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`, `PaymentID`) VALUES
(4, 'PAYMENTS20220421_1', 1, '89898989', 'as', '556', 'CBE', '10', '10', '', '', '', 'RefNo', '2022-04-21', '2022-04-21', '2022-05-21', 'Narration', '10', '0', 1, 0, '2021-04-20 18:30:00', NULL, NULL),
(5, 'PAYMENTS20220421_2', 1, '89898989', 'as', '556', 'CBE', '10', '10', '', '', '', 'RefNo', '2022-04-21', '2022-04-21', '2022-05-21', 'Narration', '10', '0', 1, 0, '2021-04-20 18:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaterialID` int(10) UNSIGNED NOT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `SupplierID` int(10) UNSIGNED NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rangemaster`
--

CREATE TABLE `rangemaster` (
  `Id` int(11) NOT NULL,
  `FromRange` int(11) DEFAULT NULL,
  `ToRange` int(11) DEFAULT NULL,
  `Rupees` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rangemaster`
--

INSERT INTO `rangemaster` (`Id`, `FromRange`, `ToRange`, `Rupees`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 100, 100, 1, 0, '2022-06-01 10:14:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `ReceiptsNo` varchar(50) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `Fax` varchar(100) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `BalanceAmount` varchar(100) DEFAULT NULL,
  `VoucherNo` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `RefNo` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChequeDate` date DEFAULT NULL,
  `CollectionDate` date DEFAULT NULL,
  `Narration` varchar(150) DEFAULT NULL,
  `ReceiptTotal` varchar(100) DEFAULT NULL,
  `ReceiptLessTot` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `ReceiptsNo`, `CustomerID`, `BranchID`, `ContactNo`, `Fax`, `Telephone`, `Address`, `BalanceAmount`, `VoucherNo`, `Currency`, `Type`, `bank`, `RefNo`, `Date`, `ChequeDate`, `CollectionDate`, `Narration`, `ReceiptTotal`, `ReceiptLessTot`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(2, 'RECEIPTS20211011_1', 1, 0, '', '', '', 'Ukkadam', '1590', '', '', '1', '', '', '2021-08-18', '2021-08-18', '2021-08-18', '', '5', '0', 1, 0, '2021-10-10 18:30:00', NULL),
(3, 'RECEIPTS20211105_2', 1, 0, '', '', '', 'Ukkadam', '1386', '', '', '2', '', '', '2021-08-18', '2021-08-18', '2021-08-18', '', '50', '0', 1, 0, '2021-11-04 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoice`
--

CREATE TABLE `salesinvoice` (
  `id` int(10) UNSIGNED NOT NULL,
  `SalesInvoiceNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `ReceiptID` int(11) DEFAULT NULL,
  `SalesDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `TotalQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Less` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LessAmount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `GrandTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TotalExpense` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxAmount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrevLess` varchar(50) DEFAULT '0',
  `PrevLessAmount` varchar(100) DEFAULT '0',
  `PrevRecAmount` varchar(100) DEFAULT '0',
  `BalanceAmount` varchar(100) DEFAULT '0',
  `ReceivedAmount` varchar(100) DEFAULT '0',
  `ReturnTotal` varchar(200) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesinvoice`
--

INSERT INTO `salesinvoice` (`id`, `SalesInvoiceNo`, `CustomerID`, `BranchID`, `ReceiptID`, `SalesDate`, `DueDate`, `TotalQuantity`, `SubTotal`, `Less`, `LessAmount`, `Remarks`, `GrandTotal`, `TotalExpense`, `TaxAmount`, `PrevLess`, `PrevLessAmount`, `PrevRecAmount`, `BalanceAmount`, `ReceivedAmount`, `ReturnTotal`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'INVOICE20211017_1', 1, 0, NULL, '2021-08-01', '2021-08-01', '0', '350', '', '', '', '850', '', 'null', '0', '0', '0', '350', '0', NULL, 1, 0, '2021-10-16 18:30:00', '2021-10-16 18:30:00'),
(2, 'INVOICE20211017_2', 1, 0, NULL, '2021-08-01', '2021-08-01', '7', '210', '', '', '', '260', '', '', '0', '0', '0', '100', '0', NULL, 1, 0, '2021-10-16 18:30:00', '2021-10-20 18:30:00'),
(3, 'INVOICE20211017_3', 1, 0, 3, '2021-08-04', '2021-08-01', '5', '50', '', '', '', '61', '', '1', '0', '0', '50', '11', '50', NULL, 1, 0, '2021-10-16 18:30:00', '2021-11-05 05:13:42'),
(4, 'INVOICE20211017_4', 1, 0, NULL, '2021-08-05', '2021-08-01', '5', '50', '', '', '', '20', '', '', '0', '0', '0', '50', '0', '30', 1, 0, '2021-10-16 18:30:00', NULL),
(5, 'INVOICE20211021_5', 1, 0, NULL, '2021-08-08', '2021-08-01', '1', '10', '', '', '', '110', '', '', '0', '0', '0', '110', '0', NULL, 1, 0, '2021-10-20 18:30:00', NULL),
(6, 'INVOICE20211023_6', 1, 0, NULL, '2021-08-10', '2021-08-01', '1', '80', '', '', '', '85', '', '', '0', '0', '0', '85', '0', NULL, 1, 0, '2021-10-22 18:30:00', '2021-10-22 18:30:00'),
(7, 'INVOICE20211105_7', 3, 0, NULL, '2021-08-01', '2021-08-01', '10', '800', '', '', '', '816', '', '16', '0', '0', '0', '816', '0', NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(8, 'INVOICE20211105_8', 3, 0, NULL, '2021-11-05', '2021-11-30', '5', '125', '', '', '', '127.5', '', '2.5', '0', '0', '0', '127.5', '0', NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(9, 'INVOICE20211105_9', 3, 0, NULL, '2021-11-05', '2021-11-30', '2', '105', '', '', '', '107.1', '', '2.1', '0', '0', '0', '107.1', '0', NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(10, 'INVOICE20211105_10', 3, 0, NULL, '2021-11-05', '2021-11-27', '3', '60', '', '', '', '61.2', '', '1.2', '0', '0', '0', '61.2', '0', NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(11, 'INVOICE20211105_11', 1, 0, NULL, '2021-11-05', '2021-11-13', '3', '130', '', '', '', '136.5', '', '6.5', '0', '0', '0', '136.5', '0', NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(12, 'INVOICE20211105_12', 1, 0, NULL, '2021-11-05', '2021-11-30', '5', '400', '', '', '', '420', '', '20', '0', '0', '0', '420', '0', NULL, 1, 0, '2021-11-04 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoiceexpense`
--

CREATE TABLE `salesinvoiceexpense` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `InvoiceID` int(10) UNSIGNED NOT NULL,
  `ExpenseID` int(10) UNSIGNED NOT NULL,
  `ExpenseAmount` varchar(100) NOT NULL DEFAULT '0',
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesinvoiceexpense`
--

INSERT INTO `salesinvoiceexpense` (`id`, `InvoiceID`, `ExpenseID`, `ExpenseAmount`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 1, '500', 1, 0, '2021-10-16 18:30:00', '2021-10-16 18:30:00'),
(2, 2, 2, '50', 1, 0, '2021-10-16 18:30:00', '2021-10-20 18:30:00'),
(3, 3, 1, '10', 1, 0, '2021-10-16 18:30:00', NULL),
(4, 5, 1, '100', 1, 0, '2021-10-20 18:30:00', NULL),
(5, 6, 2, '5', 1, 0, '2021-10-22 18:30:00', '2021-10-22 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoiceitems`
--

CREATE TABLE `salesinvoiceitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SalesInvoiceID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiscountPrice` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsRowEdit` tinyint(1) DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesinvoiceitems`
--

INSERT INTO `salesinvoiceitems` (`id`, `SalesInvoiceID`, `ItemID`, `Quantity`, `Discount`, `DiscountPrice`, `Amount`, `IsRowEdit`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 1, '10', '0', '0', '100', 0, 1, 0, '2021-10-17 09:22:05', '2021-10-17 09:25:03'),
(2, 1, 2, '10', '0', '0', '250', 0, 1, 0, '2021-10-17 09:22:05', '2021-10-17 09:25:03'),
(3, 2, 1, '5', '0', '0', '50', 0, 1, 0, '2021-10-17 09:41:08', '2021-10-21 17:18:33'),
(4, 3, 1, '5', '0', '0', '50', 0, 1, 0, '2021-10-17 14:46:40', NULL),
(5, 4, 1, '2', '0', '0', '20', 0, 1, 0, '2021-10-17 17:26:18', NULL),
(6, 5, 1, '1', '0', '0', '10', 0, 1, 0, '2021-10-21 08:28:40', NULL),
(7, 2, 3, '2', '0', '0', '160', 0, 1, 0, '2021-10-21 17:18:33', NULL),
(8, 6, 3, '1', '0', '0', '80', 0, 1, 0, '2021-10-23 15:36:53', '2021-10-23 15:37:29'),
(9, 7, 3, '10', '0', '0', '800', 0, 1, 0, '2021-11-05 05:21:21', NULL),
(10, 8, 2, '5', '0', '0', '125', 0, 1, 0, '2021-11-05 06:00:28', NULL),
(11, 9, 3, '1', '0', '0', '80', 0, 1, 0, '2021-11-05 06:11:48', NULL),
(12, 9, 2, '1', '0', '0', '25', 0, 1, 0, '2021-11-05 06:11:48', NULL),
(13, 10, 1, '1', '0', '0', '10', 0, 1, 0, '2021-11-05 06:15:01', NULL),
(14, 10, 2, '2', '0', '0', '50', 0, 1, 0, '2021-11-05 06:15:01', NULL),
(15, 11, 3, '1', '0', '0', '80', 0, 1, 0, '2021-11-05 06:16:07', NULL),
(16, 11, 2, '2', '0', '0', '50', 0, 1, 0, '2021-11-05 06:16:07', NULL),
(17, 12, 3, '5', '0', '0', '400', 0, 1, 0, '2021-11-05 06:21:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoiceitems2`
--

CREATE TABLE `salesinvoiceitems2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SalesInvoiceID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiscountPrice` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsRowEdit` tinyint(1) DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesinvoiceitems2`
--

INSERT INTO `salesinvoiceitems2` (`id`, `SalesInvoiceID`, `ItemID`, `Quantity`, `Discount`, `DiscountPrice`, `Amount`, `IsRowEdit`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 1, '10', '0', '0', '100', 0, 1, 0, '2021-10-17 08:49:10', '2021-10-17 09:25:03'),
(2, 1, 2, '10', '0', '0', '250', 0, 1, 0, '2021-10-17 09:04:51', '2021-10-17 09:25:03'),
(3, 2, 1, '5', '0', '0', '50', 0, 1, 0, '2021-10-17 09:22:05', '2021-10-21 17:18:33'),
(4, 1, 2, '10', '0', '0', '250', 0, 1, 0, '2021-10-17 09:22:05', NULL),
(5, 2, 1, '5', '0', '0', '50', 0, 1, 0, '2021-10-17 09:41:08', NULL),
(6, 3, 1, '5', '0', '0', '50', 0, 1, 0, '2021-10-17 14:46:40', NULL),
(7, 4, 1, '5', '0', '0', '50', 0, 1, 0, '2021-10-17 17:26:18', NULL),
(8, 6, 3, '1', '0', '0', '80', 0, 1, 0, '2021-10-21 08:28:40', '2021-10-23 15:39:02'),
(9, 2, 3, '2', '0', '0', '160', 0, 1, 0, '2021-10-21 17:18:33', NULL),
(10, 6, 3, '1', '0', '0', '80', 0, 1, 0, '2021-10-23 15:39:09', NULL),
(11, 6, 3, '1', '0', '0', '80', 0, 1, 0, '2021-10-23 15:39:29', NULL),
(12, 6, 3, '1', '0', '0', '80', 0, 1, 0, '2021-10-23 15:39:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoicetax`
--

CREATE TABLE `salesinvoicetax` (
  `id` int(11) NOT NULL,
  `TaxID` int(11) NOT NULL,
  `InvoiceID` int(11) NOT NULL,
  `TaxAmount` varchar(45) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesinvoicetax`
--

INSERT INTO `salesinvoicetax` (`id`, `TaxID`, `InvoiceID`, `TaxAmount`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 2, 7, NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(2, 2, 8, NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(3, 2, 9, NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(4, 2, 10, NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(5, 1, 11, NULL, 1, 0, '2021-11-04 18:30:00', NULL),
(6, 1, 12, NULL, 1, 0, '2021-11-04 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesreturn`
--

CREATE TABLE `salesreturn` (
  `id` int(10) UNSIGNED NOT NULL,
  `SalesReturnNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `SalesReturnDate` date DEFAULT NULL,
  `TotalQuantity` varchar(255) DEFAULT NULL,
  `SubTotal` varchar(255) DEFAULT NULL,
  `Less` varchar(255) DEFAULT NULL,
  `LessAmount` varchar(255) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL,
  `GrandTotal` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesreturn`
--

INSERT INTO `salesreturn` (`id`, `SalesReturnNo`, `CustomerID`, `BranchID`, `SalesReturnDate`, `TotalQuantity`, `SubTotal`, `Less`, `LessAmount`, `Remarks`, `GrandTotal`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'RETURN20211011_1', 1, 0, '2021-08-09', '5', '50', '', '', '', '50', 1, 0, '2021-10-10 18:30:00', NULL),
(2, 'RETURN20211011_2', 1, 0, '2021-08-12', '5', '50', '', '', '', '50', 1, 0, '2021-10-10 18:30:00', NULL),
(3, 'RETURN20211017_3', 1, 0, '2021-08-20', '3', '30', '', '', '', '30', 1, 0, '2021-10-16 18:30:00', NULL),
(4, 'RETURN20220420_4', 1, 0, '2022-04-04', '5', '50', '0', '0', '', '100', 1, 0, '2022-04-18 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesreturnitems`
--

CREATE TABLE `salesreturnitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `SalesReturnID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Reason` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `InvoiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesreturnitems`
--

INSERT INTO `salesreturnitems` (`id`, `SalesReturnID`, `ItemID`, `Quantity`, `Amount`, `Reason`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`, `InvoiceID`) VALUES
(1, 1, 1, '1', '10', '', 1, 1, '2021-10-10 03:29:53', NULL, 4),
(2, 1, 1, '5', '50', '', 1, 0, '2021-10-11 02:44:01', NULL, 6),
(3, 2, 1, '5', '50', '', 1, 0, '2021-10-11 02:44:17', NULL, 6),
(4, 3, 1, '3', '30', '', 1, 0, '2021-10-17 17:26:47', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `Address3` varchar(255) DEFAULT NULL,
  `MobileNo` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Country` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `PinCode` varchar(50) NOT NULL,
  `TIN` varchar(100) DEFAULT NULL,
  `CST` varchar(100) DEFAULT NULL,
  `OpenBalance` varchar(100) NOT NULL DEFAULT '0',
  `ClosedBalance` varchar(100) NOT NULL DEFAULT '0',
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `SupplierName`, `BranchID`, `Address1`, `Address2`, `Address3`, `MobileNo`, `Telephone`, `Country`, `State`, `City`, `PinCode`, `TIN`, `CST`, `OpenBalance`, `ClosedBalance`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'SABARI RETAIL INDIA P LTD', 1, '0', '3', '', '9072660930', '3', 'INDIA', 'TAMILNADU', 'MADURAI', '625001', '33AAECS2313KIZM', '0', '85000', '85000', 1, 0, '2022-06-02 08:30:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TaxName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TaxRate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `TaxName`, `TaxRate`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'VAT@5%', '5', 1, 0, '2021-07-24 17:19:32', '2021-08-31 04:42:16'),
(2, 'GST@2', '2', 1, 0, '2021-07-27 13:59:35', '2021-08-31 04:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `usermenudetails`
--

CREATE TABLE `usermenudetails` (
  `id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `MenuDetailID` int(11) NOT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `IsDelete` tinyint(1) DEFAULT 0,
  `SaveButton` tinyint(1) DEFAULT 1,
  `ViewButton` tinyint(1) DEFAULT 1,
  `EditButton` tinyint(1) DEFAULT 1,
  `DeleteButton` tinyint(1) DEFAULT 1,
  `PrintButton` tinyint(1) DEFAULT 1,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usermenudetails`
--

INSERT INTO `usermenudetails` (`id`, `UserID`, `MenuDetailID`, `IsActive`, `IsDelete`, `SaveButton`, `ViewButton`, `EditButton`, `DeleteButton`, `PrintButton`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 1, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(2, 1, 2, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(3, 1, 3, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(4, 1, 4, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(5, 1, 5, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(6, 1, 6, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(7, 1, 7, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(8, 1, 8, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(9, 1, 9, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(10, 1, 10, 0, 0, 0, 0, 1, 0, 1, NULL, NULL),
(11, 1, 11, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(12, 1, 12, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(13, 1, 13, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(14, 1, 14, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(15, 1, 15, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(16, 1, 22, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(17, 1, 17, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(18, 1, 18, 1, 0, 1, 1, 1, 0, 1, NULL, NULL),
(19, 1, 19, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(20, 1, 20, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(21, 1, 21, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(64, 1, 23, 1, 0, 1, 1, 0, 0, 1, NULL, NULL),
(65, 1, 24, 1, 0, 1, 1, 0, 0, 1, NULL, NULL),
(66, 1, 25, 1, 0, 1, 1, 0, 0, 1, NULL, NULL),
(67, 1, 26, 1, 0, 1, 1, 0, 0, 1, NULL, NULL),
(68, 1, 27, 1, 0, 1, 1, 1, 1, 1, '2021-11-01 18:30:00', NULL),
(69, 1, 28, 1, 0, 1, 1, 1, 1, 1, '2021-11-01 18:30:00', NULL),
(70, 1, 29, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(71, 1, 30, 1, 0, 1, 1, 1, 1, 1, '2021-11-01 18:30:00', NULL),
(72, 2, 1, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(73, 2, 2, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(74, 2, 3, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(75, 2, 4, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(76, 2, 5, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(77, 2, 6, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(78, 2, 7, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(79, 2, 8, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(80, 2, 9, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(81, 2, 10, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(82, 2, 11, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(83, 2, 12, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(84, 2, 13, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(85, 2, 14, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(86, 2, 15, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(87, 2, 17, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(88, 2, 19, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(89, 2, 18, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(90, 2, 20, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(91, 2, 21, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(92, 2, 22, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(93, 2, 23, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(94, 2, 24, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(95, 2, 25, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(96, 2, 26, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(97, 2, 27, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(98, 2, 28, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(99, 2, 29, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(100, 2, 30, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(101, 3, 1, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(102, 3, 2, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(103, 3, 3, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(104, 3, 4, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(105, 3, 5, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(106, 3, 6, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(107, 3, 7, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(108, 3, 8, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(109, 3, 9, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(110, 3, 10, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(111, 3, 11, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(112, 3, 12, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(113, 3, 13, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(114, 3, 14, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(115, 3, 15, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(116, 3, 17, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(117, 3, 18, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(118, 3, 19, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(119, 3, 20, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(120, 3, 21, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(121, 3, 22, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(122, 3, 23, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(123, 3, 24, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(124, 3, 25, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(125, 3, 26, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(126, 3, 27, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(127, 3, 28, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(128, 3, 29, 0, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(129, 3, 30, 1, 0, 1, 1, 1, 1, 1, '2022-05-01 06:41:27', '2022-05-01 06:41:27'),
(130, 1, 31, 0, 0, 1, 1, 1, 1, 1, NULL, NULL),
(131, 1, 32, 1, 0, 1, 1, 1, 1, 1, NULL, NULL),
(132, 1, 33, 1, 0, 1, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `id` int(10) UNSIGNED NOT NULL,
  `UserRoleCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `UserRoleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDelete` tinyint(1) NOT NULL DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`id`, `UserRoleCode`, `UserRoleName`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'ADM', 'Admin', 1, 0, NULL, '2021-05-13 02:29:20'),
(2, 'BS', 'Business', 1, 1, NULL, NULL),
(3, 'MNG', 'Manager', 1, 0, NULL, '2021-06-03 17:08:05'),
(4, 'EMP', 'Employee', 1, 0, NULL, NULL),
(11, 'VST', 'Visitor', 1, 0, '2021-06-03 17:19:03', NULL),
(12, '001', '001', 1, 1, '2021-10-21 08:52:52', NULL),
(13, '002', '002', 1, 1, '2021-10-21 08:53:08', NULL),
(14, '003', '003', 1, 1, '2021-10-21 08:55:27', NULL),
(15, '004', '004', 1, 1, '2021-10-21 08:55:36', NULL),
(16, '005', '005', 1, 1, '2021-10-21 08:55:44', NULL),
(17, '006', '006', 1, 1, '2021-10-21 08:55:51', NULL),
(18, '007', '007', 1, 1, '2021-10-21 08:55:59', NULL),
(19, '008', '008', 1, 1, '2021-10-21 08:56:08', NULL),
(20, '009', '009', 1, 1, '2021-10-21 08:56:18', NULL),
(21, '010', '010', 1, 1, '2021-10-21 08:56:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `UserRoleID` int(11) NOT NULL,
  `UserProfile` varchar(500) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `IsDelete` tinyint(1) DEFAULT 0,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  `BranchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Username`, `Password`, `UserRoleID`, `UserProfile`, `Status`, `IsActive`, `IsDelete`, `CreatedAt`, `UpdatedAt`, `BranchID`) VALUES
(1, 'Admin', 'admin@email.com', 'admin', '123456', 1, 'http://localhost:4000/Images/Manager.jpg', 1, 1, 0, '2021-06-17 18:30:00', '2022-04-29 05:36:54', 1),
(2, 'Manager', 'manager@email.com', 'manager', '123456', 1, 'http://localhost:4000/Images/Manager.jpg', 1, 1, 0, '2021-10-24 18:30:00', '2022-04-29 05:38:56', 2),
(3, 'Manager2', 'Manager2@gmail.com', 'Manager2', '123456', 3, '', 1, 1, 0, '2022-05-01 06:41:27', NULL, 3);
