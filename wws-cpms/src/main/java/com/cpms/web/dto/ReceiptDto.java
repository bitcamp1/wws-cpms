package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class ReceiptDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private int rcptSeq;
	private String openDate;
	private String rcptDate;
	private String custName;
	private String confirmNum;
	private String rcptType;
	private String calcPrice;
	private String noncalcPrice;
	private String calcYn;
	private String agencyName;
	private String shopName;
	private String rcptMemo;
	public int getRcptSeq() {
		return rcptSeq;
	}
	public void setRcptSeq(int rcptSeq) {
		this.rcptSeq = rcptSeq;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public String getRcptDate() {
		return rcptDate;
	}
	public void setRcptDate(String rcptDate) {
		this.rcptDate = rcptDate;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getConfirmNum() {
		return confirmNum;
	}
	public void setConfirmNum(String confirmNum) {
		this.confirmNum = confirmNum;
	}
	public String getRcptType() {
		return rcptType;
	}
	public void setRcptType(String rcptType) {
		this.rcptType = rcptType;
	}
	public String getCalcPrice() {
		return calcPrice;
	}
	public void setCalcPrice(String calcPrice) {
		this.calcPrice = calcPrice;
	}
	public String getNoncalcPrice() {
		return noncalcPrice;
	}
	public void setNoncalcPrice(String noncalcPrice) {
		this.noncalcPrice = noncalcPrice;
	}
	public String getCalcYn() {
		return calcYn;
	}
	public void setCalcYn(String calcYn) {
		this.calcYn = calcYn;
	}
	public String getAgencyName() {
		return agencyName;
	}
	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getRcptMemo() {
		return rcptMemo;
	}
	public void setRcptMemo(String rcptMemo) {
		this.rcptMemo = rcptMemo;
	}
	
	

}
