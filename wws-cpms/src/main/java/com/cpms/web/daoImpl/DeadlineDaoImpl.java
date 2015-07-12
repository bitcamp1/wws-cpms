package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dto.DeadlineDto;
@Repository
public class DeadlineDaoImpl implements com.cpms.web.dao.DeadlineDao {
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	@Override
	public int countDeadlines() throws Exception {
		return session.selectOne("DeadlineMapper.countDeadlines");
	}

	@Override
	public List<DeadlineDto> selectAllDeadlines(HashMap<String, Integer>paramMap){
			
		
		return session.selectList("DeadlineMapper.selectAllDeadlines",paramMap);
	}

	

}
