package com.perplus.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService service;
	
	/*********************리뷰 글 등록
	 * @throws IOException 
	 * @throws IllegalStateException ***********************/
	@RequestMapping(value="/registerReview", method=RequestMethod.POST)
	public String registerReview(@ModelAttribute ReviewVo reviewVo, @ModelAttribute ReviewPictureVo reviewPictureVo, HttpServletRequest request) throws IllegalStateException, IOException{
		ReviewPictureVo picture = new ReviewPictureVo();
		BeanUtils.copyProperties(reviewPictureVo, picture);
		ArrayList list = new ArrayList();
		List files = picture.getPictureList();
		Map<String,Object> map = new HashMap<>();
		int count =1;
		if(files != null && !files.isEmpty()){
			String saveDir = request.getServletContext().getRealPath("/경로 입력");
			for(Object f : files){
				MultipartFile file = (MultipartFile)f;
				if(!file.isEmpty()){
					String fileName = file.getOriginalFilename();
					File dest = new File(saveDir,fileName);
					file.transferTo(dest);
					picture.setPictureName(fileName);
					picture.setPictureOrder(count);
					count++;
					picture.setPictureSerial(1);
					picture.setReviewSerial(reviewVo.getReviewSerial());
					list.add(picture);
				}
				count=0;
			}
		}
		map.put("list", list);
		map.put("review", reviewVo);
		return null;
	}

}
