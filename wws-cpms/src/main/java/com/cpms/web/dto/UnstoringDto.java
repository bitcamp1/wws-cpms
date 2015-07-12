package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

import javax.xml.crypto.Data;

public class UnstoringDto implements Serializable{
	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int unstorSeq;
	private Data unstorLog;
	private String unstorReg;
	private String unstorStat;
	private String txspecReg; // 거래명세서 등록
	private String txspecStat; // 거래명세서 현황
	private String stockMove;
	private String recoverReg;
	private String recoverStat;
	private String recoverSpecStat;
	public int getUnstorSeq() {
		return unstorSeq;
	}
	public void setUnstorSeq(int unstorSeq) {
		this.unstorSeq = unstorSeq;
	}
	public Data getUnstorLog() {
		return unstorLog;
	}
	public void setUnstorLog(Data unstorLog) {
		this.unstorLog = unstorLog;
	}
	public String getUnstorReg() {
		return unstorReg;
	}
	public void setUnstorReg(String unstorReg) {
		this.unstorReg = unstorReg;
	}
	public String getUnstorStat() {
		return unstorStat;
	}
	public void setUnstorStat(String unstorStat) {
		this.unstorStat = unstorStat;
	}
	public String getTxspecReg() {
		return txspecReg;
	}
	public void setTxspecReg(String txspecReg) {
		this.txspecReg = txspecReg;
	}
	public String getTxspecStat() {
		return txspecStat;
	}
	public void setTxspecStat(String txspecStat) {
		this.txspecStat = txspecStat;
	}
	public String getStockMove() {
		return stockMove;
	}
	public void setStockMove(String stockMove) {
		this.stockMove = stockMove;
	}
	public String getRecoverReg() {
		return recoverReg;
	}
	public void setRecoverReg(String recoverReg) {
		this.recoverReg = recoverReg;
	}
	public String getRecoverStat() {
		return recoverStat;
	}
	public void setRecoverStat(String recoverStat) {
		this.recoverStat = recoverStat;
	}
	public String getRecoverSpecStat() {
		return recoverSpecStat;
	}
	public void setRecoverSpecStat(String recoverSpecStat) {
		this.recoverSpecStat = recoverSpecStat;
	}
	

}
