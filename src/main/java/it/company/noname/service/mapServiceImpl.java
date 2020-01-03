package it.company.noname.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.stereotype.Service;
import org.w3c.dom.stylesheets.DocumentStyle;

import it.company.noname.domain.MapVO;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;
import java.util.List;

@Service
@Log4j
public class mapServiceImpl implements mapService {

	@Override
	public List<MapVO> searchMap(String query,Integer page){
		List<MapVO> list = new ArrayList<MapVO>();
		
		String addr = "https://dapi.kakao.com/v2/local/search/keyword.json?";

		try {

			query = URLEncoder.encode(query, "UTF-8");
			
//			addr=addr+"x="+ar[1]+"&y="+ar[0];

			addr = addr + "query=" + query;
			
			addr = addr + "&page=" +page;
			
			URL url = new URL(addr);
			HttpURLConnection con = (HttpURLConnection)url.openConnection();
			con.setRequestProperty("Authorization", "KakaoAK e4d541bfbcbeccceff06e3dceeebb883");
			con.setConnectTimeout(20000);
			con.setUseCaches(false);

			BufferedReader br;
			int responseCode = con.getResponseCode();
			log.info(responseCode);
			br = new BufferedReader(new InputStreamReader(con.getInputStream()));

			
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject =(JSONObject)  jsonParser.parse(br);
			JSONArray jsonArray =(JSONArray) jsonObject.get("documents");
			
			Iterator<JSONObject> iter = jsonArray.iterator();
			
			while (iter.hasNext()) {
				JSONObject rowObject = (JSONObject) iter.next();
				
				MapVO mapVO = new MapVO();
				mapVO.setPlace_name((String) rowObject.get("place_name"));
				mapVO.setRoad_address_name((String) rowObject.get("road_address_name"));
				mapVO.setId((String) rowObject.get("id"));
				mapVO.setPhone((String) rowObject.get("phone"));
				mapVO.setX((String) rowObject.get("x"));
				mapVO.setY((String) rowObject.get("y"));
				mapVO.setPlace_url((String) rowObject.get("place_url"));
				
				
			 list.add(mapVO);
				
			}

			
		}catch (Exception e) {
			e.printStackTrace();
		}


		return list;
	}


}
