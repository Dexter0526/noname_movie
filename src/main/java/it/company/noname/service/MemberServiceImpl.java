package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.company.noname.domain.MemberVO;
import it.company.noname.mapper.memberMapper;
import lombok.AllArgsConstructor;

@Service
@Transactional
@AllArgsConstructor
public class MemberServiceImpl implements memberService {
	
	private memberMapper mapper;
	
	@Override
	public List<MemberVO> getMemberList() {
		mapper.getMemberList();
		return null;
	}

	@Override
	public MemberVO getMember(String email) {
		mapper.getMember(email);
		return null;
	}

	@Override
	public int insertMember(MemberVO memberVO) {
		mapper.insertMember(memberVO);
		return 0;
	}

	@Override
	public int deleteMember(String email) {
		mapper.deleteMember(email);
		return 0;
	}

	@Override
	public int updateMember(MemberVO memberVO) {
		mapper.updateMember(memberVO);
		return 0;
	}

}
