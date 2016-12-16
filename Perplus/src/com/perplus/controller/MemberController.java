package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowgetmoneyVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.util.TextUtil;
import com.perplus.member.vo.PaymentVo;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	/*****************회원가입***************/
	@RequestMapping("/join.do")
	public String joinMember(@ModelAttribute MemberVo member, BindingResult result, HttpServletRequest request)throws Exception{
		service.joinMember(member);
		return "redirect:/main.do";
	}
	
	/**********email 중복여부 ajax요청 처리*************/
	@RequestMapping("/emailCheck.do")
	@ResponseBody
	public Map<String, Boolean> emailDuplicateCheck(@RequestParam String email){
		HashMap<String, Boolean> result = new HashMap<>();
		result.put("result", service.selectMemberFindByEmail(email)!=null);//true가 중복
		return result;
	}
	
	/*****************로그인*******************/
	@RequestMapping("/logincheck.do")
	@ResponseBody
	public Map<String, Object> loginCheck(@RequestParam String memberEmail, @RequestParam String memberPassword,HttpSession session){
		Map<String, Object> loginCheckResult = new HashMap<>();
		MemberVo member = service.selectMemberFindByEmail(memberEmail);
		if(member!=null){
			if(member.getMemberPassword().equals(memberPassword)){
				session.setAttribute("login_info", member);
			}else{
				loginCheckResult.put("login_error_password","Password를 확인하세요.");
			}
		}else{
			loginCheckResult.put("login_error_email","Email을 확인하세요.");
		}
		return loginCheckResult;
	}
	
	/*******************로그아웃****************************/
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/main.do";
	}

	/*******************멤버 정보 수정*************************/
	@RequestMapping(value="/modify.do", method=RequestMethod.POST)
	public String modifymember(@ModelAttribute MemberVo newData, BindingResult result, HttpServletRequest request, HttpSession session) throws IllegalStateException, IOException{
		MemberVo loginInfo =  (MemberVo)session.getAttribute("login_info");
		
		MultipartFile file = newData.getMemberPictureFile();
		newData.setMemberEmail(loginInfo.getMemberEmail());
		String fileName = null;
		if(file!=null && !file.isEmpty()){
			//파일 uploadPhoto로 옮기기
			fileName = UUID.randomUUID().toString().replaceAll("-","");
			File picture = new File(request.getServletContext().getRealPath("/memberPicture"), fileName);
			file.transferTo(picture);
			//기존 사진이 있는 경우 삭제
			if(loginInfo.getMemberPicture()!=null){
				File oldPic = new File(request.getServletContext().getRealPath("/memberPicture"), loginInfo.getMemberPicture());
				oldPic.delete();
			}
			newData.setMemberPicture(fileName);//DAO로 넘길 VO의 사진이름 값 변경
		}else{
			newData.setMemberPicture(loginInfo.getMemberPicture());
		}
		service.updateMember(newData);
		
		
		loginInfo.setMemberName(newData.getMemberName());
		loginInfo.setMemberPassword(newData.getMemberPassword());
		loginInfo.setMemberBirthday(newData.getMemberBirthday());
		loginInfo.setMemberGender(newData.getMemberGender());
		loginInfo.setMemberTel(newData.getMemberTel());
		loginInfo.setMemberLocation(newData.getMemberLocation());
		loginInfo.setMemberIntroduction(newData.getMemberIntroduction());
		loginInfo.setMemberIdentification(newData.getMemberIdentification());
		if(fileName != null){//업로드된 사진이 있어 newFileName의 값이 설정 되 있으면
			loginInfo.setMemberPicture(fileName);//세션에 사진 이름 값 변경
		}
		return "redirect:/modifyandcertified.do";
	}
	
	/******************비밀번호 수정************************/
	@RequestMapping("/passwordChange.do")
	public String memberPasswordChange(@RequestParam String memberEmail, @RequestParam String memberPassword, HttpSession session){
		service.updateMemberPassword(memberEmail, memberPassword);
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		member.setMemberPassword(memberPassword);
		return "redirect:/modifyandcertified.do";
	}
	
	/*****************회원탈퇴********************/
	@RequestMapping("/delete.do")
	public String memberDelete(@RequestParam String memberEmail,HttpSession session){
		service.deleteMember(memberEmail);
		session.invalidate();
		return "redirect:/main.do";
	}
	
	/******************본인 인증*********************/
	@RequestMapping(value="/identification.do", method=RequestMethod.POST)
	public String memberIdentification(@RequestParam MultipartFile memberPictureFile, HttpSession session, HttpServletRequest request) throws IllegalStateException, IOException{
		MemberVo loginInfo = (MemberVo)session.getAttribute("login_info");
		
		MultipartFile file = memberPictureFile;
		String fileName = "";
		if(file!=null && !file.isEmpty()){
			fileName = UUID.randomUUID().toString().replaceAll("-","");
			File picture = new File(request.getServletContext().getRealPath("/memberIdentification"), fileName);
			file.transferTo(picture);
			if(loginInfo.getMemberPicture()!=null){
				File oldPic = new File(request.getServletContext().getRealPath("/memberIdentification"), loginInfo.getMemberPicture());
				oldPic.delete();
			}
			loginInfo.setMemberIdentification(fileName);
		}
		service.updateMember(loginInfo);
		return "redirect:/modifyandcertified.do";
	}
	
	/******************프로필사진 삭제***************************/
	@RequestMapping("/memberpictureremove.do")
	public String memberPictureRemove(HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		String memberPicture = member.getMemberPicture();
		service.deleteMemberPicture(memberPicture);
		member.setMemberPicture(null);
		return "redirect:/modifyandcertified.do";
	}
	
	/****************howgetmoney조회********************/
	@RequestMapping("/howgetmoneyfind.do")
	public String howgetmoneyFind(ModelMap map, HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		String memberEmail = member.getMemberEmail();
		List<HowgetmoneyVo> howgetmoneyList = service.selectHowgetmoney(memberEmail);
		map.addAttribute("howgetmoneyList",howgetmoneyList);
		return "accountmanagement/accountmanagement/payout_preference.tiles1";
	}
	
	/*********************howgetmoney삭제**********************************/
	@RequestMapping("/howgetmoneyRemove.do")
	public String howgetmoneyRemove(@RequestParam int accountSerial, HttpServletRequest request){
		service.deleteHowgetmoney(accountSerial);
		return "redirect:/member/howgetmoneyfind.do";
	}
	
	/********************howgetmoney등록*************************/
	@RequestMapping("/howgetmoneyRegister.do")
	public String howgetmoneyRegister(@ModelAttribute HowgetmoneyVo howgetmoney){
		service.insertHowgetmoney(howgetmoney);
		return "redirect:/member/howgetmoneyfind.do";
	}
	
	
	
	/**********************houseZzim 등록**********************************/
	
	public String houseZzimInsert(@RequestParam String memberEmail, @RequestParam int houseSerial){
		HouseZzimVo houseZzim = new HouseZzimVo(0, houseSerial, memberEmail);
		service.insertHouseZzim(houseZzim);
		return "숙소상세페이지로";
	}
	
	/***********************housezzim 삭제***************************************/
	
	public String houseZzimRemove(@RequestParam int houseZzimSerial){
		service.deleteHouseZzimByEmail(houseZzimSerial);
		return null;
	}
	
	/***********************houseComment 등록*****************************************/
	
	public String houseCommentInsert(@ModelAttribute HouseCommentVo houseComment){
		service.insertHouseComment(houseComment);
		return "숙소상세페이지로";
	}
	
	/***********************houseComment 삭제*****************************************/
	
	public String houseCommentDelete(@RequestParam int commentSerial){
		service.deleteHouseComment(commentSerial);
		return "숙소상세페이지로";
	}
	
	/***********************houseComment 수정*****************************************/
	
	public String houseCommentModify(@ModelAttribute HouseCommentVo houseComment){
		service.modifyHouseComment(houseComment);
		return "숙소상세페이지로";
	}
	
	/**********************숙소상세페이지에서 최초로 받은 메세지만 받고 넘긴다.*******************/
	@RequestMapping("/chatting.do")
	public String chattingRoomCreate(/*@RequestParam String chattingPartner,*/ @RequestParam String memberEmail){
		int chattingNumber = 0;
		String chattingPartner = "ask13021123@naver.com";
		ChattingVo chatting = service.findByChatting(chattingPartner, memberEmail);
		if(chatting==null){//채팅방이 없으면 만들고. 번호 주고
			service.createChatting(new ChattingVo(0, chattingPartner, memberEmail));
			chattingNumber = service.findByChatting(chattingPartner, memberEmail).getChattingNumber();
		}else{//채팅방이 있으면 번호만 주고.
			chattingNumber = service.findByChatting(chattingPartner, memberEmail).getChattingNumber();
		}
		
		
		return "redirect:/member/chattingfind.do?chattingNumber="+chattingNumber;
	}
	
	/******************채팅 조회*****************/
	@RequestMapping("/chattingfind.do")
	public String chattingFind(HttpSession session, ModelMap map,HttpServletRequest request){
		String returnChattingNumber = null;
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		String memberEmail = member.getMemberEmail();
		List<ChattingVo> chatting = service.selectJoinChattingAndChattingLog(memberEmail);
		for(int i = 0; i<chatting.size();i++){
			for(int j= 0; j<chatting.get(i).getChattingLog().size();j++){
				TextUtil tu = new TextUtil();
				String a = tu.htmlToText(chatting.get(i).getChattingLog().get(j).getChattingContent());
				chatting.get(i).getChattingLog().get(j).setChattingContent(a);
			}
		}
		
		map.addAttribute("chatting", chatting);
		if(request.getParameter("returnChattingNumber")!=null){
			returnChattingNumber = request.getParameter("returnChattingNumber");
			request.setAttribute("returnChattingNumber", returnChattingNumber);
		}
		return "message/message/message.tiles1";
	}
	
	/***********************채팅로그 생성 처리*************************/
	@RequestMapping("/chattinglog.do")
	public String chattingLogInsert(@ModelAttribute ChattingLogVo chattingLog,ModelMap map){
		if(chattingLog.getChattingContent()==null||chattingLog.getChattingContent().trim().length()<1){
			return "redirect:/member/chattingfind.do?returnChattingNumber="+chattingLog.getChattingNumber();
		}
		TextUtil tu = new TextUtil();
		chattingLog.setChattingContent(tu.textToHtml(chattingLog.getChattingContent()));
		chattingLog.setChattingTime(new Date());
		service.insertChattingLog(chattingLog);
		return "redirect:/member/chattingfind.do?returnChattingNumber="+chattingLog.getChattingNumber();
	}
	
	/*********************내가 찜한 숙소 조회**********************/
	@RequestMapping("/housezzimfind.do")
	public String houseZzimFindEmail(ModelMap map, HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		String memberEmail = member.getMemberEmail();
		List<HouseZzimVo> houseZzim = service.selectHouseZzimByEmail(memberEmail);
		map.addAttribute("houseZzim", houseZzim);
		return "forward:/wishlist.do";
	}
	
	
	
	/**********************내가 작성한 숙소댓글*********************/
	@RequestMapping("/housecommentfind.do")
	@ResponseBody
	public List<HouseCommentVo> houseCommentFind(HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		String memberEmail = member.getMemberEmail();
		List<HouseCommentVo> houseComment = service.select(memberEmail);
		System.out.println(houseComment);
		return houseComment;
	}
	
	
	/*****************************/
	
	/**
	 * 신용카드 등록
	 */
	@RequestMapping("registerPayment.do")
	public String registerPayment(@ModelAttribute PaymentVo payment, HttpSession session, HttpServletRequest request){
		String memberEmail = null;
		try {
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
		} catch (Exception e) {
			return "redirect:/";	// 비로그인 상태면 메인으로 이동
		}
		
		String yy = "20" + request.getParameter("yy"); //유효기간 년도
		String mm = request.getParameter("mm");	// 유효기간 월
		/*
		String date = yy+"/"+mm; //유효기간 년 월 합쳐서 데이트 객체 생성
		System.out.println(date);
		*/
		
		Date cardExpiration = new Date(); //유효기간
		cardExpiration.setYear(Integer.parseInt(yy)-1900);
		cardExpiration.setMonth(Integer.parseInt(mm)-1); //0월(1월) 부터 시작
		
		
		
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
			memberEmail = ((MemberVo)session.getAttribute("login_info")).getMemberEmail(); // 이메일
			
			cardSerial = Integer.parseInt(request.getParameter("cardSerial"));
			servMemberEmail = service.getPaymentByCardSerial(cardSerial).getMemberEmail();
		} catch (Exception e) {
			return new ModelAndView("redirect:/");	// 비로그 or 카드 시리얼 못 불러 오면 메인으로 이동
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
