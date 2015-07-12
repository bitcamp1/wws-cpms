package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cpms.web.dto.CreditRetrieverDto;

@Transactional(propagation = Propagation.REQUIRED,rollbackFor={Exception.class})
public interface CreditRetrieverDao {

	int countCreditRetrievers() throws Exception;

	List<CreditRetrieverDto> selectAllCreditRetrievers(HashMap<String, Integer> paramMap) throws Exception;

	int countRequests()throws Exception;

	List<CreditRetrieverDto> selectAllRequests(HashMap<String, Integer> paramMap)throws Exception;

	void insertCreditRetriever(CreditRetrieverDto creditRetrieverDto)throws Exception;

	int updateCreditRetriever(HashMap<String,String>editMap)throws Exception;

	void deleteCreditRetriever(int id)throws Exception;

	int editCredResult(HashMap<String, String> editMap)throws Exception;

	int editCredManage(HashMap<String, String> editMap)throws Exception;

	int editCredNote(HashMap<String, String> editMap)throws Exception;

	List<CreditRetrieverDto> getRequestListBySeq(
			HashMap<String, Integer> paramMap)throws Exception;

}
