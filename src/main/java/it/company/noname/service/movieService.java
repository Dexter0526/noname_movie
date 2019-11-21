package it.company.noname.service;

import java.util.List;

import org.springframework.stereotype.Service;

import it.company.noname.domain.MovieRequestVO;
import it.company.noname.domain.MovieVO;

@Service
public interface movieService {

    public List<MovieVO> searchMovie(MovieRequestVO movieRequestVO); // searchMovie
    
} // movieService interface
