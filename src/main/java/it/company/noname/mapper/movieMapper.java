package it.company.noname.mapper;

import java.util.List;

import it.company.noname.domain.MovieCommentVO;

public interface movieMapper {
	
	// 후기 한개 등록
	public void insertComment(MovieCommentVO movieCommentVO);
	
	// 전체 후기 가져오기
	public List<MovieCommentVO> getComments(String title);
	
	
} // movieMapper
