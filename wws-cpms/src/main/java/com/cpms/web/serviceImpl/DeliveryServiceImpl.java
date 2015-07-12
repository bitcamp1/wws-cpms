package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.DeliveryDao;
import com.cpms.web.dto.DeliveryDto;
import com.cpms.web.service.DeliveryService;
@Service
public class DeliveryServiceImpl implements DeliveryService{
	@Autowired
	private DeliveryDao deliveryDao;
	@Override
	public int getDeliveryCount() throws Exception {
		return deliveryDao.countDeliveries();
	}

	@Override
	public List<DeliveryDto> getDeliveryList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<String,Integer>();
		int startIdx=(page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return deliveryDao.selectAllDeliveries(paramMap);
	}

	

}
