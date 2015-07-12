package com.cpms.web.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.dto.CommissionDto;
import com.cpms.web.dto.RebateDto;
import com.cpms.web.service.PolicyService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("policyController")
@RequestMapping("/policy")
@SessionAttributes("shop")
public class PolicyController {
	@Autowired
	private PolicyService policyService;
	

	
	@RequestMapping(value="/add.do",method=RequestMethod.GET)
	public String getPolicyAdd(){
		return "policy/add";
	}
	
	@RequestMapping(value="/commission/list",method=RequestMethod.POST)
	public String getCommissionList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			)throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = policyService.getCommissionCount();
		int total = (int)Math.ceil((float)records/10);
		List<CommissionDto>list = policyService.getCommissionList(page, rows);
		model.put("total", total);
		model.put("records", records);
		model.put("page", page);
		model.put("rows", list);
		return mapper.writeValueAsString(model);
	}
	@RequestMapping(value="/commission/page",method=RequestMethod.GET)
	public String getCommissionPage(){
		return "policy/commission/page";
	}
	
	@RequestMapping(value="/deduct/list",method=RequestMethod.POST)
	public String getDeductist(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			)throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = policyService.getDeductCount();
		int total = (int)Math.ceil((float)records/10);
		List<RebateDto>list = policyService.getDeductList(page,rows);
		model.put("total", total);
		model.put("reocrds", records);
		model.put("page", page);
		model.put("rows", list);
		
		return mapper.writeValueAsString(model);
	}
	@RequestMapping(value="/deduct/page",method=RequestMethod.GET)
	public String getDeductPage(){
		return "policy/deduction/page";
	}
	@RequestMapping(value="/rebate/list",method=RequestMethod.POST)
	public String getRebateList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			)throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = policyService.getRebateCount();
		int total = (int)Math.ceil((float)records/10);
		List<RebateDto>list = policyService.getRebateList(page,rows);
		model.put("total", total);
		model.put("reocrds", records);
		model.put("page", page);
		model.put("rows", list);
		
		return mapper.writeValueAsString(model);
	}
	@RequestMapping(value="/rebate/page",method=RequestMethod.GET)
	public String getRebatePage(){
		return "policy/rebate/page";
	}
}
