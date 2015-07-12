package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class PolicyDto implements Serializable {

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private String telName; //통신사명
	private String policy;//판매코드:통신사에서 제공한 정책명.."SK20140306삼성"
	
	
	//셀렉	
		private String authMethod; // 인증방법 : 일련번호, 통장번호 
		
		private String halinType; //할인유형 : 1.요금약정, 2.무약정
		private String yaksung; //약정: 할부지원, 기본약정
		private String joinType; //가입유형 : 신규, MNP
		private String bosangLeve; //보상등급 : 일반  , VIP
		
		
		private String tffName; //요금제이름: 59요금, 69요금
		private String joinFee; // 가입비 : 1.선납 2.후납 3.면제
		
		private String halbuWol;//할부개월 : 12, 24, 36
		
		private String bugaService; //부가서비스 : 없음, 컬러링 
		public String getTelName() {
			return telName;
		}
		public void setTelName(String telName) {
			this.telName = telName;
		}
		public String getPolicy() {
			return policy;
		}
		public void setPolicy(String policy) {
			this.policy = policy;
		}
		public String getAuthMethod() {
			return authMethod;
		}
		public void setAuthMethod(String authMethod) {
			this.authMethod = authMethod;
		}
		public String getHalinType() {
			return halinType;
		}
		public void setHalinType(String halinType) {
			this.halinType = halinType;
		}
		public String getYaksung() {
			return yaksung;
		}
		public void setYaksung(String yaksung) {
			this.yaksung = yaksung;
		}
		public String getJoinType() {
			return joinType;
		}
		public void setJoinType(String joinType) {
			this.joinType = joinType;
		}
		public String getBosangLeve() {
			return bosangLeve;
		}
		public void setBosangLeve(String bosangLeve) {
			this.bosangLeve = bosangLeve;
		}
		public String getTffName() {
			return tffName;
		}
		public void setTffName(String tffName) {
			this.tffName = tffName;
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
		public String getBugaService() {
			return bugaService;
		}
		public void setBugaService(String bugaService) {
			this.bugaService = bugaService;
		}
		
		
	

}
