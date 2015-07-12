package com.cpms.web.controller;



import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpms.web.data.JoinData;
import com.cpms.web.dto.CustomerDto;
import com.cpms.web.service.CustomerService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("CustomerController")
@RequestMapping("/cust")
@SessionAttributes("uesr")
public class CustomerController {
	private static final Logger logger = Logger.getLogger(CustomerController.class);
	
	@Autowired
	private CustomerService custService;
	
	
	@RequestMapping(value="/inputCustData",method=RequestMethod.POST)
	public void inputCustData(
			@RequestParam(value="custName") String custName,
			@RequestParam(value="custNum") String custNum,
			ModelMap model
			) throws Exception{
		System.out.println("custName:"+custName);
		System.out.println("custNum:"+custNum);
		CustomerDto cust = new CustomerDto();
		cust.setCustName(custName);
		cust.setCustNum(custNum);
		int lastInsertCustSeq = custService.inputCustData(cust);
		System.out.println("마지막 등록된 custSeq:"+lastInsertCustSeq);
	}
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public ModelAndView getCustDetail(
			@RequestParam(value="no",defaultValue="0")int id
			)throws Exception{
		ModelAndView mav = new ModelAndView();
		JoinData data = new JoinData();
		data = custService.getCustDetail(id);
		System.out.println("컨트롤러cust"+data);
		mav.addObject("data", data);
		mav.setViewName("customer/detail");
		return mav;
		
		
	}
	
	@RequestMapping(value="/detailForm",method=RequestMethod.GET)
	public String getCustDetailForm()throws Exception{
		return "customer/detail";
		
	}
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String getCustomerAdd(){
		return "customer/add";
	}
	@RequestMapping(value="/page",method = RequestMethod.GET)
	public String getCustomerPage(){
		
		return "customer/page";
		
	}
	@RequestMapping(value="/list",method = RequestMethod.POST,produces="application/json") 
	public  String getCustomerList(
			@RequestParam(value="page",required=false,defaultValue="1") int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model)throws Exception{
		
		
		ObjectMapper mapper = new ObjectMapper();
		int records = custService.getCustomerCount();
		int total =  (int)Math.ceil((float)records/10); // 전체row갯수 / 한페이지당 row 10
		List<CustomerDto>list = custService.getCustomerList(page, rows);
		  // total = Total Page
		  // record = Total Records
		  // rows = list data 파라미터 rows 와 다르다
		  // page = current page
		model.put("total", total);
		model.put("records",records);
		model.put("page", page);
		model.put("rows", list); 
		
		
		return mapper.writeValueAsString(model);
		
	}
}
