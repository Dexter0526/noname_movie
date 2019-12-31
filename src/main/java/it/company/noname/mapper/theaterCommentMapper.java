package it.company.noname.mapper;

import java.util.List;

import it.company.noname.domain.theaterCommentVO;

public interface theaterCommentMapper {
	public List<theaterCommentVO> getCommentList(int id);
	
	public int insertComment(theaterCommentVO VO);
	
	public int updateComment(String content, int num);
	
	public int deleteComment(int num);
}
