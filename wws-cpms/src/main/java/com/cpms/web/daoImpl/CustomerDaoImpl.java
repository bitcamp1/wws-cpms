package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.CustomerDao;
import com.cpms.web.data.JoinData;
import com.cpms.web.dto.CustomerDto;
@Repository
public class CustomerDaoImpl implements CustomerDao {
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession();
	@Override
	public List<CustomerDto> selectAllCustomers(HashMap<String, Integer>paramMap) throws Exception {
		return session.selectList("CustomerMapper.selectAllCustomers",paramMap);
	}

	@Override
	public int countCustomers() throws Exception {
		return session.selectOne("CustomerMapper.countCustomers");
	}

	@Override
	public JoinData getCustDetail(int id) throws Exception {
		return session.selectOne("CustomerMapper.getCustDetail",id);
	}
	
	
	
	@Override
	public int inputCustData(CustomerDto cust) throws Exception {
		session.insert("CustomerMapper.inputCustData", cust);
		String id= String.valueOf(cust.getCustSeq());
		int lastInsertCustSeq = Integer.parseInt(id);
		System.out.println("마지막 등록된 custSeq:"+lastInsertCustSeq);
		session.commit();
		return lastInsertCustSeq;
	}



}
