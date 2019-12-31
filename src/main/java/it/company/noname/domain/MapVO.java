package it.company.noname.domain;

import lombok.Data;

@Data
public class MapVO {

	private String place_name;
	private String road_address_name;
	private String id;
	private String phone;
	private String x;
	private String y;
	
	
	public MapVO() {
	}
	
	public MapVO(String place_name, String road_address_name, String id, 
			String phone, String x, String y) {
		
		this.place_name = place_name;
		this.road_address_name = road_address_name;
		this.id = id;
		this.phone = phone;
		this.x = x;
		this.y = y;
	}
	
} // MapVO class