package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.data.JoinData;
import com.cpms.web.dto.CustomerDto;

public interface CustomerDao {
	
	List<CustomerDto> selectAllCustomers(HashMap<String, Integer>paramMap)throws Exception;
	int countCustomers()throws Exception;
	JoinData getCustDetail(int id)throws Exception;
	int inputCustData(CustomerDto cust)throws Exception;
}
