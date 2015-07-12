package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class Progress implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private int progSeq;
	private String progStatus; // open, cancle, change
	private int custSeq;
	
	
	public int getProgSeq() {
		return progSeq;
	}
	public void setProgSeq(int progSeq) {
		this.progSeq = progSeq;
	}
	public String getProgStatus() {
		return progStatus;
	}
	public void setProgStatus(String progStatus) {
		this.progStatus = progStatus;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	
	

}
