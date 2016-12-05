package com.perplus.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.MemberVo;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	/*****************회원가입***************/
	@RequestMapping("join.do")
	public String joinMember(@ModelAttribute MemberVo member, BindingResult result, HttpServletRequest request)throws Exception{
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		String memberBirthday = yy+mm+dd;
		member.setMemberBirthday(memberBirthday);
		System.out.println(member);
		service.joinMember(member);
		return "redirect:/main.do";
	}
	
	
}
