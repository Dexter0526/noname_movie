CREATE TABLE `moviecomment` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL COMMENT '이메일',
  `content` mediumtext NOT NULL COMMENT '댓글내용',
  `reg_date` date NOT NULL COMMENT '댓글작성일',
  `movie_name` varchar(30) NOT NULL COMMENT '영화코드',
  `likecount` varchar(10) DEFAULT NULL COMMENT '댓글공감수',
  `user_rating` varchar(30) DEFAULT NULL COMMENT '별점',
  PRIMARY KEY (`num`)
) 