package com.cpms.web.dto;

import java.io.Serializable;

public class OtherDto implements Serializable{
	private static final long serialVersionUID = 1L;
	private int o_Seq;
	private String o_telecom; // 예전 통신사
	private String o_telnum; //예전 번호
	private String o_hopeNum; //희망번호
	private String o_bohoja;//고객이 미성년자일경우
	private String o_applier;//신청인 ..고객명과 다를때 
	private String o_memo; //기타 메모
	private String o_mibiDoc; // 미비서류
	private int custSeq; // 관계자
	
	public int getO_Seq() {
		return o_Seq;
	}
	public void setO_Seq(int o_Seq) {
		this.o_Seq = o_Seq;
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
	
	public String getO_hopeNum() {
		return o_hopeNum;
	}
	public void setO_hopeNum(String o_hopeNum) {
		this.o_hopeNum = o_hopeNum;
	}

	public String getO_mibiDoc() {
		return o_mibiDoc;
	}
	public void setO_mibiDoc(String o_mibiDoc) {
		this.o_mibiDoc = o_mibiDoc;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	
	
	
	
	
	
	

}
