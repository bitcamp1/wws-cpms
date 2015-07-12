package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.DeadlineDao;
import com.cpms.web.dao.DeliveryDao;
import com.cpms.web.dto.DeadlineDto;
import com.cpms.web.dto.DeliveryDto;
@Repository
public class DeliveryDaoImpl implements DeliveryDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();

	@Override
	public int countDeliveries() throws Exception {
		return session.selectOne("DeliveryMapper.countDeliveries");
	}

	@Override
	public List<DeliveryDto> selectAllDeliveries(HashMap<String,Integer>paramMap) throws Exception {
		return session.selectList("DeliveryMapper.selectAllDeliveries",paramMap);
	}
	

	

}
