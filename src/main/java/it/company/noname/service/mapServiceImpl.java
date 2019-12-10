package it.company.noname.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class mapServiceImpl implements mapService {

	@Override
	public String address(String loc) {
		
		String [] ar = loc.split("-");
		
		
		String addr = "https://dapi.kakao.com/v2/local/geo/coord2address.json?";
		
		addr=addr+"x="+ar[1]+"&y="+ar[0];
		
		try {
			URL url = new URL(addr);
			HttpURLConnection con = (HttpURLConnection)url.openConnection();
			con.setRequestProperty("Authorization", "2e08fdc4aa55fe7baea563b6b9b4348a");
			con.setConnectTimeout(20000);
			con.setUseCaches(false);
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			
			StringBuilder sb = new StringBuilder();
			while(true) {
				String line =br.readLine();
				if(line ==null) {
					break;
							}
		
				sb.append(line);
			}
			br.close();
			con.disconnect();
 
			System.out.println(sb);
			JSONObject obj = new JSONObject(sb.toString());
			System.out.println(obj);
			JSONArray imsi = obj.getJSONArray("documents");
			System.out.println(imsi);
			JSONObject o = imsi.getJSONObject(0);
			System.out.println(o);
			JSONObject c = o.getJSONObject("address");
			String address= c.getString("address_name");
			
			return address;
		}catch (Exception e) {
			System.out.println("지도보이기" + e.getMessage());
			e.printStackTrace();
		}
		
		
		return null;
	}
	
}
