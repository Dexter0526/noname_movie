package it.company.noname.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.helpboardVO;
import it.company.noname.service.helpService;
import lombok.extern.log4j.Log4j;




@Log4j
@Controller
@RequestMapping("/help/*")
public class helpController {

	@Autowired
	private helpService helpservice;
@GetMapping("/board")
public String list(Model model){
	log.info("write() 호출됨...");
	log.warn("주의 메시지");
	List<helpboardVO> boardList = helpservice.getBoards();
	model.addAttribute("boardList", boardList);
	return "help/helpboard";
}
}
