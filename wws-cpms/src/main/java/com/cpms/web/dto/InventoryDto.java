package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class InventoryDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int invSeq;
	private Date invRegDate;
	private int importNum;
	private int exportNum;
	private int returnNum;
	private int poorNum;
	private int lossNum;
	private int stockNum;
	private String txInvoice;
	private String returnInvoice;
	private int shopSeq; //소속
	public int getInvSeq() {
		return invSeq;
	}
	public void setInvSeq(int invSeq) {
		this.invSeq = invSeq;
	}
	public Date getInvRegDate() {
		return invRegDate;
	}
	public void setInvRegDate(Date invRegDate) {
		this.invRegDate = invRegDate;
	}
	public int getImportNum() {
		return importNum;
	}
	public void setImportNum(int importNum) {
		this.importNum = importNum;
	}
	public int getExportNum() {
		return exportNum;
	}
	public void setExportNum(int exportNum) {
		this.exportNum = exportNum;
	}
	public int getReturnNum() {
		return returnNum;
	}
	public void setReturnNum(int returnNum) {
		this.returnNum = returnNum;
	}
	public int getPoorNum() {
		return poorNum;
	}
	public void setPoorNum(int poorNum) {
		this.poorNum = poorNum;
	}
	public int getLossNum() {
		return lossNum;
	}
	public void setLossNum(int lossNum) {
		this.lossNum = lossNum;
	}
	public int getStockNum() {
		return stockNum;
	}
	public void setStockNum(int stockNum) {
		this.stockNum = stockNum;
	}
	public String getTxInvoice() {
		return txInvoice;
	}
	public void setTxInvoice(String txInvoice) {
		this.txInvoice = txInvoice;
	}
	public String getReturnInvoice() {
		return returnInvoice;
	}
	public void setReturnInvoice(String returnInvoice) {
		this.returnInvoice = returnInvoice;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	
	
	
	
}
