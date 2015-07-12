package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;



public class CreditRetrieverDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	//문의내용
	private int credSeq; // 조회번호
	private Date credRegDate; //조회 등록일..시간
	private String shopName; //샵
	private String targetName; //조회대상자 이름
	private String targetNum; //조회대상자 번호
	private String telecom; //통신사
	//답변에 포함된 내용
	private String credStatus; //신용상태 
	private String credResult; //조회결과
	private String credManage;  // 신용관리
	private String credNote; // 비고
	//FK
	private int shopSeq; // 샵FK
	
	public int getCredSeq() {
		return credSeq;
	}
	public void setCredSeq(int credSeq) {
		this.credSeq = credSeq;
	}
	public Date getCredRegDate() {
		return credRegDate;
	}
	public void setCredRegDate(Date credRegDate) {
		this.credRegDate = credRegDate;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	public String getTargetName() {
		return targetName;
	}
	public void setTargetName(String targetName) {
		this.targetName = targetName;
	}
	public String getTargetNum() {
		return targetNum;
	}
	public void setTargetNum(String targetNum) {
		this.targetNum = targetNum;
	}
	public String getTelecom() {
		return telecom;
	}
	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}
	public String getCredStatus() {
		return credStatus;
	}
	public void setCredStatus(String credStatus) {
		this.credStatus = credStatus;
	}
	public String getCredResult() {
		return credResult;
	}
	public void setCredResult(String credResult) {
		this.credResult = credResult;
	}
	public String getCredManage() {
		return credManage;
	}
	public void setCredManage(String credManage) {
		this.credManage = credManage;
	}
	public String getCredNote() {
		return credNote;
	}
	public void setCredNote(String credNote) {
		this.credNote = credNote;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	
	
	
	
	
}
