package it.company.noname.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.service.helpService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/help/*")
public class helpController {
	@Inject
    helpService helpservice;
	@RequestMapping("helpboard")
	public String help() {
		return "help/helpboard";
	}
}
