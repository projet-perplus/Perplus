package com.perplus.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.PaymentVo;

@Controller
@RequestMapping("/member/")
public class MemberController_je {

	@Autowired
	private MemberService service;
	
	/**
	 * 신용카드 등록
	 */
	@RequestMapping("registerPayment.do")
	public String registerPayment(@ModelAttribute PaymentVo payment, HttpSession session ,HttpServletRequest request){
		System.out.println(payment);
		String yy = "20" + request.getParameter("yy"); //유효기간 년도
		String mm = request.getParameter("mm");	// 유효기간 월
		String date = yy+"/"+mm;
		System.out.println(date);
		Date cardExpiration = new Date(); //유효기간 년 월 합쳐서 데이트 객체 생성
		cardExpiration.setYear(Integer.parseInt(yy)-1900);
		cardExpiration.setMonth(Integer.parseInt(mm));
		String memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail();
		payment.setMemberEmail(memberEmail);
		payment.setCardExpiration(cardExpiration);
		System.out.println(cardExpiration);
		try {
			service.registerPayment(payment);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "redirect:/main.do";
	}
}
