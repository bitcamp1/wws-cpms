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

import com.cpms.web.dto.AjaxResult;
import com.cpms.web.dto.JoinOpDto;
import com.cpms.web.service.JoinOpService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("joinOpController")
@RequestMapping("/joinOp")
@SessionAttributes("shop")
public class JoinOpController {
	@Autowired
	private JoinOpService joinOpService;
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String getJoinOpListByTelecom(
			@RequestParam(value="title",required=false)String title,
			@RequestParam(value="telecom",required=false)String telecom,
			ModelMap model
			) throws Exception{
		HashMap<String, String>paramMap = new HashMap<>();
		paramMap.put("title", title);
		paramMap.put("telecom", telecom);
		
		ObjectMapper mapper = new ObjectMapper();
		List<JoinOpDto> list = joinOpService.getJoinOpList(paramMap);
		model.addAttribute("list", list);
		return mapper.writeValueAsString(model);
	}
	
	
	@RequestMapping(value="/regist.do",method=RequestMethod.POST)
	public void getTariffRegist(
			@RequestParam(value="title",required=false)String title,
			@RequestParam(value="telecom",required=false)String telecom,
			@RequestParam(value="value",required=false)String value,
			ModelMap model
			
			) throws Exception{
		HashMap<String, String>paramMap = new HashMap<String, String>();
		
		System.out.println("인서트 밸류:"+value);
		System.out.println("인서트 타이틀:"+title);
		paramMap.put("title", title);
		paramMap.put("telecom", telecom);
		paramMap.put("value", value);
		int temp =joinOpService.registJoinOp(paramMap);
				System.out.println(temp);
	}
	
	@RequestMapping(value="/tariff/list",method=RequestMethod.POST)
	public String getTariffListByTelecom(
			@RequestParam(value="telecom",required=false)String telecom,
			@RequestParam(value="title",required=false)String title,
			ModelMap model
			) throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		List<JoinOpDto> list = joinOpService.getTariffList(telecom, title);
		model.put("list", list);
		
		return  mapper.writeValueAsString(model);
		
	} 
	

	@RequestMapping(value="/page", method=RequestMethod.GET)
	public String getJoinOptionRegistPage(){
		return "policy/joinOptionRegist";
	}
}
