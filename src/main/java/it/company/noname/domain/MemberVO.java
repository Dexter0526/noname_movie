package it.company.noname.domain;

import lombok.Data;

@Data
public class MemberVO {
	
	private String email;
	private String password; 
	private String name;
	private String image;
}
