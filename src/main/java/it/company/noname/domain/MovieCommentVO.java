package it.company.noname.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MovieCommentVO {
	
	private int num;
	private String email;
	private String content;
	private Date regDate;
	private String movieName;
	private String likecount;
	private String userRating;
	
} // MovieCommentVO class
