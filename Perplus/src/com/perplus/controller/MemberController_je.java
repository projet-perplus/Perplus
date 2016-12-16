package com.perplus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.PaymentVo;
import com.perplus.member.vo.ShowMeTheMoneyVo;
import com.perplus.util.Constants;

@Controller
@RequestMapping("/member/")
public class MemberController_je {

	@Autowired
	private MemberService service;
	
	@RequestMapping("transaction_history.do")
	public ModelAndView completedReceive(@ModelAttribute String status, HttpSession session, HttpServletRequest request){
		String memberEmail = null;
		List<ShowMeTheMoneyVo> smtmList = null;
		JSONArray smtmJsonArr = null;
		
		int showmethemoneyStatus = Constants.SHOWMETHEMONEY_STATUS_RECEIVE_INTENDED;	// default값 : 예정 금액
		try {
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ModelAndView("redirect:/");	// 비로그인 상태면 메인으로 이동
		}
		
		if (status.equals("completed")){	// completed 가 아닌 경우 모두 intended 상태를 보여줌
			showmethemoneyStatus = Constants.SHOWMETHEMONEY_STATUS_RECEIVE_COMPLETED;
		}
		try {	// 조회된 값이 없으면 Exception 발생
			smtmList = service.getShowmethemoneyByShowmethemoneyStatus(memberEmail, showmethemoneyStatus);
			smtmJsonArr = new JSONArray(smtmList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return new ModelAndView("accountmanagement/accountmanagement/transaction_history.tiles1", "showmethemoneyList", smtmJsonArr);
	}
	
	
	
	
}

