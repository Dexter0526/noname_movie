package it.company.noname.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import it.company.noname.domain.theaterCommentVO;

public interface theaterCommentMapper {
	public List<theaterCommentVO> getCommentList(int id);
	
	public int insertComment(theaterCommentVO VO);
	
	public int updateComment(@Param("content") String content, @Param("userRating") int userRating, @Param("num") int num);
	
	public int deleteComment(int num);
	
	public int updateLikeCount(int num);
}
