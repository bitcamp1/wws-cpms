package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CustomerDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private int custSeq; 
	private Date custRegDate; 
	private String custName; //  이름
	private String custPhone; //  무선전화
	private String custTelnum; //  유선전화
	private String custNum; //  주민번호 UK
	private String custBirth; //고객 생일
	private int shopSeq; // 등록한 샵
	private int jusoSeq; // 주소
	

	public int getCustSeq() {
		return custSeq;
	}


	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}


	public Date getCustRegDate() {
		return custRegDate;
	}


	public void setCustRegDate(Date custRegDate) {
		this.custRegDate = custRegDate;
	}


	public String getCustName() {
		return custName;
	}


	public void setCustName(String custName) {
		this.custName = custName;
	}


	public String getCustPhone() {
		return custPhone;
	}


	public void setCustPhone(String custPhone) {
		this.custPhone = custPhone;
	}


	public String getCustNum() {
		return custNum;
	}


	public void setCustNum(String custNum) {
		this.custNum = custNum;
	}


	public String getCustBirth() {
		return custBirth;
	}


	public void setCustBirth(String custBirth) {
		this.custBirth = custBirth;
	}


	public String getCustTelnum() {
		return custTelnum;
	}


	public void setCustTelnum(String custTelnum) {
		this.custTelnum = custTelnum;
	}


	public int getShopSeq() {
		return shopSeq;
	}


	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}


	public int getJusoSeq() {
		return jusoSeq;
	}


	public void setJusoSeq(int jusoSeq) {
		this.jusoSeq = jusoSeq;
	}
	

	
	

	
}
