package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {

	@RequestMapping(value="/hello", method=RequestMethod.GET)
	public String sayHello(Model model) {
		
		System.out.println("Hello Controller");
		
		model.addAttribute("message", "Hello World");
		
		return "hello";
	}
	
	@RequestMapping(value="/index")
	public String index() {
		return "forward:index.jsp";
	}
}
