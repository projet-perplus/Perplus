package com.perplus.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.perplus.member.dao.PaymentDao;
import com.perplus.member.daoimpl.PaymentDaoImpl;
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
		return "redirect:/member/payment_method.do";
	}
	@RequestMapping("payment_method.do")
	public ModelAndView paymentMethod(HttpSession session){
		String memberEmail = null;
		try {
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		} catch (Exception e) {
			return new ModelAndView("redirect:/");	// 비로그인 상태면 메인으로 이동
		}
		
		List<PaymentVo> paymentList = null;
		JSONArray arr = null;
		//payment 객체 조회
		try {
			paymentList = service.getPayment(memberEmail);
			arr = new JSONArray(paymentList); 	// list를 Json 형태로 변환
		} catch (Exception e) {}
		
		return new ModelAndView("accountmanagement/accountmanagement/payment_method.tiles1", "paymentList", arr);
	}
	
	@RequestMapping("deletePayment.do")
	public ModelAndView deletePayment(HttpServletRequest request, HttpSession session){
		String memberEmail = null;
		String servMemberEmail = null;
		int cardSerial = 0;
		try {
			cardSerial = Integer.parseInt(request.getParameter("cardSerial"));			
		} catch (Exception e) {
			return new ModelAndView("redirect:/");	// 시리얼이 넘어오지 않으면 메인으로 이동
		}
		
		//http://127.0.0.1:8088/Perplus/member/deletePayment.do?cardSerial=10063
		try {
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
			servMemberEmail = service.getPaymentByCardSerial(cardSerial).getMemberEmail();
		} catch (Exception e) {
			return new ModelAndView("redirect:/");	// 비로그인 상태면 메인으로 이동
		}
		if (memberEmail.equals(servMemberEmail)){	// 삭제 요청한 시리얼의 payment 객체 이메일과 로그인한 이메일이 같을 경우
			try {
				service.removePayment(cardSerial);	// 삭제 요청 수행
			} catch (Exception e) {
				return new ModelAndView("redirect:/member/payment_method.do");	// 카드 시리얼에 해당하는 payment가 엾을 경우 Exception 발생
			}
		}

		return new ModelAndView("redirect:/member/payment_method.do");
	}
	
	
	
}

