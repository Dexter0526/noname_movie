package it.company.noname.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.company.noname.service.memberService;
import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/member/")
@AllArgsConstructor
public class memberRestController {
	private memberService service;
	
	@GetMapping(value="emailCheck", consumes = "application/json")
	public int emailCheck(String email){
		Map<String, Object> map = new HashMap<String, Object>();
		int check = 0;
		if(service.getMember(email) != null) {
			check = 1;
		}
		map.put("check", check);
		return check;
	}
	
}
