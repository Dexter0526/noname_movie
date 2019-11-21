package it.company.noname.domain;

import lombok.Data;

@Data
public class MovieRequestVO {

	private String query;
	private Integer display;
	private Integer start;
	private String genre;
	private String country;
	
	public MovieRequestVO(String query, String genre, String country) {
		this.query = query;
		this.display = 20;
		this.start = 1;
		this.genre = genre;
		this.country = country;
	}
	
	
} // MovieRequestVO class
