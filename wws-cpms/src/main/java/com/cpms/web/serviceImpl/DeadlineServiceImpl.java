package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.DeadlineDao;
import com.cpms.web.dto.DeadlineDto;
import com.cpms.web.service.DeadlineService;

@Service
public class DeadlineServiceImpl implements DeadlineService{
	@Autowired
	private DeadlineDao deadlineDao;
	@Override
	public int getDeadlineCount() throws Exception {
		return deadlineDao.countDeadlines();
	}

	@Override
	public List<DeadlineDto> getDeadlineList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<String,Integer>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return deadlineDao.selectAllDeadlines(paramMap);
	}

	

}
