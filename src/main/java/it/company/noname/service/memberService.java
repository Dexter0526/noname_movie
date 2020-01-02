package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;

import it.company.noname.domain.MemberVO;

@Service
public interface memberService {
	// 전체 회원정보 가져오기
	public List<MemberVO> getMemberList();
	
	// 회원정보 가져오기
	public MemberVO getMember(String email);
	
	// 회원정보 추가하기
	public int insertMember(MemberVO memberVO);
	
	// 회원정보 삭제하기
	public int deleteMember(String email);
	
	// 회원정보 수정하기
	public int updateMember(MemberVO memberVO);
	
	// 회원정보 비교하기
	public int userCheck(String email, String password);
}
