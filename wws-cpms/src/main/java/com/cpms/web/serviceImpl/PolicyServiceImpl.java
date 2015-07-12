package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.PolicyDao;
import com.cpms.web.dto.CommissionDto;
import com.cpms.web.dto.RebateDto;
import com.cpms.web.service.PolicyService;
@Service
public class PolicyServiceImpl implements PolicyService{
	@Autowired
	private PolicyDao policyDao;
	@Override
	public int getRebateCount() throws Exception {
		return policyDao.getCountRebates();
	}

	@Override
	public List<RebateDto> getRebateList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		
		return policyDao.selectAllRebates(paramMap);
	}

	@Override
	public int getDeductCount() throws Exception {
		return policyDao.countDeductions();
	}

	@Override
	public List<RebateDto> getDeductList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return policyDao.selectAllDeductions(paramMap);
	}

	@Override
	public int getCommissionCount() throws Exception {
		return policyDao.countCommissions();
	}

	@Override
	public List<CommissionDto> getCommissionList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return policyDao.selectAllCommissions(paramMap);
	}

	

}
