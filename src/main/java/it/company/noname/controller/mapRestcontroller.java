package it.company.noname.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping(value="commentList/{id}", consumes = "application/json")
	public ResponseEntity<Map<String, Object>> commentList(@PathVariable("id") int id){
		Map<String, Object> map = new HashMap<String, Object>();
		List<theaterCommentVO> commentList = service.getCommentList(id);
		log.info(commentList);
		map.put("commentList", commentList);
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	@PostMapping(value="insertComment")
	public int insertComment(theaterCommentVO VO, HttpSession session){
		log.info("insert exe");
		VO.setEmail((String) session.getAttribute("email"));
		int reuslt = service.insertComment(VO);
		return reuslt;
	}
	
	@GetMapping(value = "deleteComment/{num}")
	public int deleteComment(@PathVariable("num") int num) {
		int result = 0;
		result = service.deleteComment(num);
		log.info(result);
		return result;
	}
	@PostMapping(value="updateComment")
	public int updateComment(String content, int num) {
		int result = 0;
		result = service.updateComment(content, num);
		
		return result;
	}
}
