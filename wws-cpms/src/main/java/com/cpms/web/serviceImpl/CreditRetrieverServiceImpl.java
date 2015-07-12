package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cpms.web.dao.CreditRetrieverDao;
import com.cpms.web.dto.CreditRetrieverDto;
import com.cpms.web.service.CreditRetrieverService;
@Service
public class CreditRetrieverServiceImpl implements CreditRetrieverService{
	@Autowired
	private CreditRetrieverDao creditRetrieverDao;
	@Override
	public int getCreditRetrieverCount()throws Exception {
		return creditRetrieverDao.countCreditRetrievers();
	}

	@Override
	public List<CreditRetrieverDto> getCreditRetriverList(int page, int rows) throws Exception{
		HashMap<String, Integer>paramMap = new HashMap<String, Integer>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx + rows) -1);
		return creditRetrieverDao.selectAllCreditRetrievers(paramMap);
	}

	@Override
	public int getRequestCount() throws Exception {
		return creditRetrieverDao.countRequests();
	}

	@Override
	public List<CreditRetrieverDto> getRequestList(int page, int rows)
			throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx + rows)-1);
		return creditRetrieverDao.selectAllRequests(paramMap);
	}

	@Override
	public void writeCreditRetriever(CreditRetrieverDto creditRetrieverDto) throws Exception {
		System.out.println("신용조회번호"+creditRetrieverDto);
		creditRetrieverDao.insertCreditRetriever(creditRetrieverDto);
		
	}

	@Override
	public int changeCreditRetriever(HashMap<String, String>editMap) throws Exception {
		return creditRetrieverDao.updateCreditRetriever(editMap);
	}

	@Override
	public void deleteCreditRetriever(int id) throws Exception {
		creditRetrieverDao.deleteCreditRetriever(id);
		
	}

	@Override
	public int editCredResult(HashMap<String, String> editMap) throws Exception {
		return creditRetrieverDao.editCredResult(editMap);
	}

	@Override
	public int editCredManage(HashMap<String, String> editMap) throws Exception {
		return creditRetrieverDao.editCredManage(editMap);
	}

	@Override
	public int editCredNote(HashMap<String, String> editMap) throws Exception {
		return creditRetrieverDao.editCredNote(editMap);
	}

	@Override
	public List<CreditRetrieverDto> getRequestListBySeq(int page, int rows,
			int id) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<String, Integer>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx + rows) -1);
		paramMap.put("shopSeq", id);
		return creditRetrieverDao.getRequestListBySeq(paramMap);
	}

}
