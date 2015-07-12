package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.ProductDao;
import com.cpms.web.dto.InventoryDto;
import com.cpms.web.dto.PhoneDto;
import com.cpms.web.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;
	@Override
	public int getCount() throws Exception {
		return productDao.countPhones();
	}

	@Override
	public List<PhoneDto> getPhoneList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit",(startIdx + rows)-1);
		return productDao.selectAllPhones(paramMap);
	}

	@Override
	public List<InventoryDto> getInventoryList(int page, int rows)
			throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit",(startIdx+rows)-1);
		return productDao.selectAllInventories(paramMap);
	}

	@Override
	public int getInventoryCount() throws Exception {
		return productDao.countInventories();
	}

	@Override
	public void addPhone(PhoneDto dto) throws Exception {
		 productDao.addPhone(dto);
		
	}


}
