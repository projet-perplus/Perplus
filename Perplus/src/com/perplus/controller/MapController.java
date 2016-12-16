package com.perplus.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perplus.house.service.HouseService;
import com.perplus.member.vo.MemberVo;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewVo;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@Autowired
	private HouseService houseService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/markerall.do")
	@ResponseBody
	public List<ReviewVo> placeAllReviewMarker(@RequestParam String southWestLat,
			@RequestParam String southWestLng, @RequestParam String northEastLat, @RequestParam String northEastLng) throws Exception{
		HashMap<String,Double> map = new HashMap<>();
		System.out.println(southWestLat);
		map.put("southWestLat", Double.parseDouble(southWestLat));
		map.put("southWestLng", Double.parseDouble(southWestLng));
		map.put("northEastLat", Double.parseDouble(northEastLat));
		map.put("northEastLng", Double.parseDouble(northEastLng));
		List<ReviewVo> reviewList = reviewService.selectMarkerBySection(map);
		System.out.println(reviewList);
		return reviewList;
	}
	@RequestMapping("/logininfo.do")
	@ResponseBody
	public MemberVo getLoginInfo(HttpSession session){
		MemberVo member = (MemberVo) session.getAttribute("login_info");
		System.out.println(member);
		return member;
	}
	@RequestMapping("/selectedreview.do")
	public ReviewVo getReviewByMarker(@RequestParam String lat,	@RequestParam String lng){
		
		return null;
	}
}
