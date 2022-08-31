package com.mateusb.conference.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GreetingController {

	@GetMapping("greeting")
	public String greeting(Map<String, Object> model) {
		model.put("message", "Ola de novo!");
		return "greeting"; 
	}
	
	@GetMapping("thyme")
	public String thyme(Map<String, Object> model) {
		model.put("message", "Ola thymeleaf!");
		return "thyme"; 
	}
	
}
