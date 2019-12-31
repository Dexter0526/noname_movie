package it.company.noname;

import org.junit.Test;

import it.company.noname.domain.MemberVO;
import it.company.noname.service.memberService;

public class test {
	private memberService service;
	
	@Test
	public void test() {
		MemberVO memberVO = new MemberVO();
		memberVO.setEmail("aaa");
		memberVO.setName("ssss");
		memberVO.setPassword("bbb");
		
		service.insertMember(memberVO);
	}
}
