package com.cpms.web.data;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class JoinData implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int custSeq;
	private Date custRegDate;
	private String custName;
	private String custPhone;
	private String custNum;
	private String custTelnum;
	private String custBirth;
	private String doCity;
	private String siGuGun;
	private String dong;
	private String doroName;
	private String jusoDetail;
	private String zipCode;
	private String shopName;
	private String phoneBrand;
	private String phoneName;
	private String phoneModel;
	private String phonePrice;
	private String phoneColor;
	private String telecom;
	private String usimModel;
	private String usimNum;
	private String usimPaytime;
	private String usimPrice;
	private String serialNum;
	private String invoiceNum;
	private String deliType;
	private String d_doCity;
	private String d_siGuGun;
	private String d_dong;
	private String d_doroName;
	private String d_jusoDetail;
	private String d_zipCode;
	private String payType;
	private String accOwner;
	private String accOwnerCustNum;
	private String bankName;
	private String accNum;
	private String cardSa;
	private String cardOwner;
	private String cardNum;
	private String cardYYmm;
	private String tffName;
	private String joinType;
	private String bugaService;
	private String joinFee;
	private String halbuWol;
	private String bosangLevel;
	private String yakjung;
	private String mnpInj;
	private String halinType;
	private String halbuKumak;
	private String halbuWonkum;
	private String o_telecom;
	private String o_telnum;
	private String o_hopeNum;
	private String o_bohoja;
	private String o_applier;
	private String o_memo;
	private String o_mibiDoc;
	private String o_injNum;
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	public Date getCustRegDate() {
		return custRegDate;
	}
	public void setCustRegDate(Date custRegDate) {
		this.custRegDate = custRegDate;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustPhone() {
		return custPhone;
	}
	public void setCustPhone(String custPhone) {
		this.custPhone = custPhone;
	}
	public String getCustNum() {
		return custNum;
	}
	public void setCustNum(String custNum) {
		this.custNum = custNum;
	}
	public String getCustTelnum() {
		return custTelnum;
	}
	public void setCustTelnum(String custTelnum) {
		this.custTelnum = custTelnum;
	}
	public String getCustBirth() {
		return custBirth;
	}
	public void setCustBirth(String custBirth) {
		this.custBirth = custBirth;
	}
	public String getDoCity() {
		return doCity;
	}
	public void setDoCity(String doCity) {
		this.doCity = doCity;
	}
	public String getSiGuGun() {
		return siGuGun;
	}
	public void setSiGuGun(String siGuGun) {
		this.siGuGun = siGuGun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getDoroName() {
		return doroName;
	}
	public void setDoroName(String doroName) {
		this.doroName = doroName;
	}
	public String getJusoDetail() {
		return jusoDetail;
	}
	public void setJusoDetail(String jusoDetail) {
		this.jusoDetail = jusoDetail;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getPhoneBrand() {
		return phoneBrand;
	}
	public void setPhoneBrand(String phoneBrand) {
		this.phoneBrand = phoneBrand;
	}
	public String getPhoneName() {
		return phoneName;
	}
	public void setPhoneName(String phoneName) {
		this.phoneName = phoneName;
	}
	public String getPhoneModel() {
		return phoneModel;
	}
	public void setPhoneModel(String phoneModel) {
		this.phoneModel = phoneModel;
	}
	public String getPhonePrice() {
		return phonePrice;
	}
	public void setPhonePrice(String phonePrice) {
		this.phonePrice = phonePrice;
	}
	public String getPhoneColor() {
		return phoneColor;
	}
	public void setPhoneColor(String phoneColor) {
		this.phoneColor = phoneColor;
	}
	public String getTelecom() {
		return telecom;
	}
	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}
	public String getUsimModel() {
		return usimModel;
	}
	public void setUsimModel(String usimModel) {
		this.usimModel = usimModel;
	}
	public String getUsimNum() {
		return usimNum;
	}
	public void setUsimNum(String usimNum) {
		this.usimNum = usimNum;
	}
	public String getUsimPaytime() {
		return usimPaytime;
	}
	public void setUsimPaytime(String usimPaytime) {
		this.usimPaytime = usimPaytime;
	}
	public String getUsimPrice() {
		return usimPrice;
	}
	public void setUsimPrice(String usimPrice) {
		this.usimPrice = usimPrice;
	}
	public String getSerialNum() {
		return serialNum;
	}
	public void setSerialNum(String serialNum) {
		this.serialNum = serialNum;
	}
	public String getInvoiceNum() {
		return invoiceNum;
	}
	public void setInvoiceNum(String invoiceNum) {
		this.invoiceNum = invoiceNum;
	}
	public String getDeliType() {
		return deliType;
	}
	public void setDeliType(String deliType) {
		this.deliType = deliType;
	}
	public String getD_doCity() {
		return d_doCity;
	}
	public void setD_doCity(String d_doCity) {
		this.d_doCity = d_doCity;
	}
	public String getD_siGuGun() {
		return d_siGuGun;
	}
	public void setD_siGuGun(String d_siGuGun) {
		this.d_siGuGun = d_siGuGun;
	}
	public String getD_dong() {
		return d_dong;
	}
	public void setD_dong(String d_dong) {
		this.d_dong = d_dong;
	}
	public String getD_doroName() {
		return d_doroName;
	}
	public void setD_doroName(String d_doroName) {
		this.d_doroName = d_doroName;
	}
	public String getD_jusoDetail() {
		return d_jusoDetail;
	}
	public void setD_jusoDetail(String d_jusoDetail) {
		this.d_jusoDetail = d_jusoDetail;
	}
	public String getD_zipCode() {
		return d_zipCode;
	}
	public void setD_zipCode(String d_zipCode) {
		this.d_zipCode = d_zipCode;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public String getAccOwner() {
		return accOwner;
	}
	public void setAccOwner(String accOwner) {
		this.accOwner = accOwner;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getAccNum() {
		return accNum;
	}
	public void setAccNum(String accNum) {
		this.accNum = accNum;
	}
	public String getCardSa() {
		return cardSa;
	}
	public void setCardSa(String cardSa) {
		this.cardSa = cardSa;
	}
	public String getCardOwner() {
		return cardOwner;
	}
	public void setCardOwner(String cardOwner) {
		this.cardOwner = cardOwner;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getCardYYmm() {
		return cardYYmm;
	}
	public void setCardYYmm(String cardYYmm) {
		this.cardYYmm = cardYYmm;
	}
	public String getTffName() {
		return tffName;
	}
	public void setTffName(String tffName) {
		this.tffName = tffName;
	}
	public String getJoinType() {
		return joinType;
	}
	public void setJoinType(String joinType) {
		this.joinType = joinType;
	}
	public String getJoinFee() {
		return joinFee;
	}
	public void setJoinFee(String joinFee) {
		this.joinFee = joinFee;
	}
	public String getHalbuWol() {
		return halbuWol;
	}
	public void setHalbuWol(String halbuWol) {
		this.halbuWol = halbuWol;
	}
	public String getBosangLevel() {
		return bosangLevel;
	}
	public void setBosangLevel(String bosangLevel) {
		this.bosangLevel = bosangLevel;
	}
	public String getYakjung() {
		return yakjung;
	}
	public void setYakjung(String yakjung) {
		this.yakjung = yakjung;
	}
	public String getMnpInj() {
		return mnpInj;
	}
	public void setMnpInj(String mnpInj) {
		this.mnpInj = mnpInj;
	}
	public String getHalinType() {
		return halinType;
	}
	public void setHalinType(String halinType) {
		this.halinType = halinType;
	}
	public String getHalbuKumak() {
		return halbuKumak;
	}
	public void setHalbuKumak(String halbuKumak) {
		this.halbuKumak = halbuKumak;
	}
	public String getHalbuWonkum() {
		return halbuWonkum;
	}
	public void setHalbuWonkum(String halbuWonkum) {
		this.halbuWonkum = halbuWonkum;
	}
	public String getO_telecom() {
		return o_telecom;
	}
	public void setO_telecom(String o_telecom) {
		this.o_telecom = o_telecom;
	}
	public String getO_telnum() {
		return o_telnum;
	}
	public void setO_telnum(String o_telnum) {
		this.o_telnum = o_telnum;
	}
	public String getO_hopeNum() {
		return o_hopeNum;
	}
	public void setO_hopeNum(String o_hopeNum) {
		this.o_hopeNum = o_hopeNum;
	}
	public String getO_bohoja() {
		return o_bohoja;
	}
	public void setO_bohoja(String o_bohoja) {
		this.o_bohoja = o_bohoja;
	}
	public String getO_applier() {
		return o_applier;
	}
	public void setO_applier(String o_applier) {
		this.o_applier = o_applier;
	}
	public String getO_memo() {
		return o_memo;
	}
	public void setO_memo(String o_memo) {
		this.o_memo = o_memo;
	}
	public String getO_mibiDoc() {
		return o_mibiDoc;
	}
	public void setO_mibiDoc(String o_mibiDoc) {
		this.o_mibiDoc = o_mibiDoc;
	}
	public String getO_injNum() {
		return o_injNum;
	}
	public void setO_injNum(String o_injNum) {
		this.o_injNum = o_injNum;
	}
	public String getAccOwnerCustNum() {
		return accOwnerCustNum;
	}
	public void setAccOwnerCustNum(String accOwnerCustNum) {
		this.accOwnerCustNum = accOwnerCustNum;
	}
	public String getBugaService() {
		return bugaService;
	}
	public void setBugaService(String bugaService) {
		this.bugaService = bugaService;
	}
	
	
	
	
	

}
