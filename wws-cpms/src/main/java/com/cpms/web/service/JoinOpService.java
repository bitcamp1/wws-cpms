package com.cpms.web.service;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.JoinOpDto;

public interface JoinOpService {


	List<JoinOpDto> getTariffList(String telecom, String title)throws Exception;
	int registJoinOp(HashMap<String, String> paramMap)throws Exception;
	List<JoinOpDto> getJoinOpList(HashMap<String, String> paramMap)throws Exception;
}
