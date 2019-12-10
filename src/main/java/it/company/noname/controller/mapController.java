package it.company.noname.controller;


import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.service.mapService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value= "address")
public class mapController {

	@GetMapping("/map")
	public Map<String, Object> login(String loc) {
		Map<String, Object> map = new HashMap<String, Object>();
		String address = mapService.address(loc);
		map.put("address", address);

		return map;
	}
	
}
