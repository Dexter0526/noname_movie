package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;

import it.company.noname.domain.MovieCommentVO;
import it.company.noname.domain.MovieRequestVO;
import it.company.noname.domain.MovieVO;

@Service
public interface movieService {
<<<<<<< HEAD

    public List<MovieVO> searchMovie(MovieRequestVO movieRequestVO); // searchMovie
    public MovieVO getMovie(String title);
=======
	
	
    public List<MovieVO> searchMovie(MovieRequestVO vo); // searchMovie
    
    public void searchData(String query);
    
    public List<MovieCommentVO> getComments(String title);
    
    public MovieCommentVO getComment(int num);
    
    public void insertComment(MovieCommentVO vo);
    
    public void deleteComment(int num);
    
    public void updateComment(MovieCommentVO vo);
>>>>>>> godgnb/master
    
} // movieService interface
