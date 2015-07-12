package com.cpms.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpms.web.data.ShopJusoData;
import com.cpms.web.dto.AjaxResult;
import com.cpms.web.dto.EmployeeDto;
import com.cpms.web.dto.ShopDto;
import com.cpms.web.service.ShopService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("shopController")
@RequestMapping("/shop")
@SessionAttributes("shop")
public class ShopController {
	@Autowired
	private ShopService shopService;
	

	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public ModelAndView getShopDetail(
			@RequestParam(value="id")int id
			) throws Exception{
		ModelAndView mav = new ModelAndView();
		ShopJusoData shopDto = shopService.getShopDetail(id);
		System.out.println("shopDto??"+shopDto.toString());
		
		mav.addObject("data",shopDto);
		mav.setViewName("shop/detail");
		return mav;
		
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logout(
			HttpServletRequest request,
			HttpServletResponse response
			
			){
		HttpSession session = request.getSession(true);
		ModelAndView mav = new ModelAndView();
		ShopJusoData shop = new ShopJusoData();
		shop =  (ShopJusoData) session.getAttribute("shop");
		 if(shop != null){
	            
	            mav.addObject("status",  AjaxResult.SUCCESS);
	            session.invalidate();
	        }else{
	        	mav.addObject("status",  AjaxResult.FAIL);
	        }
		 return mav;
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/info",method=RequestMethod.GET,produces="application/json")
	public void getShopInfo(
			@RequestParam(value="id")int id,
			ModelMap model
			) throws Exception{
		ShopDto shopDto = new ShopDto();
		shopDto=shopService.getShopBySeq(id);
		String shopName = shopDto.getShopName();
		System.out.println("shopName:"+shopName);
		
		if(shopDto != null){
			model.addAttribute("status",AjaxResult.SUCCESS);
			model.addAttribute("shopName",shopName);
		}else{
			model.addAttribute("status",AjaxResult.FAIL);
			model.addAttribute("error","로그인 되지 않았습니다");
		}
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST,produces="application/json")
	public void shopLogin(
			@RequestParam(value="id")String uid,
			@RequestParam(value="pw")String shopPw,
			@ModelAttribute ShopDto shop,
			HttpSession session,
			ModelMap model
			)throws Exception{
		int shopSeq = Integer.parseInt(uid);
		System.out.println("넘어온 id"+shopSeq);
		System.out.println("넘어온 pw"+shopPw);
		
		int sessionSeq = shopService.existsShopSeq(shopSeq, shopPw);
		ShopJusoData data = shopService.getShopDetail(shopSeq);
		if(sessionSeq != 0){
			model.addAttribute("status", AjaxResult.SUCCESS);
			model.addAttribute("shop", data);
			model.addAttribute("shopSeq", shop);
		}else{
			model.addAttribute("status", AjaxResult.FAIL);
			model.addAttribute("user", 0);
			session.invalidate();
		}
	}
	
	@RequestMapping(value="/emp/list",method=RequestMethod.POST)
	public String getEmpList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			) throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		int records = shopService.getEmployeeCount();
		int total = (int)Math.ceil((float)records/rows);
		List<EmployeeDto>list = shopService.getEmployeeList(page,rows);
		model.put("records", records);
		model.put("total", total);
		model.put("page", page);
		model.put("rows", list);
				return mapper.writeValueAsString(model);
			}
	
	@RequestMapping(value="/emp/page",method=RequestMethod.GET)
	public String getEmpPage(){
		return "shop/employee/page";
	}
	
	@RequestMapping(value="/subShop/list",method=RequestMethod.POST)
	public String getSubShopList(
			@RequestParam(value="page",required=false,defaultValue="1")int page,
			@RequestParam(value="rows",required=false,defaultValue="10")int rows,
			ModelMap model
			) throws Exception{
		ObjectMapper mapper = new ObjectMapper();
			int records = shopService.getSubShopCount();
			int total = (int)Math.ceil((float)records/rows);
			List<ShopDto>list = shopService.getSubShopList(page,rows);
			model.put("records", records);
			model.put("total", total);
			model.put("page", page);
			model.put("rows", list);
		return mapper.writeValueAsString(model);
	}
	@RequestMapping(value="/subShop/page",method=RequestMethod.GET)
	public String getShopPage(){
		return "shop/subShop/page";
	}
}
