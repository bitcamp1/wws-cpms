package com.cpms.web.service;

import java.util.List;

import com.cpms.web.dto.DeliveryDto;

public interface DeliveryService {

	int getDeliveryCount()throws Exception;

	List<DeliveryDto> getDeliveryList(int page, int rows)throws Exception;

}
