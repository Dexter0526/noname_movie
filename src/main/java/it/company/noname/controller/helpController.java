package it.company.noname.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.service.helpService;
import lombok.extern.log4j.Log4j;




@Log4j
@Controller
@RequestMapping("/help/*")
public class helpController {

	@Autowired
	private helpService helpservice;
@GetMapping("/board")
public String board() {
	log.info("write() 호출됨...");
	log.warn("주의 메시지");
	return "help/helpboard";
}
}
