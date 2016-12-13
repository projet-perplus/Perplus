package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.perplus.member.service.MemberService;
import com.perplus.member.vo.ChattingLogVo;
import com.perplus.member.vo.ChattingVo;
import com.perplus.member.vo.HouseCommentVo;
import com.perplus.member.vo.HouseZzimVo;
import com.perplus.member.vo.HowgetmoneyVo;
import com.perplus.member.vo.MemberVo;


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

	/*******************멤버 정보 수정
	 * @throws IOException 
	 * @throws IllegalStateException *************************/
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
		System.out.println(memberEmail);
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
	public String chattingFind(HttpSession session, ModelMap map){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		String memberEmail = member.getMemberEmail();		
		List<ChattingVo> chatting = service.selectJoinChattingAndChattingLog(memberEmail);
		System.out.println(chatting);
		map.addAttribute("chatting", chatting);
		return "message/message/message.tiles1";
	}
	
	/***********************채팅로그 생성 ajax처리*************************/
	@RequestMapping("/chattingLog.do")
	@ResponseBody
	public Map<String, Object> chattingLogInsert(@ModelAttribute ChattingLogVo chattingLog){
		chattingLog.setChattingTime(new Date());
		service.insertChattingLog(chattingLog);
		List<ChattingLogVo> list = service.selectChattingLog(chattingLog.getChattingNumber());
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		return map;
	}
	
	/*****************************/
	
}
