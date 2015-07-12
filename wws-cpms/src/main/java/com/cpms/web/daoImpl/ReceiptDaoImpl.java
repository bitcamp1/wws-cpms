package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.ReceiptDao;
import com.cpms.web.dto.ReceiptDto;
@Repository
public class ReceiptDaoImpl implements ReceiptDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	
	@Override
	public int countReceipts() throws Exception {
		return session.selectOne("ReceiptMapper.countReceipts");
	}

	@Override
	public List<ReceiptDto> selectAllReceipts(HashMap<String, Integer> paramMap)
			throws Exception {
		return session.selectList("ReceiptMapper.selectAllReceipts",paramMap);
	}

}
