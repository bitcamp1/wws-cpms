package com.cpms.web.service;

import java.util.List;

import com.cpms.web.dto.ReceiptDto;

public interface ReceiptService {

	int getReceiptCount()throws Exception;

	List<ReceiptDto> getReceiptList(int page, int rows)throws Exception;

}
