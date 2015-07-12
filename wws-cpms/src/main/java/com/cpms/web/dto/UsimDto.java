package com.cpms.web.dto;

import java.io.Serializable;
public class UsimDto implements Serializable{

	private static final long serialVersionUID = 1L;
	private String usimName;
	private String usimNum;
	private String usimPrice;
	
	
	public String getUsimName() {
		return usimName;
	}
	public void setUsimName(String usimName) {
		this.usimName = usimName;
	}
	public String getUsimNum() {
		return usimNum;
	}
	public void setUsimNum(String usimNum) {
		this.usimNum = usimNum;
	}
	public String getUsimPrice() {
		return usimPrice;
	}
	public void setUsimPrice(String usimPrice) {
		this.usimPrice = usimPrice;
	}
	
	
	
	
}
