package it.company.noname.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.mail.javamail.JavaMailSender;

import it.company.noname.domain.helpboardVO;

public interface helpMapper{
	
	public List<helpboardVO> getBoards();
		// TODO Auto-generated method stub
	public JavaMailSender mailSender();
	
	
}