package com.perplus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService service;
	
/*	*//*********************리뷰 글 등록***********************//*
	@RequestMapping(value="/registerReview", method=RequestMethod.POST)
	public String registerReview(@ModelAttribute ReviewVo review, @ModelAttribute ReviewPictureVo	 reviewPicture){
		
	}*/
}
