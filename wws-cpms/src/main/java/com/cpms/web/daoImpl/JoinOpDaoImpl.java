package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.JoinOpDao;
import com.cpms.web.dto.JoinOpDto;
@Repository
public class JoinOpDaoImpl implements JoinOpDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	@Override
	public List<JoinOpDto> getTariffList(HashMap<String, String> paramMap)
			throws Exception {
		System.out.println("dao param:"+paramMap);
		return session.selectList("JoinOpMapper.getTariffList",paramMap);
	}
	@Override
	public int registJoinOp(HashMap<String, String> paramMap) throws Exception {
		return session.insert("JoinOpMapper.registJoinOp",paramMap);
	}
	@Override
	public List<JoinOpDto> getJoinOpList(HashMap<String, String> paramMap)
			throws Exception {
		return session.selectList("JoinOpMapper.getJoinOpList",paramMap);
	}

}
