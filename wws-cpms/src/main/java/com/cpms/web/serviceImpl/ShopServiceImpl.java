package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.ShopDao;
import com.cpms.web.data.ShopJusoData;
import com.cpms.web.dto.EmployeeDto;
import com.cpms.web.dto.ShopDto;
import com.cpms.web.service.ShopService;
@Service
public class ShopServiceImpl implements ShopService{
	@Autowired
	private ShopDao shopDao;
	@Override
	public int getSubShopCount() throws Exception {
		return shopDao.countSubShops();
	}

	@Override
	public List<ShopDto> getSubShopList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return shopDao.selectAllSubShops(paramMap);
	}

	@Override
	public int getEmployeeCount() throws Exception {
		return shopDao.countEmployees();
	}

	@Override
	public List<EmployeeDto> getEmployeeList(int page, int rows)
			throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return shopDao.selectAllEmployees(paramMap);
	}

	@Override
	public int getShopSeqByName(String shopName) throws Exception {
		
		return shopDao.selectShopSeqByName(shopName);
	}


	@Override
	public int existsShopSeq(int shopSeq, String shopPw) throws Exception {
		ShopDto shopDto = new ShopDto();
		shopDto.setShopSeq(shopSeq);
		shopDto.setShopPw(shopPw);
		return shopDao.existsShopSeq(shopDto);
	}

	@Override
	public ShopDto getShopBySeq(int shopSeq) throws Exception {
		
		return shopDao.getShopBySeq(shopSeq);
	}

	@Override
	public ShopJusoData getShopDetail(int id) throws Exception {
		ShopJusoData d = new ShopJusoData();
		d = shopDao.getShopDetail(id);
		System.out.println("d:"+d);
		return d;
	}

}
