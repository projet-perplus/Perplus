package com.perplus.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public String registerPayment(@ModelAttribute PaymentVo payment, HttpSession session, HttpServletRequest request){
		String yy = "20" + request.getParameter("yy"); //유효기간 년도
		String mm = request.getParameter("mm");	// 유효기간 월
		/*
		String date = yy+"/"+mm; //유효기간 년 월 합쳐서 데이트 객체 생성
		System.out.println(date);
		*/
		
		Date cardExpiration = new Date(); //유효기간
		cardExpiration.setYear(Integer.parseInt(yy)-1900);
		cardExpiration.setMonth(Integer.parseInt(mm)-1); //0월(1월) 부터 시작
		System.out.println(cardExpiration);
		
		String memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		
		//객체 세팅
		payment.setCardSerial(service.getCardSerialSeq());
		payment.setMemberEmail(memberEmail);
		payment.setCardExpiration(cardExpiration);
		try {
			service.registerPayment(payment); // 객체 DB 저장
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "accountmanagement/accountmanagement/modifyandcertified.tiles1";
	}
	@RequestMapping("pa11yment_method.do")
	public ModelAndView paymentMethod(HttpSession session){
		String memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		List<PaymentVo> paymentList = null;
		//payment 객체 조회
		try {
			paymentList = service.getPayment(memberEmail);
		} catch (Exception e) {}
		
		return new ModelAndView("accountmanagement/accountmanagement/payment_method.tiles1", "paymentList", paymentList);
	}
	
	
	
	
	
}
