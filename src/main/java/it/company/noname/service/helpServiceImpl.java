package it.company.noname.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import it.company.noname.domain.helpboardVO;
@Service
public class helpServiceImpl implements helpService {

		  @Inject
		  Helpboard helpboard;
	 
	    @Override
	    public List<helpboardVO> boardList() throws Exception {
	        return helpboard.boardList(); 
	    }
	}


