package com.perplus.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.MemberVo;
import com.perplus.member.vo.PayInfoVo;
import com.perplus.member.vo.ShowmoneyVo;
import com.perplus.member.vo.TravelVo;
import com.perplus.util.Constants;

@Controller
@RequestMapping("/member/")
public class MemberController_je {

	@Autowired
	private MemberService service;
	
	@RequestMapping("transaction_history.do")
	public ModelAndView intendedReceive(@ModelAttribute String status, HttpSession session, HttpServletRequest request){
		String memberEmail = null;
		List<ShowmoneyVo> smList = null;
		JSONArray smJsonArr = null;
		JSONArray travelListJson = null;
		JSONArray payInfoListJson = null;
		System.out.println("스테이터스" + status);
		int showmoneyStatus = Constants.SHOWMONEY_STATUS_RECEIVE_INTENDED;	// default값 : 예정 금액
		try {
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ModelAndView("redirect:/");	// 비로그인 상태면 메인으로 이동
		}
		
		if (status.equals("completed")){	// completed 가 아닌 경우 모두 intended 상태를 보여줌
			showmoneyStatus = Constants.SHOWMONEY_STATUS_RECEIVE_COMPLETED;
		}
		try {	// 조회된 값이 없으면 Exception 발생
			smList = service.getShowmoneyByShowmoneyStatus(memberEmail, showmoneyStatus);
			smJsonArr = new JSONArray(smList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*트레블 객체 조회 후 requestScope 등록*/
		/* 페이인포 객체 조회 후 requestScope 등록*/
		List<TravelVo> travelList = new ArrayList<TravelVo>();
		List<PayInfoVo> payInfoList = new ArrayList<PayInfoVo>();
		
		for(ShowmoneyVo showmoney : smList){	// 조회된 showmoney의 travelSerial로 Travel 객체 조회
			int travelSerial = showmoney.getTravelSerial();
			
			try {
				TravelVo travelTmp = service.getTravelbyTravelSerial(travelSerial); //travel 객체 조회
				PayInfoVo payIngoTmp = service.getPayInfoByTravelSerial(travelSerial); //payInfo객체 조회
				
				travelList.add(travelTmp);
				payInfoList.add(payIngoTmp);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		travelListJson = new JSONArray(travelList);	// travelList 객체 json으로 변환
		payInfoListJson = new JSONArray(payInfoList);	// payInfoList 객체 json으로 변환
		
		request.setAttribute("travelList", travelListJson);	// requestScope로 전달
		request.setAttribute("payInfoList", payInfoListJson);	// requestScope로 전달
		
		return new ModelAndView("accountmanagement/accountmanagement/transaction_history.tiles1", "showmoneyList", smJsonArr);
	}
	
	@RequestMapping("transaction_history_ajax.do")
	@ResponseBody
	public Map<String, Object> completedReceive(@ModelAttribute String status, HttpSession session, HttpServletRequest request){
		String memberEmail = null;
		Map<String, Object> mapDate = new HashMap<>();
		List<ShowmoneyVo> smList = null;
		JSONArray smJsonArr = null;
		JSONArray travelListJson = null;
		JSONArray payInfoListJson = null;
		System.out.println("스테이터스" + status);
		int showmoneyStatus = Constants.SHOWMONEY_STATUS_RECEIVE_INTENDED;	// default값 : 예정 금액
		/*
		try {
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ModelAndView("redirect:/");	// 비로그인 상태면 메인으로 이동
		}
		*/
		if (status.equals("completed")){	// completed 가 아닌 경우 모두 intended 상태를 보여줌
			showmoneyStatus = Constants.SHOWMONEY_STATUS_RECEIVE_COMPLETED;
		}
		try {	// 조회된 값이 없으면 Exception 발생
			smList = service.getShowmoneyByShowmoneyStatus(memberEmail, showmoneyStatus);
			smJsonArr = new JSONArray(smList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*트레블 객체 조회 후 requestScope 등록*/
		/* 페이인포 객체 조회 후 requestScope 등록*/
		List<TravelVo> travelList = new ArrayList<TravelVo>();
		List<PayInfoVo> payInfoList = new ArrayList<PayInfoVo>();
		
		for(ShowmoneyVo showmoney : smList){	// 조회된 showmoney의 travelSerial로 Travel 객체 조회
			int travelSerial = showmoney.getTravelSerial();
			
			try {
				TravelVo travelTmp = service.getTravelbyTravelSerial(travelSerial); //travel 객체 조회
				PayInfoVo payIngoTmp = service.getPayInfoByTravelSerial(travelSerial); //payInfo객체 조회
				
				travelList.add(travelTmp);
				payInfoList.add(payIngoTmp);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		travelListJson = new JSONArray(travelList);	// travelList 객체 json으로 변환
		payInfoListJson = new JSONArray(payInfoList);	// payInfoList 객체 json으로 변환
		mapDate.put("showmoneyList", smJsonArr);
		mapDate.put("travelList", travelListJson);
		mapDate.put("travelList", payInfoListJson);
		/*
		request.setAttribute("showmoneyList", smJsonArr);
		request.setAttribute("travelList", travelListJson);	// requestScope로 전달
		request.setAttribute("payInfoList", payInfoListJson);	// requestScope로 전달
		*/
		return mapDate;
	}
	
	
	
}

