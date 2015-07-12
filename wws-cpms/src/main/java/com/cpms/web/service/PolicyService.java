package com.cpms.web.service;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.CommissionDto;
import com.cpms.web.dto.RebateDto;

public interface PolicyService {

	int getRebateCount()throws Exception;

	List<RebateDto> getRebateList(int page, int rows)throws Exception;

	int getDeductCount()throws Exception;

	List<RebateDto> getDeductList(int page, int rows)throws Exception;

	int getCommissionCount()throws Exception;

	List<CommissionDto> getCommissionList(int page, int rows)throws Exception;

	

}
