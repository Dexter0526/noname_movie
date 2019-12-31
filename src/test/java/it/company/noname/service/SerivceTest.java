package it.company.noname.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import it.company.noname.domain.MemberVO;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class SerivceTest {
	@Autowired
	private memberService service;
	
	@Test
	public void insert() throws Exception{
		MemberVO memberVO = new MemberVO();
		
		memberVO.setEmail("bb@bb");
		memberVO.setName("aa");
		memberVO.setPassword("aaa");
		
		service.insertMember(memberVO);
	}
	
}
