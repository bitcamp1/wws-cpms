package com.cpms.web.service;

import java.util.List;

import com.cpms.web.data.JoinData;
import com.cpms.web.dto.CustomerDto;


public interface CustomerService {
	List<CustomerDto> getCustomerList(int page, int max) throws Exception;
	int getCustomerCount() throws Exception;
	JoinData getCustDetail(int id)throws Exception;
	int inputCustData(CustomerDto cust) throws Exception;
}
