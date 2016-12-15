package com.perplus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.MemberVo;

@Controller
@RequestMapping("/member/")
public class MemberController_je {

	@Autowired
	private MemberService service;
	
//	@RequestMapping("transaction_history.do")
//	public ModelAndView completedReceive(HttpSession session, HttpServletRequest request){
//		String memberEmail = null;
//		try {
//			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
//		} catch (Exception e) {
//			return new ModelAndView("redirect:/");	// 비로그인 상태면 메인으로 이동
//		}
//		
//		
//		return null;
//	}
//	
	
	
	
}

