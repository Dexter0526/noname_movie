package it.company.noname.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		int check = service.userCheck(email, password);
		
		if (check == 1) {
			session.setAttribute("email", email);
			return "main";
		} else {
			return "main";
		}
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "main";
	}
	
	@GetMapping("passwdCheckForm")
	public String passwdCheckForm(HttpSession session,  Model model) {
		String email =(String) session.getAttribute("email");
		
		model.addAttribute("email", email);
		
		return "member/passwdCheckForm";
	}
	
	@GetMapping("myAccount")
	public String myAccount(HttpSession session, Model model) {
		String email =(String) session.getAttribute("email");
		
		MemberVO memberVO = service.getMember(email);
		
		model.addAttribute("member", memberVO);
		
		return "member/myAccount";
	}
	
	@GetMapping("myAccountDelete")
	public String myAccountDelete(HttpSession session) {
		String email = (String) session.getAttribute("email");
		
		service.deleteMember(email);
		session.invalidate();
		return "main";
	}
	
	@PostMapping("myAccountUpdate")
	public String myAccountUpdate(MemberVO memberVO) {
		service.updateMember(memberVO);
		
		return "main";
	}
	
	
	
}