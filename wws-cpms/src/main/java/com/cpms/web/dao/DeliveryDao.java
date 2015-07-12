package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.DeliveryDto;

public interface DeliveryDao {

	int countDeliveries()throws Exception;

	List<DeliveryDto> selectAllDeliveries(HashMap<String,Integer>paramMap)throws Exception;

}
