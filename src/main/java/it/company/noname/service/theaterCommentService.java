package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;

import it.company.noname.domain.theaterCommentVO;

@Service
public interface theaterCommentService {
	public List<theaterCommentVO> getCommentList(int id);
	
	public int insertComment(theaterCommentVO VO);
	
	public int updateComment(String content, int userRating, int num);
	
	public int deleteComment(int num);
	
	public int updateLikeCount(int num);
}

