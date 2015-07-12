package com.cpms.web.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.data.ShopJusoData;
import com.cpms.web.dto.AjaxResult;
import com.cpms.web.dto.CreditRetrieverDto;
import com.cpms.web.service.CreditRetrieverService;
import com.cpms.web.service.ShopService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("creditRetrieverController")
@RequestMapping("/creditRetriever")
@SessionAttributes("shop")
public class CreditRetrieverController {
	@Autowired
	private CreditRetrieverService creditRetrieverService;
	private ShopService shopService;
	@RequestMapping(value="/delete",method=RequestMethod.POST,produces="application/json")
	public void deleteCreditRetriever(
			@RequestParam(value="id",defaultValue="0")int id,
			ModelMap model
			)throws Exception{
		System.out.println("id 넘어옴:"+id);
		if(id<=0){
			model.addAttribute("status", AjaxResult.FAIL);
		}
		creditRetrieverService.deleteCreditRetriever(id);
		
		
	}
	
	@RequestMapping(value="/editCredStatus",method=RequestMethod.POST,produces="application/json")
	public void editCreditRetriever(
			@RequestParam(value="credSeq") int id,
			@RequestParam(value="credStatus") String credStatus,
			@RequestParam(value="value") String value,
			ModelMap model
			) throws Exception{
		
		HashMap<String, String>editMap = new HashMap<>();
		editMap.put("id", Integer.toString(id));
		editMap.put("credStatus", credStatus);
		editMap.put("value", value);
	
		int count = creditRetrieverService.changeCreditRetriever(editMap);
		  if (count < 1) {
	            throw new Exception("해당 조회정보가 없습니다.");
	        }
	        
	        model.addAttribute("status", AjaxResult.SUCCESS);
	}
	@RequestMapping(value="/editCredResult",method=RequestMethod.POST,produces="application/json")
	public void editCredResult(
			@RequestParam(value="credSeq") int id,
			@RequestParam(value="credResult") String credResult,
			@RequestParam(value="value") String value,
			ModelMap model
			) throws Exception{
		
		HashMap<String, String>editMap = new HashMap<>();
		editMap.put("id", Integer.toString(id));
		editMap.put("credResult", credResult);
		editMap.put("value", value);
	
		int count = creditRetrieverService.editCredResult(editMap);
		  if (count < 1) {
	            throw new Exception("해당 조회정보가 없습니다.");
	        }
	        
	        model.addAttribute("status", AjaxResult.SUCCESS);
	}
	@RequestMapping(value="/editCredManage",method=RequestMethod.POST,produces="application/json")
	public void editCredManage(
			@RequestParam(value="credSeq") int id,
			@RequestParam(value="credManage") String credManage,
			@RequestParam(value="value") String value,
			ModelMap model
			) throws Exception{
		
		HashMap<String, String>editMap = new HashMap<>();
		editMap.put("id", Integer.toString(id));
		editMap.put("credResult", credManage);
		editMap.put("value", value);
	
		int count = creditRetrieverService.editCredManage(editMap);
		  if (count < 1) {
	            throw new Exception("해당 조회정보가 없습니다.");
	        }
	        
	        model.addAttribute("status", AjaxResult.SUCCESS);
	}
	@RequestMapping(value="/editCredNote",method=RequestMethod.POST,produces="application/json")
	public void editCredNote(
			@RequestParam(value="credSeq") int id,
			@RequestParam(value="credNote") String credNote,
			@RequestParam(value="value") String value,
			ModelMap model
			) throws Exception{
		
		HashMap<String, String>editMap = new HashMap<>();
		editMap.put("id", Integer.toString(id));
		editMap.put("credNote", credNote);
		editMap.put("value", value);
	
		int count = creditRetrieverService.editCredNote(editMap);
		  if (count < 1) {
	            throw new Exception("해당 조회정보가 없습니다.");
	        }
	        
	        model.addAttribute("status", AjaxResult.SUCCESS);
	}
	
	@RequestMapping(value="/page",method=RequestMethod.GET)
	public String getCreditRetriverPage()throws Exception{
		return "creditRetriever/page";
		
	}
	@RequestMapping(value="/write",method=RequestMethod.POST,produces="application/json")
	public void writeCreditRetriever(
			@RequestParam(value="targetName")String targetName,
			@RequestParam(value="targetNum")String targetNum,
			@RequestParam(value="id")int shopSeq,
			@RequestParam(value="telecom")String telecom,
			HttpSession session,
			ModelMap model
			
			) throws Exception{
		CreditRetrieverDto creditRetrieverDto = new CreditRetrieverDto();
		creditRetrieverDto.setTargetName(targetName);
		creditRetrieverDto.setTargetNum(targetNum);
		creditRetrieverDto.setShopSeq(shopSeq);
		creditRetrieverDto.setTelecom(telecom);
		System.out.println("creditRetrieverDto :"+creditRetrieverDto);
		creditRetrieverService.writeCreditRetriever(creditRetrieverDto);
		model.addAttribute("status", AjaxResult.SUCCESS);
		
		
	}
	@RequestMapping(value="/list.do",method=RequestMethod.POST,produces="application/json")
	public String getAllRequests(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			@RequestParam(value="id",required=false)int id,
			ModelMap model
			) throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		String result="";
		if(id==1000){
			int records = creditRetrieverService.getRequestCount();
			int total = records/10;
			List<CreditRetrieverDto>list = creditRetrieverService.getRequestList(page, rows);
			model.put("total", total);
			model.put("records", records);
			model.put("page", page);
			model.put("rows", list);
			result = mapper.writeValueAsString(model);
		}else{
			int records = creditRetrieverService.getRequestCount();
			int total = records/10;
			List<CreditRetrieverDto>list = creditRetrieverService.getRequestListBySeq(page, rows,id);
			model.put("total", total);
			model.put("records", records);
			model.put("page", page);
			model.put("rows", list);
			result = mapper.writeValueAsString(model);
			
		}
		
		return result;
	}
		
}
