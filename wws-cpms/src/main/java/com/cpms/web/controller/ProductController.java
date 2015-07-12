package com.cpms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.dto.AjaxResult;
import com.cpms.web.dto.InventoryDto;
import com.cpms.web.dto.PhoneDto;
import com.cpms.web.service.ProductService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("ProductController")
@RequestMapping("/prod")
@SessionAttributes("shop")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/addPhone",method=RequestMethod.POST)
	public void addPhone(
			@RequestParam(value="phoneName") String phoneName,
			@RequestParam(value="phoneBrand") String phoneBrand,
			@RequestParam(value="phoneModel") String phoneModel,
			@RequestParam(value="phonePrice") String phonePrice,
			@RequestParam(value="telecom") String telecom,
			ModelMap model
			
			) throws Exception{
		PhoneDto dto = new PhoneDto();
		dto.setPhoneName(phoneName);
		dto.setPhoneBrand(phoneBrand);
		dto.setPhoneModel(phoneModel);
		dto.setPhonePrice(phonePrice);
		dto.setTelecom(telecom);
			productService.addPhone(dto);
			model.addAttribute("status", AjaxResult.SUCCESS);
		
	}
	
	@RequestMapping(value="/inv/list",method=RequestMethod.POST)
	public String getInventoryList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			)throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = productService.getInventoryCount();
		int total = (int)Math.ceil((float)records/10);
		List<InventoryDto>list = productService.getInventoryList(page, rows);
		model.put("records", records);
		model.put("total", total);
		model.put("page", page);
		model.put("rows", list);
		return mapper.writeValueAsString(model);
	}
	@RequestMapping(value="/phone/page",method=RequestMethod.GET)
	public String getPhonePage(){
		return "product/phone/page";
	}
	@RequestMapping(value="/phone/list",method=RequestMethod.POST)
	public String getPhoneList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model)throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = productService.getCount();
		int total = (int)Math.ceil((float)records/10);
		List<PhoneDto>list = productService.getPhoneList(page, rows);
		
		model.put("records", records);
		model.put("total", total);
		model.put("page", page);
		model.put("rows", list);
		
		return mapper.writeValueAsString(model);
	}
	
	@RequestMapping(value="/inv/page",method=RequestMethod.GET)
	public String getInventoryPage(){
		return "product/inventory/page";
	}

}
