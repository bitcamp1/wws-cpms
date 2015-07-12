package com.cpms.web.dto;


import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserDto implements Serializable {
	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private String 	uid;
	private String 	pwd;
	private int shopSeq;
	
	

	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	

	
	
	
}
