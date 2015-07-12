package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.JoinOpDto;

public interface JoinOpDao {

	List<JoinOpDto> getTariffList(HashMap<String, String> paramMap)throws Exception;
	int registJoinOp(HashMap<String, String> paramMap)throws Exception;
	List<JoinOpDto> getJoinOpList(HashMap<String, String> paramMap)throws Exception;
}
