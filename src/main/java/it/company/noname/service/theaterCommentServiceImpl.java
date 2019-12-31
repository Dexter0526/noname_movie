package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.company.noname.domain.theaterCommentVO;
import it.company.noname.mapper.theaterCommentMapper;
import lombok.AllArgsConstructor;

@Service
@Transactional
@AllArgsConstructor
public class theaterCommentServiceImpl implements theaterCommentService {

	private theaterCommentMapper mapper;
	
	@Override
	public List<theaterCommentVO> getCommentList(int id) {
		// TODO Auto-generated method stub
		return mapper.getCommentList(id);
	}

	@Override
	public int insertComment(theaterCommentVO VO) {
		// TODO Auto-generated method stub
		return mapper.insertComment(VO);
	}

	@Override
	public int updateComment(String content, int num) {
		// TODO Auto-generated method stub
		return mapper.updateComment(content, num);
	}

	@Override
	public int deleteComment(int num) {
		// TODO Auto-generated method stub
		return mapper.deleteComment(num);
	}

}
