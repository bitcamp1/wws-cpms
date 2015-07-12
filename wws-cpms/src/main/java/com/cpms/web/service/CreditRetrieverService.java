package com.cpms.web.service;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.CreditRetrieverDto;


public interface CreditRetrieverService {

	int getCreditRetrieverCount() throws Exception;

	List<CreditRetrieverDto> getCreditRetriverList(int page, int rows) throws Exception;

	int getRequestCount()throws Exception;

	List<CreditRetrieverDto> getRequestList(int page,int rows)throws Exception;

	void writeCreditRetriever(CreditRetrieverDto creditRetrieverDto)throws Exception;

	int changeCreditRetriever(HashMap<String,String>editMap)throws Exception;

	void deleteCreditRetriever(int id)throws Exception;

	int editCredResult(HashMap<String, String> editMap)throws Exception;

	int editCredManage(HashMap<String, String> editMap)throws Exception;

	int editCredNote(HashMap<String, String> editMap)throws Exception;

	List<CreditRetrieverDto> getRequestListBySeq(int page, int rows,int id)throws Exception;


}
