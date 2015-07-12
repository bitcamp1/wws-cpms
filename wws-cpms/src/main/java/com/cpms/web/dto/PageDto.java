package com.cpms.web.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class PageDto<T extends Serializable> { 
	//Page wrapper class
	private int page; // 현재페이지
	private int records; // 레코드수
	private int total; // 총페이지
	private List<T> rows; //실제 데이터
	
	public PageDto() {}

	public PageDto(int page, int records, int total, List<T> rows) {
		super();
		this.page = page;
		this.records = records;
		this.total = total;
		this.rows = rows;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRecords() {
		return records;
	}

	public void setRecords(int records) {
		this.records = records;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
	
	
	
	
	
	
}
