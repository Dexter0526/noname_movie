package it.company.noname.service;

import java.util.List;

import it.company.noname.domain.MapVO;

public interface mapService {

	public List<MapVO> searchMap(String query,Integer page);
		

	
}
