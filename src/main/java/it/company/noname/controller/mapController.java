package it.company.noname.controller;


import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.MapVO;
import it.company.noname.service.mapService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping(value= "/address/*")
public class mapController {

	private mapService mapService;
	
	@GetMapping("/search")
	public String searchMap(String query, Integer page, Model model) {
		
		query += "영화관";
		if(page == null) {
			page = 1;
		}
		
		log.info(mapService.searchMap(query, page));
		
		model.addAttribute("mapList", mapService.searchMap(query, page));
		
		return "map/mapList";
	}
	
}
