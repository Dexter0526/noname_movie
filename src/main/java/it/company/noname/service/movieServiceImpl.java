package it.company.noname.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.company.noname.domain.MovieCommentVO;
import it.company.noname.domain.MovieRequestVO;
import it.company.noname.domain.MovieVO;
import it.company.noname.mapper.movieMapper;
import lombok.Setter;

@Service
public class movieServiceImpl implements movieService {

	@Autowired
	private movieMapper mapper;
	
	@Override
	public List<MovieVO> searchMovie(MovieRequestVO movieRequestVO) {
		List<MovieVO> list = new ArrayList<MovieVO>();
		
		String clientId = "uPskKJg54rV3rzvngAkc";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "2tSw5c0pdS";//애플리케이션 클라이언트 시크릿값";
        try {
            String text = URLEncoder.encode(movieRequestVO.getQuery(), "UTF-8");
            String amount = (movieRequestVO.getDisplay() != null ? "&display=" + movieRequestVO.getDisplay() : "");
            String pageNum = (movieRequestVO.getStart() != null ? "&start=" + movieRequestVO.getStart() : "");
            String genre = (movieRequestVO.getGenre() != null ? "&genre=" + movieRequestVO.getGenre() : "");
            String country = (movieRequestVO.getCountry() != null ? "&country=" + movieRequestVO.getCountry() : "");
            
            String apiURL = "https://openapi.naver.com/v1/search/movie?query="+ text + amount + pageNum + genre + country; // json 결과
            
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            
            JSONParser jsonParser = new JSONParser();
            JSONObject jsonObject =(JSONObject) jsonParser.parse(br);
            JSONArray jsonArray =(JSONArray) jsonObject.get("items");
            //System.out.println("jsonArray : " + jsonArray);

            Iterator<JSONObject> iter = jsonArray.iterator();
            
            while (iter.hasNext()) {
                JSONObject rowObject =(JSONObject) iter.next();
                
                MovieVO movieVO = new MovieVO();
                movieVO.setTitle((((String) rowObject.get("title")).replace("<b>", "")).replace("</b>", ""));	
                movieVO.setLink((String) rowObject.get("link"));
                movieVO.setImage((String) rowObject.get("image"));
                movieVO.setSubtitle((((String) rowObject.get("subtitle")).replace("<b>", "")).replace("</b>", ""));
                movieVO.setPubDate((String) rowObject.get("pubDate"));
                movieVO.setDirector((String) rowObject.get("director"));
                movieVO.setActor((String) rowObject.get("actor"));
                movieVO.setUserRating((String) rowObject.get("userRating"));
                
                list.add(movieVO);
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }

		return list;
	} // searchMovie

	
	@Override
	public void insertComment(MovieCommentVO movieCommentVO) {
		mapper.insertComment(movieCommentVO);
		
	} // insertComment 


	@Override
	public List<MovieCommentVO> getComments(String title) {
		List<MovieCommentVO> list = mapper.getComments(title);
		
		return list;
	} // getComments

	
	
	

} // movieServiceImpl 
