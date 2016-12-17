
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
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
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

import com.perplus.member.vo.MemberVo;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;
import com.perplus.util.TextUtil;
import com.perplus.validator.ReviewForm;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService service;
	/*****************************로그인 체크 필요***********************************/
	
	/******************리뷰 글 등록*****************/
	@RequestMapping(value="/registerReview.do", method=RequestMethod.POST)
	public String registerReview(@Valid @ModelAttribute /* ReviewVo*/ReviewForm form, BindingResult result, @ModelAttribute ReviewPictureVo picture,ModelMap map, HttpServletRequest request, HttpSession session)
												throws IllegalStateException, IOException{

		boolean error=false;
		if(result.hasErrors()){
			error=true;
			request.setAttribute("error", error);
			return "travelhotplace.hotplacetiles";
		}
		ReviewVo reviewVo = new ReviewVo();
		BeanUtils.copyProperties(form, reviewVo);
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
		//공백.엔터처리
		reviewVo.setReviewContent(TextUtil.textToHtml(reviewVo.getReviewContent()));
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
			}
		}
		List<ReviewPictureVo> list= service.getReviewPictureList(reviewVo.getReviewSerial());
		map.addAttribute("picture",list);
		return "reviewdetailpage.hotplacetiles";
	}
	
	/******************내가 작성한 리뷰 조회 controller(ajax)*******************/
	@RequestMapping("/myReview.do")
	@ResponseBody
	public List<ReviewVo> myReview(HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		HashMap<String,Object> map = new HashMap<>();
		System.out.println(member);
		List<ReviewVo> list = service.getMyReview(member.getMemberEmail());
		System.out.println(list);
		return list;
	}
	/******************리뷰 정보 가져오는 controller********************/
/*	@RequestMapping("/reviewInfo.do")
	public String reviewInfo(@RequestParam int reviewSerial,ModelMap map,HttpSession session){
		MemberVo member = (MemberVo)session.getAttribute("login_info");
		ReviewVo review = service.getReview(reviewSerial);
		//review.setReviewPicture( service.getReviewPictureList(reviewSerial));
		System.out.println(review);
		//html코드를 text로 변환
		String textChange=TextUtil.htmlToText(review.getReviewContent());
		review.setReviewContent(textChange);
		map.addAttribute("review", review);
		return "null";
	}*/
	
	/******************리뷰 글 수정*****************/
	@RequestMapping(value="/modifyReview", method=RequestMethod.POST)
	public String modifyReview(@ModelAttribute ReviewVo review, @RequestParam int reviewSerial,@ModelAttribute ReviewPictureVo picture, HttpServletRequest request) throws IllegalStateException, IOException{
		ReviewVo oldReview = service.getReview(reviewSerial);
		review.setMemberEmail(oldReview.getMemberEmail());
		review.setReviewSerial(oldReview.getReviewSerial());
		review.setReviewMarkerConstant(oldReview.getReviewMarkerConstant());
		review.setReviewMarkerX(oldReview.getReviewMarkerX());
		review.setReviewMarkerY(oldReview.getReviewMarkerY());
		//공백.엔터처리
		review.setReviewContent(TextUtil.textToHtml(review.getReviewContent()));
		service.modifyReview(review);
		
		List<ReviewPictureVo> oldPicture = service.getReviewPictureList(reviewSerial);
		List<MultipartFile> files = picture.getPictureList();
	
		String newFileName=  null;
		System.out.println("---------------------");
		System.out.println(reviewSerial);
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
	public String removeReview(@RequestParam int reviewSerial, HttpSession session){		
		service.removeReview(reviewSerial);	
		return"redirect:/hotplace.do";
	}
	
	/******************리뷰 코멘트 등록*****************/
	@RequestMapping("/registerReviewComment.do")
	public String registerReviewComment(@ModelAttribute ReviewCommentVo reviewComment,ModelMap map){
		reviewComment.setCommentTime(new Date());
		reviewComment.setCommentContent(TextUtil.textToHtml(reviewComment.getCommentContent()));
		System.out.println(reviewComment);
		service.registerReviewComment(reviewComment);
		
		return"redirect:/review/showReview.do?&reviewSerial="+reviewComment.getReviewSerial();
	}
	
	/*******************리뷰 코멘트 수정****************/
	@RequestMapping("/modifyReviewComment.do")
	public String modifyReviewComment(@ModelAttribute ReviewCommentVo reviewComment){
		//이메일 체크~ session의 email과 코멘트의 email 같지 x으면 수정x
		reviewComment.setCommentTime(new Date());
		reviewComment.setCommentContent(TextUtil.textToHtml(reviewComment.getCommentContent()));
		System.out.println(reviewComment);
		service.modifyReviewComment(reviewComment);
		return"redirect:/review/showReview.do?&reviewSerial="+reviewComment.getReviewSerial();
	}
	
	/******************리뷰 코멘트 삭제*****************/
	@RequestMapping("/removeReviewComment")
	public String removeReviewComment(@RequestParam int	commentSerial,@RequestParam int reviewSerial){		
		service.removeReviewComment(commentSerial);
		return"redirect:/review/showReview.do?&reviewSerial="+reviewSerial;
	}
	
	/**************로그인 체크 필요 없음******************/
	
	/******************리뷰 상세 보기*****************/
	@RequestMapping("/showReview")
	public String selectReview(@RequestParam int reviewSerial,ModelMap modelMap,@RequestParam(defaultValue="1") int page){
		ReviewVo review = service.getReview(reviewSerial);
		Map<String,Object> map= service.getReviewCommentList(reviewSerial, page);
		List<ReviewPictureVo> list = service.getReviewPictureList(reviewSerial);
		
		review.setReviewComment((List<ReviewCommentVo>)map.get("list"));
		System.out.println(review);
		modelMap.put("review", review);
		modelMap.put("picture", list);
		modelMap.put("pageBean", map.get("pageBean"));
		
		return "reviewdetailpage.hotplacetiles";
	}
	
}
