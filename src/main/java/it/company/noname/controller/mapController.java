package it.company.noname.controller;


import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.MapVO;
import it.company.noname.service.mapService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping(value= "address")
public class mapController {

	private mapService mapService;
	
	@GetMapping("/map")
	public String searchMap(String query, Integer page) {
		
		query = "서면영화관";
		
		page = 1;
		
		
		
		log.info(mapService.searchMap(query, page));
		return "map/list";
		
	}
	
	
	@GetMapping("mapcontent")
	public String mapcontent(MapVO vo) {
		

		return null;
	}
}
