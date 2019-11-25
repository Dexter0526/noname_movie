package it.company.noname.domain;

import lombok.Data;

@Data
public class helpboardVO {
	private int bno;
	private String content;
	private String subject;


	public helpboardVO(){}


	public helpboardVO(int bno, String content, String subject) {
		super();
		this.bno = bno;
		this.content = content;
		this.subject = subject;
	}
	

}
