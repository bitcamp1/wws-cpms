package com.cpms.web.dao;

import java.util.HashMap;
import java.util.List;

import com.cpms.web.dto.ReceiptDto;

public interface ReceiptDao {

	int countReceipts()throws Exception;

	List<ReceiptDto> selectAllReceipts(HashMap<String, Integer> paramMap)throws Exception;

}
