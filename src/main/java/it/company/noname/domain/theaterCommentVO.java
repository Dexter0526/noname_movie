package it.company.noname.domain;


import java.util.Date;

import lombok.Data;

@Data
public class theaterCommentVO {
	private int num;
	private String placeName;
	private int id;
	private String email;
	private String content;
	private int userRating;
	private Date regDate;
	private int likecount;
}
