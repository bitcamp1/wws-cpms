package com.cpms.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller("teleController")
@SessionAttributes("shop")
public class TelecomController {
	
	
	@RequestMapping(value="/sk/page",method=RequestMethod.GET)
	public String getSKpage(){
		return "telecom/sk/page";
	}
	@RequestMapping(value="/kt/page",method=RequestMethod.GET)
	public String getKTpage(){
		return "telecom/kt/page";
	}
	@RequestMapping(value="/lg/page",method=RequestMethod.GET)
	public String getLGpage(){
		return "telecom/lg/page";
	}
}
