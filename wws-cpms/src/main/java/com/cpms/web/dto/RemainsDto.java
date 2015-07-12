package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class RemainsDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private int remSeq;
	private Date remRegDate;
	private String gongphoneReg;
	private String gongphoneStat;
	private String gongphoneEx;
	private String poorphoneReg;
	private String poorphoneStat;
	private String lossphoneReg;
	private String lossphoneStat;
	public int getRemSeq() {
		return remSeq;
	}
	public void setRemSeq(int remSeq) {
		this.remSeq = remSeq;
	}

	public Date getRemRegDate() {
		return remRegDate;
	}
	public void setRemRegDate(Date remRegDate) {
		this.remRegDate = remRegDate;
	}
	public String getGongphoneReg() {
		return gongphoneReg;
	}
	public void setGongphoneReg(String gongphoneReg) {
		this.gongphoneReg = gongphoneReg;
	}
	public String getGongphoneStat() {
		return gongphoneStat;
	}
	public void setGongphoneStat(String gongphoneStat) {
		this.gongphoneStat = gongphoneStat;
	}
	public String getGongphoneEx() {
		return gongphoneEx;
	}
	public void setGongphoneEx(String gongphoneEx) {
		this.gongphoneEx = gongphoneEx;
	}
	public String getPoorphoneReg() {
		return poorphoneReg;
	}
	public void setPoorphoneReg(String poorphoneReg) {
		this.poorphoneReg = poorphoneReg;
	}
	public String getPoorphoneStat() {
		return poorphoneStat;
	}
	public void setPoorphoneStat(String poorphoneStat) {
		this.poorphoneStat = poorphoneStat;
	}
	public String getLossphoneReg() {
		return lossphoneReg;
	}
	public void setLossphoneReg(String lossphoneReg) {
		this.lossphoneReg = lossphoneReg;
	}
	public String getLossphoneStat() {
		return lossphoneStat;
	}
	public void setLossphoneStat(String lossphoneStat) {
		this.lossphoneStat = lossphoneStat;
	}
	
	
	
}
