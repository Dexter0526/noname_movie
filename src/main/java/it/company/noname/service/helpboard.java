package it.company.noname.service;

import org.springframework.stereotype.Service;

import it.company.noname.mapper.helpMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class helpboard implements helpService {
	
	private helpMapper mapper;
	
}
