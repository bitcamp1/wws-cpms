package com.cpms.web.controller;

import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpms.web.dto.AjaxResult;
import com.cpms.web.dto.UserDto;
import com.cpms.web.service.ShopService;
import com.cpms.web.service.UserService;
import com.google.gson.Gson;


@Controller("userController")
@SessionAttributes("user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/user/cate.do",method=RequestMethod.GET)
	public String goCate()throws Exception{
		return "/user/page";
	}

	@RequestMapping(value="/userInfo.do",method=RequestMethod.GET)
	public void execute3(
			@ModelAttribute("user")UserDto user,
			ModelMap model
			)throws Exception{
		if(user != null){
			model.addAttribute("status",AjaxResult.SUCCESS);
			model.addAttribute("user", user);
		}else{
			model.addAttribute("status", AjaxResult.FAIL);
			model.addAttribute("error","로그인 되지 않았습니다.");
		}
	}
	
	public ResponseEntity<String> execute2(
			@ModelAttribute("user")UserDto user
			)throws Exception{
		HttpHeaders respHeaders = new HttpHeaders();
		respHeaders.set("Content-Type", "text/plan;charset=UTF-8");
		
		return new ResponseEntity<String>(
				new Gson().toJson(user),
				respHeaders,
				HttpStatus.OK
				);
	}
	public String execute(
			@ModelAttribute("user")UserDto user
			) throws Exception{
		return URLEncoder.encode(new Gson().toJson(user), "UTF-8");
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login()throws Exception{
		return "/user/signOn";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST,produces="application/json")
	public void  login(String uid, 
				       String pwd,
				       HttpSession session,
				       ModelMap model)
			throws Exception {
		HashMap<String, String> paramMap = new HashMap<>();
		paramMap.put("uid", uid);
		paramMap.put("pwd", pwd);
		System.out.println("paramMap"+paramMap);
		UserDto user = userService.login(paramMap);
		System.out.println("controller user" + user);
		if (user != null) {
			model.addAttribute("status", "success");
			model.addAttribute("user", user);
			
			
		} else {
			model.addAttribute("status", AjaxResult.FAIL);
			model.addAttribute("user", new UserDto());
			session.invalidate();
		}
		
	}
 @ExceptionHandler(Exception.class)
    public void handleError(Exception ex, ModelMap model) {
        model.addAttribute("error", ex.getMessage());
    }
	@RequestMapping(value="/home/main")
	public String goMainPage()throws Exception{
		return "home/main";
	}
	
}
