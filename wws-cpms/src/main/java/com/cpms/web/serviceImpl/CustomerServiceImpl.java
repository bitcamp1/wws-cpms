package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.CustomerDao;
import com.cpms.web.data.JoinData;
import com.cpms.web.dto.CustomerDto;
import com.cpms.web.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerDao customerDao;
	@Override
	public List<CustomerDto> getCustomerList(int page, int rows) throws Exception {
		HashMap<String,Integer> paramMap = new HashMap<String,Integer>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx + rows) -1);
		return customerDao.selectAllCustomers(paramMap);
	}
	@Override
	public int getCustomerCount() throws Exception {
		
		return customerDao.countCustomers();
	}
	@Override
	public JoinData getCustDetail(int id) throws Exception {
		return customerDao.getCustDetail(id);
	}
	@Override
	public int inputCustData(CustomerDto cust) throws Exception {
		int lastInsertCustSeq = customerDao.inputCustData(cust);
		return lastInsertCustSeq;
		
	}

}
