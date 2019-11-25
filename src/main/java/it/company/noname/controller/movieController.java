package it.company.noname.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.company.noname.domain.MovieRequestVO;
import it.company.noname.domain.MovieVO;
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
	public String searchMovie(MovieRequestVO movieRequestVO, Model model, String query) {
		
		// 뷰에서 사용할 정보
		model.addAttribute("movieList", service.searchMovie(movieRequestVO));
		model.addAttribute("query", query);
		
		return "movie/movieList";
	} // searchMovie get
	
	
	@GetMapping("/content")
	public String content(@RequestParam("title") String title, Model model) {
		
		log.info(title);
		
		// 뷰에서 사용할 정보
		model.addAttribute("movie", service.getMovie(title));
		
		return "movie/content";
	} // content
	
	
	
} // movieController class
