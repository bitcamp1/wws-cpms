package com.cpms.web.data;

import java.io.Serializable;
import java.util.Date;

public class ShopJusoData implements Serializable {

	private static final long serialVersionUID = 1L;
	private int shopSeq;  // 샵코드 4자리
	private Date shopRegDate; // 샵등록일...결재시 필요
	private String shopName; // 상호
	private String shopPw; // 샵 비밀번호
	private String shopPhone; // 전화번호
	private String shopFax; //샵 팩스
	
	private String shopMemo; // 메모
	private String saleType; // 판매유형
	private int shopLevel; // 1:본사 2:총판 3:지사
	private int jusoSeq; // 주소PK
	private String doCity; // 도,특별시,광역시
	private String siGuGun; // 시구군
	private String dong; // 동
	private String doroName; // 도로명
	private String juso_detail; // 상세주소
	private String zipCode; //우편번호
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
	public String getShopMemo() {
		return shopMemo;
	}
	public void setShopMemo(String shopMemo) {
		this.shopMemo = shopMemo;
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
	public String getDoCity() {
		return doCity;
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
	public String getJuso_detail() {
		return juso_detail;
	}
	public void setJuso_detail(String juso_detail) {
		this.juso_detail = juso_detail;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	
	
}
