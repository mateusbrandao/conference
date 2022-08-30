package com.mateusb.conference.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mateusb.conference.model.Registration;

@Controller
public class RegistrationController {

	@GetMapping("registration")
	public String getRegistration(@ModelAttribute("registration") Registration registrations) {
		return "registration";
	}
	
	@PostMapping("registration")
	public String addRegistration(@ModelAttribute("registration") Registration registrations) {
		System.out.println("Registration "+registrations.getName());
		return "registration";
	}
	
}
