package it.company.noname.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class movieServiceImpl implements movieService {

	@Autowired
	private movieMapper mapper;
	
	@Override
	public List<MovieVO> searchMovie(MovieRequestVO vo) {
		List<MovieVO> list = new ArrayList<MovieVO>();
		
		String clientId = "uPskKJg54rV3rzvngAkc";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "2tSw5c0pdS";//애플리케이션 클라이언트 시크릿값";
        try {
            String text = URLEncoder.encode(vo.getQuery(), "UTF-8");
            String amount = (vo.getDisplay() != null ? "&display=" + vo.getDisplay() : "");
            String pageNum = (vo.getStart() != null ? "&start=" + vo.getStart() : "");
            String genre = (vo.getGenre() != null ? "&genre=" + vo.getGenre() : "");
            String country = (vo.getCountry() != null ? "&country=" + vo.getCountry() : "");
            
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
	public void searchData(String query) {
		File directory = new File("C:/searchData/data.csv");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH");
		Date date = new Date();
		String str = sdf.format(date);
		
		BufferedWriter bfwriter = null;
		
		try {
			bfwriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(directory, true), "MS949"));
			bfwriter.write(str +",");
			bfwriter.write(query + "\n");
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				bfwriter.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		mapper.insertSearchData(query);
		
	} // searchData
	

	@Override
	public List<MovieCommentVO> getComments(String title) {
		List<MovieCommentVO> list = mapper.getComments(title);
		
		return list;
	} // getComments
	
	
	@Override
	public MovieCommentVO getComment(int num) {
		MovieCommentVO vo = mapper.getComment(num);
		
		return vo;
	} // getComment


	@Override
	public void insertComment(MovieCommentVO vo) {
		mapper.insertComment(vo);
		
	} // insertComment
	
	
	@Override
	public void deleteComment(int num) {
		mapper.deleteComment(num);
		
	} // deleteComment


	@Override
	public void updateComment(MovieCommentVO vo) {
		mapper.updateComment(vo);
		
	} // updateComment

	
	
	

} // movieServiceImpl 
