package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DeadlineDto implements Serializable {
	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int dlineSeq;
	private Date dlineRegDate;
	private String shopName;
	private String openNew;
	private String openMnp;
	private String openChange;
	private String openReward;
	private String policy;
	private String rebate;
	private String commission;
	private String margin;
	
	
	public Date getDlineRegDate() {
		return dlineRegDate;
	}
	public void setDlineRegDate(Date dlineRegDate) {
		this.dlineRegDate = dlineRegDate;
	}
	public int getDlineSeq() {
		return dlineSeq;
	}
	public void setDlineSeq(int dlineSeq) {
		this.dlineSeq = dlineSeq;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getOpenNew() {
		return openNew;
	}
	public void setOpenNew(String openNew) {
		this.openNew = openNew;
	}
	public String getOpenMnp() {
		return openMnp;
	}
	public void setOpenMnp(String openMnp) {
		this.openMnp = openMnp;
	}
	public String getOpenChange() {
		return openChange;
	}
	public void setOpenChange(String openChange) {
		this.openChange = openChange;
	}
	public String getOpenReward() {
		return openReward;
	}
	public void setOpenReward(String openReward) {
		this.openReward = openReward;
	}
	public String getPolicy() {
		return policy;
	}
	public void setPolicy(String policy) {
		this.policy = policy;
	}
	public String getRebate() {
		return rebate;
	}
	public void setRebate(String rebate) {
		this.rebate = rebate;
	}
	public String getCommission() {
		return commission;
	}
	public void setCommission(String commission) {
		this.commission = commission;
	}
	public String getMargin() {
		return margin;
	}
	public void setMargin(String margin) {
		this.margin = margin;
	}
	
	
}
