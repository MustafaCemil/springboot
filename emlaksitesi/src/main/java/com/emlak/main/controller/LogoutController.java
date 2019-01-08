package com.emlak.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	
	@RequestMapping(value={"/","/logout"})
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("logout");
		return mav;
	}
}