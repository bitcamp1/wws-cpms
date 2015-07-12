package com.cpms.web.service;

import java.util.List;

import com.cpms.web.dto.DeadlineDto;

public interface DeadlineService {

	int getDeadlineCount()throws Exception;

	List<DeadlineDto> getDeadlineList(int page, int rows)throws Exception;

}
