package it.company.noname.mapper;

import java.util.List;

import it.company.noname.domain.MemberVO;

public interface memberMapper {

	public List<MemberVO> getMemberList();
	
	public MemberVO getMember(String email);
	
	public int insertMember(MemberVO memberVO);
	
	public int deleteMember(String email);
	
	public int updateMember(MemberVO memberVO);
}
