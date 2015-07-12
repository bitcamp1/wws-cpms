package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class JusoDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int jusoSeq; // 주소PK
	private String doCity; // 도,특별시,광역시
	private String siGuGun; // 시구군
	private String dong; // 동
	private String doroName; // 도로명
	private String jusoDetail; // 상세주소
	private String zipCode; //우편번호
	
	
	
	
	public String getDoCity() {
		return doCity;
	}
	public int getJusoSeq() {
		return jusoSeq;
	}
	public void setJusoSeq(int jusoSeq) {
		this.jusoSeq = jusoSeq;
	}
	public void setDoCity(String doCity) {
		this.doCity = doCity;
	}
	public String getSiGuGun() {
		return siGuGun;
	}
	public void setSiGuGun(String siGuGun) {
		this.siGuGun = siGuGun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getDoroName() {
		return doroName;
	}
	public void setDoroName(String doroName) {
		this.doroName = doroName;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getJusoDetail() {
		return jusoDetail;
	}
	public void setJusoDetail(String jusoDetail) {
		this.jusoDetail = jusoDetail;
	}
	
	
	
	

}
