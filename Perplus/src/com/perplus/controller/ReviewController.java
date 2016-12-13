
package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.perplus.member.vo.MemberVo;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService service;
	/*****************************로그인 체크 필요***********************************/
	
	/******************리뷰 글 등록*****************/
	@RequestMapping(value="/registerReview.do", method=RequestMethod.POST)
	public String registerReview(@ModelAttribute ReviewVo reviewVo, @ModelAttribute ReviewPictureVo picture,ModelMap map, HttpServletRequest request, HttpSession session)
												throws IllegalStateException, IOException{
		//ReviewPictureVo picture = new ReviewPictureVo();
		//BeanUtils.copyProperties(reviewPictureVo, picture);		
		System.out.println(reviewVo);
	/*	List<ReviewPictureVo> list = new ArrayList<>();*/
		List<MultipartFile> files = picture.getPictureList();
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		int count = 1;
		System.out.println(member);
		reviewVo.setMemberEmail(member.getMemberEmail());
		reviewVo.setReviewMarkerConstant(2);//******
		reviewVo.setReviewMarkerX(23.5);	//*********
		reviewVo.setReviewMarkerY(63.2); //************
		System.out.println(reviewVo);
		service.registerReview(reviewVo);
		map.addAttribute("review",reviewVo);
		
		if(files != null){
			String saveDir = request.getServletContext().getRealPath("/uploadReviewPicture");
			for(Object f : files){
				MultipartFile file = (MultipartFile)f;
				if(!file.isEmpty()){
					
					String fileName = UUID.randomUUID().toString().replace("-", "");//UUID를 이용해 파일명 생성(- 제거)
					File dest = new File(saveDir,fileName);
					file.transferTo(dest);
					picture.setPictureName(fileName);
					picture.setPictureOrder(count);
					picture.setPictureSerial(1);
					picture.setReviewSerial(reviewVo.getReviewSerial());
					count++;
					service.registerReviewPicture(picture);
				}
				System.out.println();
			}
		}
		List<ReviewPictureVo> list= service.getReviewPictureList(reviewVo.getReviewSerial());
		map.addAttribute("picture",list);
		return "reviewdetailpage.hotplacetiles";
	}
	/******************리뷰 정보 가져오는 controller********************/
	@RequestMapping("/reviewInfo")
	public String reviewInfo(@RequestParam int reviewSerial,ModelMap map,HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		ReviewVo review = service.getReview(reviewSerial);
		review.setReviewPicture( service.getReviewPictureList(reviewSerial));
/*		if(!review.getMemberEmail().equals(member.getMemberEmail())){
			return "권한없습니다~";
		}	*/
		map.addAttribute("review", review);
		return "/WEB-INF/view/dialog/reviewmodify.jsp";
	}
	
	/******************리뷰 글 수정*****************/
	@RequestMapping(value="/modifyReview", method=RequestMethod.POST)
	public String modifyReview(@ModelAttribute ReviewVo review, @RequestParam int reviewSerial,@ModelAttribute ReviewPictureVo picture, HttpServletRequest request) throws IllegalStateException, IOException{
		ReviewVo oldReview = service.getReview(reviewSerial);
		review.setMemberEmail(oldReview.getMemberEmail());
		review.setReviewSerial(oldReview.getReviewSerial());
		review.setReviewMarkerConstant(oldReview.getReviewMarkerConstant());
		review.setReviewMarkerX(oldReview.getReviewMarkerX());
		review.setReviewMarkerY(oldReview.getReviewMarkerY());
		service.modifyReview(review);
		
		List<ReviewPictureVo> oldPicture = service.getReviewPictureList(reviewSerial);
		List<MultipartFile> files = picture.getPictureList();
	
		String newFileName=  null;
		System.out.println("---------------------");
		System.out.println(reviewSerial);
		service.removeReviewPicture(reviewSerial);
		if(files != null && !files.isEmpty()){
			int count =1;
			for(Object f : files){
				MultipartFile file = (MultipartFile)f;
				if(!file.isEmpty()){
					newFileName = UUID.randomUUID().toString().replace("-", "");
					File newPicture= new File(request.getServletContext().getRealPath("/uploadReviewPicture"),newFileName);
					file.transferTo(newPicture);
					picture.setPictureName(newFileName);
					picture.setPictureOrder(count);
					picture.setPictureSerial(1);
					picture.setReviewSerial(reviewSerial);
					count++;
					service.registerReviewPicture(picture);
				}
			}
			for(int i =0 ; i< oldPicture.size();i++){
				File oldPic =  new File(request.getServletContext().getRealPath("/uploadReviewPicture"),oldPicture.get(i).getPictureName());
				oldPic.delete();
			}
		}
		
		return"redirect:/review/showReview.do?&reviewSerial="+reviewSerial;
	}
	
	/*****************리뷰 글 삭제*****************/
	//이메일 체크~ session의 email과 리뷰의 email 같지 x으면 삭제x &&로그인 체크
	@RequestMapping("/removeReview")
	public String removeReview(@RequestParam int reviewSerial/*, @RequestParam String memberEmail*/, HttpSession session){
		//MemberVo member = (MemberVo)session.getAttribute("login_info");
/*		if(!memberEmail.equals(member.getMemberEmail())){
			return"에러페이지";
		}*/
		service.removeReview(reviewSerial);	
		return"redirect:/hotplace.do";
	}
	
	/******************리뷰 코멘트 등록*****************/
	@RequestMapping("/registerReviewComment.do")
	public String registerReviewComment(@ModelAttribute ReviewCommentVo reviewComment,ModelMap map, HttpServletRequest request,HttpSession session){
		
		Date d =new Date();
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		//int reviewSerial = 43;  //******requestParameter로 읽어들여야함!!
		reviewComment.setMemberEmail(member.getMemberEmail());
		reviewComment.setCommentTime(d);
		//reviewComment.setReviewSerial(reviewSerial);
		System.out.println(reviewComment);
		service.registerReviewComment(reviewComment);
		//map.put("reviewSerial", reviewSerial);
		return"redirect:/review/showReview.do?&reviewSerial="+reviewComment.getReviewSerial();
	}
	
	/*******************리뷰 코멘트 수정****************/
	@RequestMapping("/modifyReviewComment.do")
	public String modifyReviewComment(@ModelAttribute ReviewCommentVo reviewComment, @RequestParam int reviewSerial, HttpSession session){
		//이메일 체크~ session의 email과 코멘트의 email 같지 x으면 수정x
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		if(!reviewComment.getMemberEmail().equals(member.getMemberEmail())){
			return"에러페이지";
		}
		reviewComment.setReviewSerial(reviewSerial);
		service.modifyReviewComment(reviewComment);
		return"리뷰 상세보기 페이지";
	}
	
	/******************리뷰 코멘트 삭제*****************/
	@RequestMapping("/removeReviewComment")
	public String removeReviewComment(@RequestParam int	commentSerial,@RequestParam int reviewSerial/*,@RequestParam String memberEmail*/, HttpSession session){
		//이메일 체크~ session의 email과 코멘트의 email 같지 x으면 삭제x
		MemberVo member = (MemberVo)session.getAttribute("login_info");
/*		if(!memberEmail.equals(member.getMemberEmail())){
			return"에러페이지";
		}*/
		service.removeReviewComment(commentSerial);
		return"redirect:/review/showReview.do?&reviewSerial="+reviewSerial;
	}
	
	/**************로그인 체크 필요 없음******************/
	
	/******************리뷰 상세 보기*****************/
	@RequestMapping("/showReview")
	public String selectReview(@RequestParam int reviewSerial,ModelMap modelMap,@RequestParam(defaultValue="1") int page){
		ReviewVo review = service.getReview(reviewSerial);
		Map map= service.getReviewCommentList(reviewSerial, page);
		List<ReviewPictureVo> list = service.getReviewPictureList(reviewSerial);
		//review.setReviewPicture(service.getReviewPictureList(reviewSerial));
		review.setReviewComment((List<ReviewCommentVo>)map.get("list"));
		System.out.println(review);
		modelMap.put("review", review);
		modelMap.put("picture", list);
		modelMap.put("pageBean", map.get("pageBean"));
		return "reviewdetailpage.hotplacetiles";
	}
	
	
	public String selectMarkerBySection(HashMap map){
		return "reviewdetailpage.hotplacetiles";
	}
}
