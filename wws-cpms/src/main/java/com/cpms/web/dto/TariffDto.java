package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TariffDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int tffSeq;
	private Date tffRegDate;
	
	
//셀렉	
	private String authMethod; // 인증방법 : 일련번호, 통장번호 
	
	private String halinType; //할인유형 : 1.요금약정, 2.무약정
	private String yaksung; //약정: 할부지원, 기본약정
	private String joinType; //가입유형 : 신규, MNP
	private String bosangLeve; //보상등급 : 일반  , VIP
	
	
	private String tffName; //요금제이름: 59요금, 69요금
	private String joinFee; // 가입비 : 1.선납 2.후납 3.면제
	
	private String halbuWol;//할부개월 : 12, 24, 36
	private String usimPaytime; // 유심값 지불 형태 선납 후납 면제
	private String bugaService; //부가서비스 : 없음, 컬러링 
//완전 text
	private String halbuKumak; //할부금액
	private String halbuWonkum; //할부원금
	
	private int custSeq;
	
	
	public int getTffSeq() {
		return tffSeq;
	}
	public void setTffSeq(int tffSeq) {
		this.tffSeq = tffSeq;
	}
	
	public Date getTffRegDate() {
		return tffRegDate;
	}
	public void setTffRegDate(Date tffRegDate) {
		this.tffRegDate = tffRegDate;
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
	
	public String getBosangLeve() {
		return bosangLeve;
	}
	public void setBosangLeve(String bosangLeve) {
		this.bosangLeve = bosangLeve;
	}
	public String getBugaService() {
		return bugaService;
	}
	public void setBugaService(String bugaService) {
		this.bugaService = bugaService;
	}
	public String getYaksung() {
		return yaksung;
	}
	public void setYaksung(String yaksung) {
		this.yaksung = yaksung;
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
	public String getAuthMethod() {
		return authMethod;
	}
	public void setAuthMethod(String authMethod) {
		this.authMethod = authMethod;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	public String getUsimPaytime() {
		return usimPaytime;
	}
	public void setUsimPaytime(String usimPaytime) {
		this.usimPaytime = usimPaytime;
	}
	
	
	
	
	
}
