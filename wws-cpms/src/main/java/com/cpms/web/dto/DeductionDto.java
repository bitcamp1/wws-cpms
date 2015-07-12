package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class DeductionDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int deducSeq;
	private int deductNum;
	private String DeductStartDate;
	private String DeductEndDate;
	private String deducMemo;
	public int getDeducSeq() {
		return deducSeq;
	}
	public void setDeducSeq(int deducSeq) {
		this.deducSeq = deducSeq;
	}
	public int getDeductNum() {
		return deductNum;
	}
	public void setDeductNum(int deductNum) {
		this.deductNum = deductNum;
	}
	
	public String getDeductStartDate() {
		return DeductStartDate;
	}
	public void setDeductStartDate(String deductStartDate) {
		DeductStartDate = deductStartDate;
	}
	public String getDeductEndDate() {
		return DeductEndDate;
	}
	public void setDeductEndDate(String deductEndDate) {
		DeductEndDate = deductEndDate;
	}
	public String getDeducMemo() {
		return deducMemo;
	}
	public void setDeducMemo(String deducMemo) {
		this.deducMemo = deducMemo;
	}
	
	

}
