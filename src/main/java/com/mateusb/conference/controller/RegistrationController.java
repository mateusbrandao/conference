package com.mateusb.conference.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
	public String addRegistration(@Valid @ModelAttribute("registration") Registration registrations,
			BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("Erro no envio!");
			return "registration";
		}
		
		System.out.println("Registration " + registrations.getName());
		return "redirect:registration";
	}

}
