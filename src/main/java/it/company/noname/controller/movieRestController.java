package it.company.noname.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.company.noname.domain.MovieRequestVO;
import it.company.noname.domain.MovieVO;
import it.company.noname.service.movieService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/movie/")
@Log4j
@AllArgsConstructor
public class movieRestController {
	
	private movieService service;
	
	@GetMapping(value = "/list/{query}",
			produces = {MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> searchMovie(MovieRequestVO vo, @PathVariable("query") String query) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<MovieVO> movieList = service.searchMovie(vo);
		map.put("movieList", movieList);

		service.searchData(query);
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	
} // movieRestController class
