CREATE TABLE `searchdata` (
  `reg_date` date DEFAULT NULL,
  `search` varchar(1000) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`),
  UNIQUE KEY `searchDatacol_UNIQUE` (`no`)
)