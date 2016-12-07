//package com.perplus.controller;
//
//import java.io.File;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.BeanUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.perplus.member.vo.MemberVo;
//import com.perplus.review.service.ReviewService;
//import com.perplus.review.vo.ReviewCommentVo;
//import com.perplus.review.vo.ReviewPictureVo;
//import com.perplus.review.vo.ReviewVo;
//
//@Controller
//@RequestMapping("/review")
//public class ReviewController {
//	@Autowired
//	private ReviewService service;
//	
//	/******************리뷰 글 등록*****************/
//	@RequestMapping(value="/registerReview", method=RequestMethod.POST)
//	public String registerReview(@ModelAttribute ReviewVo reviewVo, @ModelAttribute ReviewPictureVo reviewPictureVo, HttpServletRequest request) throws IllegalStateException, IOException{
//		ReviewPictureVo picture = new ReviewPictureVo();
//		BeanUtils.copyProperties(reviewPictureVo, picture);
//		ArrayList list = new ArrayList();
//		List files = picture.getPictureList();
//		HttpSession session =request.getSession();
///*		MemberVo member = session.getAttribute("member");
//		reviewVo.setMemberEmail(member.getMemberEmail());*/
//		service.registerReview(reviewVo);
//		
//		if(files != null && !files.isEmpty()){
//			String saveDir = request.getServletContext().getRealPath("/경로 입력");
//			int count =1;
//			for(Object f : files){
//				MultipartFile file = (MultipartFile)f;
//				if(!file.isEmpty()){
//					String fileName = file.getOriginalFilename();
//					File dest = new File(saveDir,fileName);
//					file.transferTo(dest);
//					picture.setPictureName(fileName);
//					picture.setPictureOrder(count);
//					count++;
//					picture.setPictureSerial(1);
//					picture.setReviewSerial(reviewVo.getReviewSerial());
//					list.add(picture);
//				}
//			}
//		}
//		service.registerReviewPicture(list);
//		return "리뷰상세보기페이지~? 리뷰 등록 성공페이지?";
//	}
//	/******************리뷰 글 수정*****************/
//	
//	
//	
//	
//	/*****************리뷰 글 삭제*****************/
//	
//	
//	
//	
//	/******************리뷰 코멘트 등록*****************/
//	@RequestMapping("")
//	public String registerReviewComment(@ModelAttribute ReviewCommentVo reviewComment, @RequestParam int reviewSerial){
//		reviewComment.setReviewSerial(reviewSerial);
//		service.registerReviewComment(reviewComment);
//		return"리뷰 상세보기 페이지";
//	}
//	/*******************리뷰 코멘트 수정****************/
//	@RequestMapping("")
//	public String modifyReviewComment(@ModelAttribute ReviewCommentVo reviewComment, @RequestParam int reviewSerial){
//		reviewComment.setReviewSerial(reviewSerial);
//		service.modifyReviewComment(reviewComment);
//		return"리뷰 상세보기 페이지";
//	}
//	/******************리뷰 코멘트 삭제*****************/
//	@RequestMapping("")
//	public String removeReviewComment(@RequestParam int	commentSerial){
//		service.removeReviewComment(commentSerial);
//		return"리뷰상세보기페이지";
//	}
//	/******************리뷰 상세 보기*****************/
//	@RequestMapping("")
//	public String selectReview(@RequestParam int reviewSerial,ModelMap map,@RequestParam(defaultValue="1") int page){
//		ReviewVo review = service.getReview(reviewSerial);
//		List<ReviewPictureVo> reviewPictures= service.getReviewPictureList(reviewSerial);
//		Map comments= service.getReviewCommentList(reviewSerial, page);
//		map.put("review", review);
//		map.put("pictures", reviewPictures);
//		map.put("comments", comments);
//		return "리뷰 조회페이지";
//	}
//
//}
