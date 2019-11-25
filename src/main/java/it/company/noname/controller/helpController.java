package it.company.noname.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import it.company.noname.service.helpService;
import lombok.extern.log4j.Log4j;




@Log4j
@Controller
@RequestMapping
public class helpController {


	 @Autowired helpService helpservice;
	

	@GetMapping("/help/board")
	public String help() {
		return "help/helpboard";
	}

	@GetMapping("/help/home")
	public String home() {
		System.out.println("홈이동");
		return "help/helphome";
	}

}
