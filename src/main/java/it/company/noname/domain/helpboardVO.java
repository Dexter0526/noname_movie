package it.company.noname.domain;

import lombok.Data;

@Data
public class helpboardVO {
	private int bno;
	private String con;
	private String subject;
	
	
	public helpboardVO(){}
	public helpboardVO(int bno, String con, String subject) {
		super();
		this.bno = bno;
		this.con = con;
		this.subject = subject;
	}
	
}
