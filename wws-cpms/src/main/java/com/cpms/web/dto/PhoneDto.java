package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PhoneDto implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	private String phoneModel; //폰 모델PK
	private String phoneBrand; // 폰 브랜드
	private String phoneName; // 폰이름
	private String phonePrice; //폰 가격=출고가
	private String telecom; //통신사 
	
	
	public String getPhoneBrand() {
		return phoneBrand;
	}
	public void setPhoneBrand(String phoneBrand) {
		this.phoneBrand = phoneBrand;
	}
	public String getPhoneName() {
		return phoneName;
	}
	public void setPhoneName(String phoneName) {
		this.phoneName = phoneName;
	}
	public String getPhoneModel() {
		return phoneModel;
	}
	public void setPhoneModel(String phoneModel) {
		this.phoneModel = phoneModel;
	}
	public String getPhonePrice() {
		return phonePrice;
	}
	public void setPhonePrice(String phonePrice) {
		this.phonePrice = phonePrice;
	}
	public String getTelecom() {
		return telecom;
	}
	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}
	
}
