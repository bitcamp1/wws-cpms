package com.cpms.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller("B2BController")
@RequestMapping("/b2b")
@SessionAttributes("user")
public class B2BController {
	@RequestMapping(value="/page",method=RequestMethod.GET)
	public String getB2Bpage(){return "b2b/page";}
}
