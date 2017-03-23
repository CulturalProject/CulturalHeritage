package com.gov.culher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/village")
public class villageCultural {
	
	@RequestMapping("/villageCultural")
	public String village(){
		System.out.println("여기이!!");
		String url="villageCultural/villageCultural";
		
		return url;		
	}
}
