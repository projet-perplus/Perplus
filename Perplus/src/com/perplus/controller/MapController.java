package com.perplus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perplus.house.service.HouseService;
import com.perplus.review.service.ReviewService;

@Controller
@RequestMapping("/map/")
public class MapController {
	
	@Autowired
	private HouseService houseService;
	
	@Autowired
	private ReviewService reviewService;
}
