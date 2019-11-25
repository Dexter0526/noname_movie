package it.company.noname.service;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;



import it.company.noname.domain.helpboardVO;

public class HelpboardImpl implements helpService {

	 @Inject
	    SqlSession sqlSession;
	
	 @Override
	    public List<helpboardVO> boardList() throws Exception {
	        return sqlSession.selectList("help.helpboard"); 
	 }
}