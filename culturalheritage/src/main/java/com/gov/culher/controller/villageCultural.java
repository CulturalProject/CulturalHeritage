package com.gov.culher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("village")
public class villageCultural {
	
	@RequestMapping("/villageCultural")
	public String villageCultural(){
		String url="villageCultural";
		System.out.println("ggg");
		return url;
	}
	

}
