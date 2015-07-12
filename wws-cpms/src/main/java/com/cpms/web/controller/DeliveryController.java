package com.cpms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.dto.DeliveryDto;
import com.cpms.web.service.DeliveryService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("DeliveryControler")
@RequestMapping("/deli")
@SessionAttributes("user")
public class DeliveryController {
	@Autowired
	private DeliveryService deliveryService;
	@RequestMapping(value="/page",method=RequestMethod.GET)
	public String getDeliPage(){
		return "delivery/page";
	}
	@RequestMapping(value="/list",method=RequestMethod.POST,produces="application/json")
	public String getDeliveryList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			) throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = deliveryService.getDeliveryCount();
		int total = (int)Math.ceil((float)records/10);
		List<DeliveryDto>list = deliveryService.getDeliveryList(page, rows);
		model.put("page", page);
		model.put("records", records);
		model.put("rows", list);
		model.put("total", total);
		return mapper.writeValueAsString(model);
		
	}
	
}
