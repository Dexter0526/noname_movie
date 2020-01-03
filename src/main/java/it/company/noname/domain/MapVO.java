package it.company.noname.domain;

import lombok.Data;

@Data
public class MapVO {

	private String placeName;
	private String roadAddressName;
	private String id;
	private String phone;
	private String x;
	private String y;
	private String placeUrl;
	
	
	public MapVO() {
	}
	
	public MapVO(String placeName, String roadAddressName, String id, 
			String phone, String x, String y, String placeUrl) {
		
		this.placeName = placeName;
		this.roadAddressName = roadAddressName;
		this.id = id;
		this.phone = phone;
		this.x = x;
		this.y = y;
		this.placeUrl = placeUrl;
	}
	
} // MapVO class