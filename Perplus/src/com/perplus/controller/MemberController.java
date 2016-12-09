package com.perplus.controller;

import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.validator.LoginForm;

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
		service.joinMember(member);
		return "redirect:/main.do";
	}
	
	/**********email 중복여부 ajax요청 처리*************/
	@RequestMapping("emailCheck.do")
	@ResponseBody
	public Map<String, Boolean> emailDuplicateCheck(@RequestParam String email){
		System.out.println(email);
		HashMap<String, Boolean> result = new HashMap<>();
		result.put("result", service.selectMemberFindByEmail(email)!=null);//true가 중복
		return result;
	}
	
	/*****************로그인*******************/
	
	
	public String login(@Valid LoginForm form, BindingResult result, HttpSession session, ModelMap map){
		if(result.hasErrors()){
			return "/main.do";
		}
		MemberVo member = service.selectMemberFindByEmail(form.getMemberEmail());
		String url = null;
		if(member!=null){
			if(form.getMemberPassword().equals(member.getMemberPassword())){
				session.setAttribute("login_info", member);
				url = "redirect:/main.do";
			}else{
				map.addAttribute("error_message","Password를 확인하세요.");
				url = "/member/logincheck.do";
			}
		}else{
			map.addAttribute("error_message","id를 확인하세요.");
		}
		return url;
	}
	
	
	@RequestMapping("logincheck.do")
	@ResponseBody
	public Map<String, Object> loginCheck(@RequestParam String memberEmail, @RequestParam String memberPassword,HttpSession session){
		Map<String, Object> loginCheckResult = new HashMap<>();
		MemberVo member = service.selectMemberFindByEmail(memberEmail);
		System.out.println(memberPassword);
		if(member!=null){
			if(member.getMemberPassword().equals(memberPassword)){
				session.setAttribute("login_info", member);
			}else{
				System.out.println("password");
				loginCheckResult.put("login_error_password","Password를 확인하세요.");
			}
		}else{
			loginCheckResult.put("login_error_email","Email을 확인하세요.");
		}

		return loginCheckResult;
	}
	
}
