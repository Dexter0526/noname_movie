package it.company.noname.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import it.company.noname.domain.helpboardVO;
import it.company.noname.mapper.helpMapper;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@Transactional
public class helpService {
	
	@Autowired
	private helpMapper helpmapper;
	public JavaMailSender mailSender;
	
	public List<helpboardVO> getBoards() {
		List<helpboardVO> list = helpmapper.getBoards();
		return list;
	} 

	
}
