package it.company.noname.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.MovieRequestVO;
import it.company.noname.service.movieService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/movie/*")
@AllArgsConstructor
public class movieController {
	
	private movieService service;
	
	@GetMapping("/all")
	public void searchMovie(MovieRequestVO movieRequestVO) {
		
		movieRequestVO.setQuery("w");
		movieRequestVO.setDisplay(10);
		movieRequestVO.setStart(1);
		movieRequestVO.setCountry("KR");
		
		service.searchMovie(movieRequestVO);
		
	} // movielist get
	
} // movieController class
