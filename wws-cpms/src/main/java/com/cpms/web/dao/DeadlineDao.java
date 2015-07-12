package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.DeadlineDto;

public interface DeadlineDao {

	int countDeadlines()throws Exception;

	List<DeadlineDto> selectAllDeadlines(HashMap<String, Integer> paramMap);

}
