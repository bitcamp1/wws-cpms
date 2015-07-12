package com.cpms.web.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpms.web.dao.ReceiptDao;
import com.cpms.web.dto.ReceiptDto;
import com.cpms.web.service.ReceiptService;
@Service
public class ReceiptServiceImpl implements ReceiptService {
	@Autowired
	private ReceiptDao receiptDao;
	@Override
	public int getReceiptCount() throws Exception {
		return receiptDao.countReceipts();
	}

	@Override
	public List<ReceiptDto> getReceiptList(int page, int rows) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<>();
		int startIdx = (page-1)*rows;
		paramMap.put("startIdx", startIdx);
		paramMap.put("limit", (startIdx+rows)-1);
		return receiptDao.selectAllReceipts(paramMap);
	}

	

}
