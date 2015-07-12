package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PayDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int paySeq;
	private Date payRegDate;
	private String payType;
	private String accOwner;
	private String accOwnerCustNum;
	private String bankName;
	private String accNum;
	private String cardSa; //카드사
	private String cardOwner;
	private String cardNum;
	private String cardYYmm;
	private int custSeq;
	
	public int getPaySeq() {
		return paySeq;
	}
	public void setPaySeq(int paySeq) {
		this.paySeq = paySeq;
	}
	
	public Date getPayRegDate() {
		return payRegDate;
	}
	public void setPayRegDate(Date payRegDate) {
		this.payRegDate = payRegDate;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	
	
	public String getCardOwner() {
		return cardOwner;
	}
	public void setCardOwner(String cardOwner) {
		this.cardOwner = cardOwner;
	}
	public String getCardSa() {
		return cardSa;
	}
	public void setCardSa(String cardSa) {
		this.cardSa = cardSa;
	}
	public String getAccOwner() {
		return accOwner;
	}
	public void setAccOwner(String accOwner) {
		this.accOwner = accOwner;
	}
	public String getAccOwnerCustNum() {
		return accOwnerCustNum;
	}
	public void setAccOwnerCustNum(String accOwnerCustNum) {
		this.accOwnerCustNum = accOwnerCustNum;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getAccNum() {
		return accNum;
	}
	public void setAccNum(String accNum) {
		this.accNum = accNum;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getCardYYmm() {
		return cardYYmm;
	}
	public void setCardYYmm(String cardYYmm) {
		this.cardYYmm = cardYYmm;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	
	
	
	
	
	
	
	
	

}
