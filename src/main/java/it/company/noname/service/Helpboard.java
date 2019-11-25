package it.company.noname.service;

import java.util.List;

import it.company.noname.domain.helpboardVO;

public interface Helpboard {
	// 게시물 목록 보기
    public List<helpboardVO> boardList() throws Exception;
}
