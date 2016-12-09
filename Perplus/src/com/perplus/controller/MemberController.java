package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.util.BeanUtil;
import com.perplus.member.service.MemberService;
import com.perplus.member.vo.MemberVo;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	/*****************회원가입***************/
	@RequestMapping("/join.do")
	public String joinMember(@ModelAttribute MemberVo member, BindingResult result, HttpServletRequest request)throws Exception{
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		if(mm.length()<2){
			mm = "0"+mm;
		}
		String dd = request.getParameter("dd");
		if(dd.length()<2){
			dd = "0"+dd;
		}
		String memberBirthday = yy+mm+dd;
		member.setMemberBirthday(memberBirthday);
		service.joinMember(member);
		return "redirect:/main.do";
	}
	
	/**********email 중복여부 ajax요청 처리*************/
	@RequestMapping("/emailCheck.do")
	@ResponseBody
	public Map<String, Boolean> emailDuplicateCheck(@RequestParam String email){
		System.out.println(email);
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
	public String modify(@ModelAttribute MemberVo newData, BindingResult result, HttpServletRequest request, HttpSession session) throws IllegalStateException, IOException{
		MemberVo loginInfo =  (MemberVo)session.getAttribute("login_info");
		
		String memberBirthday = request.getParameter("birthdayYY")+request.getParameter("birthdayMM")+request.getParameter("birthdayDD");
		newData.setMemberBirthday(memberBirthday);
		
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
}



