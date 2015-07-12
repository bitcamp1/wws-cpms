package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.ProductDao;
import com.cpms.web.dto.InventoryDto;
import com.cpms.web.dto.PhoneDto;
@Repository
public class ProductDaoImpl implements ProductDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	
	@Override
	public int countPhones() throws Exception {
		return session.selectOne("ProductMapper.countPhones");
	}

	@Override
	public List<PhoneDto> selectAllPhones(HashMap<String, Integer> paramMap)
			throws Exception {
		return session.selectList("ProductMapper.selectAllPhones",paramMap);
	}

	@Override
	public int countInventories() throws Exception {
		return session.selectOne("ProductMapper.countInventories");
	}

	@Override
	public List<InventoryDto> selectAllInventories(
			HashMap<String, Integer> paramMap) throws Exception {
		return session.selectList("ProductMapper.selectAllInventories",paramMap);
	}

	@Override
	@Transactional
	public void addPhone(PhoneDto dto) throws Exception {
		
		 session.insert("ProductMapper.addPhone",dto);
		 session.commit();
		
	}

	

}
