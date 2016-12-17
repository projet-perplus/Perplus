package com.perplus.controller;

import org.hibernate.validator.internal.util.IgnoreJava6Requirement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perplus.house.service.HouseService;

@Controller
@RequestMapping("/house")
public class HouseController_choi {
	
	@Autowired
	private HouseService service;
	
	
	
}
