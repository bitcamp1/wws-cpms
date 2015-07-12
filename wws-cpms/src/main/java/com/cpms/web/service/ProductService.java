package com.cpms.web.service;

import java.util.List;

import com.cpms.web.dto.InventoryDto;
import com.cpms.web.dto.PhoneDto;

public interface ProductService {

	int getCount()throws Exception;

	List<PhoneDto> getPhoneList(int page, int rows)throws Exception;

	List<InventoryDto> getInventoryList(int page, int rows)throws Exception;

	int getInventoryCount()throws Exception;

	void addPhone(PhoneDto dto)throws Exception;

}
