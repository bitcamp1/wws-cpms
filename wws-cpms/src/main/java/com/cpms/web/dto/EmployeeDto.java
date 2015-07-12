
package com.cpms.web.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EmployeeDto implements Serializable{

	private static final long serialVersionUID = 1L;
	static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private int empSeq;
	private Date empRegDate;
	private Date empLog;
	private String empPosition;
	private String empName;
	private String empId;
	private String empPw;
	private String empPhone;
	private String empEmail;
	private String empMemo;
	private int shopSeq; //소속
	public int getEmpSeq() {
		return empSeq;
	}
	public void setEmpSeq(int empSeq) {
		this.empSeq = empSeq;
	}
	
	public Date getEmpRegDate() {
		return empRegDate;
	}
	public void setEmpRegDate(Date empRegDate) {
		this.empRegDate = empRegDate;
	}
	public Date getEmpLog() {
		return empLog;
	}
	public void setEmpLog(Date empLog) {
		this.empLog = empLog;
	}
	public String getEmpPosition() {
		return empPosition;
	}
	public void setEmpPosition(String empPosition) {
		this.empPosition = empPosition;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpPw() {
		return empPw;
	}
	public void setEmpPw(String empPw) {
		this.empPw = empPw;
	}
	public String getEmpPhone() {
		return empPhone;
	}
	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpMemo() {
		return empMemo;
	}
	public void setEmpMemo(String empMemo) {
		this.empMemo = empMemo;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	
	

}
