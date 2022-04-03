CREATE TABLE `expense_heading` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `createdBy_FK` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
