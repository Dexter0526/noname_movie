CREATE TABLE `theatercomment` (
  `place_name` varchar(100) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `content` blob,
  `user_rating` int(11) DEFAULT '0',
  `reg_date` date DEFAULT NULL,
  `likecount` int(11) DEFAULT '0',
  PRIMARY KEY (`num`)
) 