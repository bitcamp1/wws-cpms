package com.cpms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.dto.ReceiptDto;
import com.cpms.web.service.ReceiptService;
import com.fasterxml.jackson.databind.ObjectMapper;
@Controller("rcptController")
@RequestMapping("/receipt")
@SessionAttributes("user")
public class ReceiptController {
	@Autowired
	private ReceiptService receiptService;
	@RequestMapping(value="/list",method=RequestMethod.POST)
	public String getReceiptList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			)throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = receiptService.getReceiptCount();
		int total = (int)Math.ceil((float)records/10);
		List<ReceiptDto>list = receiptService.getReceiptList(page,rows);
		model.put("total", total);
		model.put("records", records);
		model.put("page", page);
		model.put("rows", list);
		return mapper.writeValueAsString(model);
	}
	
	@RequestMapping(value="/page",method=RequestMethod.GET)
	public String getReceiptPage(){
		return "receipt/page";
	}
	
}
