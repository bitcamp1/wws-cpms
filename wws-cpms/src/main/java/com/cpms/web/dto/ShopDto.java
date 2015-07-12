package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ShopDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int shopSeq;  // 샵코드 4자리
	private Date shopRegDate; // 샵등록일...결재시 필요
	private String shopName; // 상호
	private String shopPw; // 샵 비밀번호
	private String shopPhone; // 전화번호
	private String shopFax; //샵 팩스
	private int jusoSeq; //주소
	//select
	private String saleType; // 판매유형 1.유선 2.무선
	private int shopLevel; // 1:본사 2:총판 3:지사
	
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	
	public Date getShopRegDate() {
		return shopRegDate;
	}
	public void setShopRegDate(Date shopRegDate) {
		this.shopRegDate = shopRegDate;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopPw() {
		return shopPw;
	}
	public void setShopPw(String shopPw) {
		this.shopPw = shopPw;
	}
	public String getShopPhone() {
		return shopPhone;
	}
	public void setShopPhone(String shopPhone) {
		this.shopPhone = shopPhone;
	}
	public String getShopFax() {
		return shopFax;
	}
	public void setShopFax(String shopFax) {
		this.shopFax = shopFax;
	}

	public String getSaleType() {
		return saleType;
	}
	public void setSaleType(String saleType) {
		this.saleType = saleType;
	}
	public int getShopLevel() {
		return shopLevel;
	}
	public void setShopLevel(int shopLevel) {
		this.shopLevel = shopLevel;
	}
	public int getJusoSeq() {
		return jusoSeq;
	}
	public void setJusoSeq(int jusoSeq) {
		this.jusoSeq = jusoSeq;
	}
	
	
	
	
	
}