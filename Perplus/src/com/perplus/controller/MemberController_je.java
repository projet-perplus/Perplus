package com.perplus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perplus.member.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController_je {

	@Autowired
	private MemberService service;
	
	
	
	
	
}

