package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
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
	@RequestMapping(value="/login/registerReview", method=RequestMethod.POST)
	public String registerReview(@ModelAttribute ReviewVo reviewVo, @ModelAttribute ReviewPictureVo picture, HttpServletRequest request, HttpSession session)
												throws IllegalStateException, IOException{
		//ReviewPictureVo picture = new ReviewPictureVo();
		//BeanUtils.copyProperties(reviewPictureVo, picture);
		List<ReviewPictureVo> list = new ArrayList();
		List files = picture.getPictureList();
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		reviewVo.setMemberEmail(member.getMemberEmail());
		service.registerReview(reviewVo);
		
		if(files != null && !files.isEmpty()){
			String saveDir = request.getServletContext().getRealPath("/uploadReviewPicture");
			int count =1;
			
			for(Object f : files){
				MultipartFile file = (MultipartFile)f;
				if(!file.isEmpty()){
					String fileName = UUID.randomUUID().toString().replace("-", "");//UUID를 이용해 파일명 생성(- 제거)
					File dest = new File(saveDir,fileName);
					file.transferTo(dest);
					picture.setPictureName(fileName);
					picture.setPictureOrder(count);
					count++;
					picture.setPictureSerial(1);
					picture.setReviewSerial(reviewVo.getReviewSerial());
					list.add(picture);
				}
			}
		}
		service.registerReviewPicture(list);
		return "리뷰상세보기페이지~? 리뷰 등록 성공페이지?";
	}
	/******************리뷰 정보 가져오는 controller********************/
	@RequestMapping("/login/reviewInfo")
	public String reviewInfo(@RequestParam int reviewSerial,ModelMap map,HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		ReviewVo review = service.getReview(reviewSerial);
		review.setReviewPicture( service.getReviewPictureList(reviewSerial));
		if(!review.getMemberEmail().equals(member.getMemberEmail())){
			return "권한없습니다~";
		}	
		map.addAttribute("review", review);
		return "수정폼";
	}
	
	/******************리뷰 글 수정
	 * @throws IOException 
	 * @throws IllegalStateException *****************/
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
		List files = picture.getPictureList();
	
		List<ReviewPictureVo> newPictures = new ArrayList<>();
		String newFileName=  null;
		
		if(files != null && !files.isEmpty()){
			service.removeReviewPicture(reviewSerial);
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
					newPictures.add(picture);
					count++;
					service.registerReviewPicture(newPictures);
				}
			}
			for(int i =0 ; i< oldPicture.size();i++){
				File oldPic =  new File(request.getServletContext().getRealPath("/uploadReviewPicture"),oldPicture.get(i).getPictureName());
				oldPic.delete();
			}
		}
		
		return"수정완료폼";
	}
	
	/*****************리뷰 글 삭제*****************/
	//이메일 체크~ session의 email과 리뷰의 email 같지 x으면 삭제x &&로그인 체크
	@RequestMapping("/login/removeReview")
	public String removeReview(@RequestParam int reviewSerial, @RequestParam String memberEmail, HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		if(!memberEmail.equals(member.getMemberEmail())){
			return"에러페이지";
		}
		service.removeReview(reviewSerial);	
		return"지도페이지";
	}
	
	/******************리뷰 코멘트 등록*****************/
	@RequestMapping("/login/registerReviewComment")
	public String registerReviewComment(@ModelAttribute ReviewCommentVo reviewComment, @RequestParam int reviewSerial){
		reviewComment.setReviewSerial(reviewSerial);
		service.registerReviewComment(reviewComment);
		return"리뷰 상세보기 페이지";
	}
	
	/*******************리뷰 코멘트 수정****************/
	@RequestMapping("/login/modifyReviewComment")
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
	@RequestMapping("/login/removeReviewComment")
	public String removeReviewComment(@RequestParam int	commentSerial,@RequestParam String memberEmail, HttpSession session){
		//이메일 체크~ session의 email과 코멘트의 email 같지 x으면 삭제x
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		if(!memberEmail.equals(member.getMemberEmail())){
			return"에러페이지";
		}
		service.removeReviewComment(commentSerial);
		return"리뷰상세보기페이지";
	}
	
	/**************로그인 체크 필요 없음******************/
	
	/******************리뷰 상세 보기*****************/
	@RequestMapping("/showReview")
	public String selectReview(@RequestParam int reviewSerial,ModelMap modelMap,@RequestParam(defaultValue="1") int page){
		ReviewVo review = service.getReview(reviewSerial);
		Map map= service.getReviewCommentList(reviewSerial, page);
		review.setReviewPicture(service.getReviewPictureList(reviewSerial));
		review.setReviewComment((List<ReviewCommentVo>)map.get("list"));
		
		modelMap.put("review", review);
		modelMap.put("pageBean", map.get("pageBean"));
		
		return "리뷰 조회페이지";
	}
	

}
