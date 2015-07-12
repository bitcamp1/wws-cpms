package com.cpms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.dto.DeadlineDto;
import com.cpms.web.service.DeadlineService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("DeadlineController")
@SessionAttributes("shop")
public class DeadlineController {
	@Autowired
	private DeadlineService deadlineService;
	
	
	
	@RequestMapping(value="/dline/page",method=RequestMethod.GET)
	public String getDlinePage(){
		return "deadline/page";
	}
	@RequestMapping(value="/dline/list",method=RequestMethod.POST,produces="application/json")
	public String getDeadlineList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model) throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = deadlineService.getDeadlineCount();
		int total = (int)Math.ceil((float)records/rows);//일단 한페이지당 10
		List<DeadlineDto>list = deadlineService.getDeadlineList(page,rows);
		model.put("page", page);
		model.put("rows", list);
		model.put("records", records);
		model.put("total", total);
		return mapper.writeValueAsString(model);
	}
	
	
}
