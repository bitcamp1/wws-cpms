package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.aspectj.weaver.ast.HasAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.JoinOpDao;
import com.cpms.web.dto.JoinOpDto;
import com.cpms.web.service.JoinOpService;
@Service
public class JoinOpServiceImpl implements JoinOpService{
	@Autowired
	JoinOpDao joinOpDao;
	@Override
	public List<JoinOpDto> getTariffList(String telecom, String title)
			throws Exception {
		HashMap<String, String> paramMap = new HashMap<>();
		paramMap.put("telecom",telecom);
		paramMap.put("title", title);
		return joinOpDao.getTariffList(paramMap);
	}
	@Override
	public int registJoinOp(HashMap<String, String> paramMap) throws Exception {
		return joinOpDao.registJoinOp(paramMap);
		
	}
	@Override
	public List<JoinOpDto> getJoinOpList(HashMap<String, String> paramMap)
			throws Exception {
		return joinOpDao.getJoinOpList(paramMap);
	}
	

}
