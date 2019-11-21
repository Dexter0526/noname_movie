package it.company.noname.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MovieVO {
	
	private String title;
	private String link;
	private String image;
	private String subtitle;
	private Date pubDate;
	private String director;
	private String actor;
	private Integer userRating;
	
	
	
} // movieVO class
