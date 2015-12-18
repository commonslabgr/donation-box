CREATE TABLE `coinacceptor` (
  `timeinserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Currency` varchar(3) NOT NULL DEFAULT 'EUR',
  `Value` decimal(20,10) NOT NULL,
  `DonationID` int(5) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `donations` (
  `DonationID` int(11) NOT NULL AUTO_INCREMENT,
  `Currency` varchar(5) NOT NULL DEFAULT 'EUR',
  `Ammount` decimal(20,10) NOT NULL DEFAULT '0.0000000000',
  `ProjectName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Public` tinyint(1) NOT NULL DEFAULT '0',
  `ProjectID` int(5) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DonationID`),
  UNIQUE KEY `DonationID` (`DonationID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
