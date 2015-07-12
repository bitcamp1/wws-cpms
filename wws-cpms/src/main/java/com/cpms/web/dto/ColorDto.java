package com.cpms.web.dto;

import java.io.Serializable;

public class ColorDto implements Serializable{

	private static final long serialVersionUID = 1L;
	private int colorSeq;
	private String colorName;
	private String colorCode;
	public int getColorSeq() {
		return colorSeq;
	}
	public void setColorSeq(int colorSeq) {
		this.colorSeq = colorSeq;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	public String getColorCode() {
		return colorCode;
	}
	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}
	
	

}
