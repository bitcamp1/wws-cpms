package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StoringDto implements Serializable{
	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int storSeq;
	private Date storLog;
	private String storReg;
	private String storStat;
	private String stockSetting;
	public int getStorSeq() {
		return storSeq;
	}
	public void setStorSeq(int storSeq) {
		this.storSeq = storSeq;
	}
	public Date getStorLog() {
		return storLog;
	}
	public void setStorLog(Date storLog) {
		this.storLog = storLog;
	}
	public String getStorReg() {
		return storReg;
	}
	public void setStorReg(String storReg) {
		this.storReg = storReg;
	}
	public String getStorStat() {
		return storStat;
	}
	public void setStorStat(String storStat) {
		this.storStat = storStat;
	}
	public String getStockSetting() {
		return stockSetting;
	}
	public void setStockSetting(String stockSetting) {
		this.stockSetting = stockSetting;
	}
	
	

}
