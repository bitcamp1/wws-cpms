package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommissionDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private int cmmssSeq;
	private Date cmmssStartDate;
	private String cmmssEndDate;
	private String cmmssMemo;
	public int getCmmssSeq() {
		return cmmssSeq;
	}
	public void setCmmssSeq(int cmmssSeq) {
		this.cmmssSeq = cmmssSeq;
	}
	

	
	public Date getCmmssStartDate() {
		return cmmssStartDate;
	}
	public void setCmmssStartDate(Date cmmssStartDate) {
		this.cmmssStartDate = cmmssStartDate;
	}
	public String getCmmssEndDate() {
		return cmmssEndDate;
	}
	public void setCmmssEndDate(String cmmssEndDate) {
		this.cmmssEndDate = cmmssEndDate;
	}
	public String getCmmssMemo() {
		return cmmssMemo;
	}
	public void setCmmssMemo(String cmmssMemo) {
		this.cmmssMemo = cmmssMemo;
	}
	
	

}
