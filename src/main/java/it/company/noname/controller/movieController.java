package it.company.noname.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.MovieCommentVO;
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
	public String content(MovieVO movieVO, Model model) {
		
		log.info(movieVO.getTitle());
		
		// 전체 후기 가져오기
		List<MovieCommentVO> commentList = service.getComments(movieVO.getTitle());
		
		
		// 뷰에서 사용할 정보
		model.addAttribute("movie", movieVO);
		model.addAttribute("commentList", commentList);
		
		return "movie/content";
	} // content get
	
	
	@PostMapping("/commentWrite")
	public String commentWrite(String content, MovieVO movieVO, MovieCommentVO movieCommentVO, Model model) {
		
		movieCommentVO.setEmail("bbb@naver.com"); // 등록된 닉네임 JOIN해서 가져오기
		movieCommentVO.setMovieName(movieVO.getTitle());
		movieCommentVO.setLikecount("0");
		movieCommentVO.setUserRating("9.2");
		
		// 후기 한개 등록
		service.insertComment(movieCommentVO);
		
		// 전체 후기 가져오기
		List<MovieCommentVO> commentList = service.getComments(movieVO.getTitle());
		
		model.addAttribute("movie", movieVO);
		model.addAttribute("commentList", commentList);
		
		return "movie/content";
	} // commentWrite post
	
	
	
	
} // movieController class
