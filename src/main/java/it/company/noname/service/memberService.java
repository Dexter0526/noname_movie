package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;

import it.company.noname.domain.MemberVO;

@Service
public interface memberService {
	public List<MemberVO> getMemberList();
	
	public MemberVO getMember(String email);
	
	public int insertMember(MemberVO memberVO);
	
	public int deleteMember(String email);
	
	public int updateMember(MemberVO memberVO);
}
