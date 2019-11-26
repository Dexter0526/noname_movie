package it.company.noname.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.company.noname.domain.helpboardVO;
import it.company.noname.mapper.helpMapper;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class helpService {
	
	@Autowired
	private helpMapper helpmapper;

	public List<helpboardVO> getBoards() {
		List<helpboardVO> list = helpMapper.getBoards();
		return list;
	} 
	
	
}
