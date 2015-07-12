package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.data.ShopJusoData;
import com.cpms.web.dto.EmployeeDto;
import com.cpms.web.dto.ShopDto;

public interface ShopDao {

	int countSubShops()throws Exception;

	List<ShopDto> selectAllSubShops(HashMap<String, Integer> paramMap)throws Exception;

	int countEmployees()throws Exception;

	List<EmployeeDto> selectAllEmployees(HashMap<String, Integer> paramMap)throws Exception;

	int selectShopSeqByName(String shopName)throws Exception;


	int existsShopSeq(ShopDto shopDto);

	ShopDto getShopBySeq(int shopSeq)throws Exception;

	ShopJusoData getShopDetail(int id)throws Exception;

}
