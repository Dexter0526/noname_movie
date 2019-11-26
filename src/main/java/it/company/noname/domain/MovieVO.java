package it.company.noname.domain;

import lombok.Data;

@Data
public class MovieVO {
	
	private String title;
	private String link;
	private String image;
	private String subtitle;
	private String pubDate;
	private String director;
	private String actor;
	private String userRating;
	
	public MovieVO() {
	}
	
	public MovieVO(String title, String link, String image, String subtitle, String pubDate, String director,
			String actor, String userRating) {
		this.title = title;
		this.link = link;
		this.image = image;
		this.subtitle = subtitle;
		this.pubDate = pubDate;
		this.director = director;
		this.actor = actor;
		this.userRating = userRating;
	}
	
} // movieVO class
