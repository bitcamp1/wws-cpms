package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.PolicyDao;
import com.cpms.web.dto.CommissionDto;
import com.cpms.web.dto.RebateDto;

@Repository
public class PolicyDaoImpl implements PolicyDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	@Override
	public int getCountRebates() throws Exception {
		return session.selectOne("PolicyMapper.countRebates");
	}

	@Override
	public List<RebateDto> selectAllRebates(HashMap<String,Integer>paramMap) throws Exception {
		return session.selectList("PolicyMapper.selectAllRebates", paramMap);
	}

	@Override
	public int countDeductions() throws Exception {
		return session.selectOne("PolicyMapper.countDeductions");
	}

	@Override
	public List<RebateDto> selectAllDeductions(HashMap<String, Integer> paramMap)
			throws Exception {
		return session.selectList("PolicyMapper.selectAllDeductions",paramMap);
	}

	@Override
	public int countCommissions() throws Exception {
		return session.selectOne("PolicyMapper.countCommissions");
	}

	@Override
	public List<CommissionDto> selectAllCommissions(
			HashMap<String, Integer> paramMap) throws Exception {
		
		return session.selectList("PolicyMapper.selectAllCommissions",paramMap);
	}



}
