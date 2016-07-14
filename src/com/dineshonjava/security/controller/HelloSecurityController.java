package com.dineshonjava.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Dinesh Rajput
 *
 */
@Controller
@RequestMapping("/index")
public class HelloSecurityController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String executeSecurity(ModelMap model) {
 
		model.addAttribute("message", "Spring Security Hello World");
		model.addAttribute("author", "By kashif.com");
		return "welcome";
 
	}
}
