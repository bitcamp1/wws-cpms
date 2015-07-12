package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DeliveryDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int deliSeq; 
	private Date deliRegDate; //등록일
	private String serialNum; // 일련번호
	private String invoiceNum; // 송장번호 UK
	private int jusoSeq; //배송지 주소
	private int custSeq; //수령인 
	
	
	public int getDeliSeq() {
		return deliSeq;
	}
	public Date getDeliRegDate() {
		return deliRegDate;
	}
	public void setDeliRegDate(Date deliRegDate) {
		this.deliRegDate = deliRegDate;
	}
	public String getSerialNum() {
		return serialNum;
	}
	public void setSerialNum(String serialNum) {
		this.serialNum = serialNum;
	}
	public String getInvoiceNum() {
		return invoiceNum;
	}
	public void setInvoiceNum(String invoiceNum) {
		this.invoiceNum = invoiceNum;
	}
	public int getJusoSeq() {
		return jusoSeq;
	}
	public void setJusoSeq(int jusoSeq) {
		this.jusoSeq = jusoSeq;
	}
	public void setDeliSeq(int deliSeq) {
		this.deliSeq = deliSeq;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	
	
	
	

}
