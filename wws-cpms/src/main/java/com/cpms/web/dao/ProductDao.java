package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.InventoryDto;
import com.cpms.web.dto.PhoneDto;

public interface ProductDao {

	int countPhones()throws Exception;

	List<PhoneDto> selectAllPhones(HashMap<String, Integer> paramMap)throws Exception;

	int countInventories()throws Exception;

	List<InventoryDto> selectAllInventories(HashMap<String, Integer> paramMap)throws Exception;

	void addPhone(PhoneDto dto)throws Exception;

}
