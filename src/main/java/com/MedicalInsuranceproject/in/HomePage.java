package com.MedicalInsuranceproject.in;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class HomePage{
	@GetMapping(value ="/hit")
	public ModelAndView Homepage() {	
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("MedicalHome");
		
	return mv;
	
	}
}