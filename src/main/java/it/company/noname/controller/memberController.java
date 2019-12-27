package it.company.noname.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.MemberVO;
import it.company.noname.service.memberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/member/*")
@AllArgsConstructor
public class memberController {
	
	private memberService service;
	
	@PostMapping("join")
	public String join(MemberVO memberVO) {
		
		service.insertMember(memberVO);
		
		return "main";
	}
	
	@PostMapping("log")
	public String log(String email, String password, HttpSession session) {
		
		MemberVO memberVO = service.getMember(email);
		
		if(password == memberVO.getPassword()) {
			session.setAttribute("email", email);
			return "movie/list";
		}else {
			return "main";
		}
	}
	
	@PostMapping("delete")
	public String delete(HttpSession session, String password) {
		String email = (String) session.getAttribute("email");
		MemberVO memberVO = service.getMember(email);
		
		if(password == memberVO.getPassword()) {
			service.deleteMember(email);
			session.invalidate();
			return "main";
		}else {
			return "main";
		}
	}
	
	@PostMapping("update")
	public String update(MemberVO memberVO) {
		service.updateMember(memberVO);
		
		return "main";
	}
}
