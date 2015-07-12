package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StockDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int stockSeq;
	private Date stockRegDate;
	private String phoneModel;
	private String phoneColor;
	private int phoneQty;
	private String stockStat;
	public int getStockSeq() {
		return stockSeq;
	}
	public void setStockSeq(int stockSeq) {
		this.stockSeq = stockSeq;
	}
	
	public Date getStockRegDate() {
		return stockRegDate;
	}
	public void setStockRegDate(Date stockRegDate) {
		this.stockRegDate = stockRegDate;
	}
	public String getPhoneModel() {
		return phoneModel;
	}
	public void setPhoneModel(String phoneModel) {
		this.phoneModel = phoneModel;
	}
	public String getPhoneColor() {
		return phoneColor;
	}
	public void setPhoneColor(String phoneColor) {
		this.phoneColor = phoneColor;
	}
	public int getPhoneQty() {
		return phoneQty;
	}
	public void setPhoneQty(int phoneQty) {
		this.phoneQty = phoneQty;
	}
	public String getStockStat() {
		return stockStat;
	}
	public void setStockStat(String stockStat) {
		this.stockStat = stockStat;
	}
	
	
	

}
