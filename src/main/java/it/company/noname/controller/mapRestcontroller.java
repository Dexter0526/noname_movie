package it.company.noname.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.company.noname.domain.theaterCommentVO;
import it.company.noname.service.theaterCommentService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@AllArgsConstructor
@RequestMapping(value = "/map/")
@Log4j
public class mapRestcontroller {
	
	private theaterCommentService service;
	
	@GetMapping(value="commentList", consumes = "application/json")
	public ResponseEntity<Map<String, Object>> commentList(int id){
		Map<String, Object> map = new HashMap<String, Object>();
		List<theaterCommentVO> commentList = service.getCommentList(id);
		
		map.put("commentList", commentList);
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	@PostMapping(value="insertComment")
	public ResponseEntity<Map<String, Object>> insertComment(theaterCommentVO VO, HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		VO.setEmail((String) session.getAttribute("email"));
		service.insertComment(VO);
		List<theaterCommentVO> commentList = service.getCommentList(VO.getId());
		
		map.put("commentList", commentList);
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
}
