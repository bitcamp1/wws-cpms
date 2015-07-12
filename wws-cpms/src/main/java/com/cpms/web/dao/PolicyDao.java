package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.CommissionDto;
import com.cpms.web.dto.RebateDto;

public interface PolicyDao {

	int getCountRebates() throws Exception;

	List<RebateDto> selectAllRebates(HashMap<String,Integer>paramMap)throws Exception;


	int countDeductions()throws Exception;

	List<RebateDto> selectAllDeductions(HashMap<String,Integer>paramMap)throws Exception;

	int countCommissions()throws Exception;

	List<CommissionDto> selectAllCommissions(HashMap<String, Integer> paramMap)throws Exception;

	

}
