package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class RebateDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private int rebateSeq;
	private int rebateNum;
	private String startDate;
	private String endDate;
	private String rebateMemo;
	public int getRebateSeq() {
		return rebateSeq;
	}
	public void setRebateSeq(int rebateSeq) {
		this.rebateSeq = rebateSeq;
	}
	
	public int getRebateNum() {
		return rebateNum;
	}
	public void setRebateNum(int rebateNum) {
		this.rebateNum = rebateNum;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getRebateMemo() {
		return rebateMemo;
	}
	public void setRebateMemo(String rebateMemo) {
		this.rebateMemo = rebateMemo;
	}
	
	

}
