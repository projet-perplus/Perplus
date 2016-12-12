package com.perplus.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perplus.house.service.HouseService;
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
		System.out.println("33");
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
}
