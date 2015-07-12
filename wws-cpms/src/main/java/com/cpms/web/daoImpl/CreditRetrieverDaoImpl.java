package com.cpms.web.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cpms.web.common.SqlSessionFactoryManager;
import com.cpms.web.dao.CreditRetrieverDao;
import com.cpms.web.dto.CreditRetrieverDto;
@Repository
public class CreditRetrieverDaoImpl implements CreditRetrieverDao{
	SqlSession session = SqlSessionFactoryManager.getSqlSessionFactory().openSession(false);
	@Override
	public int countCreditRetrievers() throws Exception{
		return session.selectOne("CreditRetrieverMapper.countCreditRetrievers");
	}

	@Override
	public List<CreditRetrieverDto> selectAllCreditRetrievers(
			HashMap<String, Integer> paramMap)throws Exception {
		
		return session.selectList("CreditRetrieverMapper.selectAllCreditRetrievers",paramMap);
	}

	@Override
	public int countRequests() throws Exception {
		return session.selectOne("CreditRetrieverMapper.countRequests");
	}

	@Override
	public List<CreditRetrieverDto> selectAllRequests(
			HashMap<String, Integer> paramMap) throws Exception{
		return session.selectList("CreditRetrieverMapper.selectAllCreditRetrievers",paramMap);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertCreditRetriever(CreditRetrieverDto creditRetrieverDto)
			throws Exception {
		
			session.insert("CreditRetrieverMapper.insertCreditRetriever",creditRetrieverDto);
			session.commit();
			System.out.println("try_tx서옹");
		
		
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public int updateCreditRetriever(HashMap<String,String>editMap) throws Exception {
		int temp = 0;
		System.out.println("수정tx이전 temp:"+temp);
		temp= session.update("CreditRetrieverMapper.updateCreditRetriever",editMap);
		System.out.println("수정tx 이후 temp:"+temp);
		session.commit();
		return temp;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void deleteCreditRetriever(int id) throws Exception {
		session.delete("CreditRetrieverMapper.deleteCreditRetriever", id);
		session.commit();
		
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public int editCredResult(HashMap<String, String> editMap) throws Exception {
		int temp = 0;
		System.out.println("credResult수정tx이전 temp:"+temp);
		temp= session.update("CreditRetrieverMapper.editCredResult",editMap);
		System.out.println("credResult수정tx 이후 temp:"+temp);
		session.commit();
		return temp;
	}

	@Override
	public int editCredManage(HashMap<String, String> editMap) throws Exception {
		int temp = 0;
		System.out.println("credResult수정tx이전 temp:"+temp);
		temp= session.update("CreditRetrieverMapper.editCredManage",editMap);
		System.out.println("credResult수정tx 이후 temp:"+temp);
		session.commit();
		return temp;
	}

	@Override
	public int editCredNote(HashMap<String, String> editMap) throws Exception {
		int temp = 0;
		System.out.println("credResult수정tx이전 temp:"+temp);
		temp= session.update("CreditRetrieverMapper.editCredNote",editMap);
		System.out.println("credResult수정tx 이후 temp:"+temp);
		session.commit();
		return temp;
	}

	@Override
	public List<CreditRetrieverDto> getRequestListBySeq(
			HashMap<String, Integer> paramMap) throws Exception {
		return session.selectList("CreditRetrieverMapper.getRequestListBySeq",paramMap);
	}

}
