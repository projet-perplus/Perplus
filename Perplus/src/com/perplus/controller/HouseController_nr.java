package com.perplus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.perplus.house.service.HouseService_nr;
import com.perplus.house.vo.HousePictureVo;
import com.perplus.house.vo.HouseVo;


@Controller
@RequestMapping("house")
public class HouseController_nr {
	
	@Autowired
	private HouseService_nr service;
	
	//숙소 상세 페이지 조회
	@RequestMapping("/houseDetail.do")
	public String getHouse(@RequestParam int houseSerial, ModelMap map){
		System.out.println(houseSerial);
		HouseVo house = service.selectHouseForDetailPage(houseSerial);
		List<HousePictureVo> picture= service.selelctHousePictureForDetailPage(houseSerial);
		house.setHousePicture(picture);
		return "housedetailspage.housetiles";
	}
	
}	
















