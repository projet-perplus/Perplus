package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.perplus.member.service.MemberService;
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
	
	
	
}



