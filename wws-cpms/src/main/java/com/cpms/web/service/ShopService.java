package com.cpms.web.service;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.data.ShopJusoData;
import com.cpms.web.dto.EmployeeDto;
import com.cpms.web.dto.ShopDto;

public interface ShopService {

	int getSubShopCount()throws Exception;

	List<ShopDto> getSubShopList(int page, int rows)throws Exception;

	int getEmployeeCount()throws Exception;

	List<EmployeeDto> getEmployeeList(int page, int rows)throws Exception;

	int getShopSeqByName(String shopName)throws Exception;


	int existsShopSeq(int shopSeq, String shopPw)throws Exception;

	ShopDto getShopBySeq(int shopSeq)throws Exception;

	ShopJusoData getShopDetail(int id)throws Exception;

}
