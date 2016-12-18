package com.perplus.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.perplus.house.serviceimpl.HouseServiceImpl_choi;
import com.perplus.house.vo.HouseFilterVo;
import com.perplus.house.vo.HouseVo;

@Controller
@RequestMapping("/house")
public class HouseController_choi {
	
	@Autowired
	private HouseServiceImpl_choi service;
	
	@RequestMapping("/oneStep.do")
	public String oneStepHouseRegister(@ModelAttribute HouseVo houseVo, HttpServletRequest request){
		String houseNecessaryCondition = null;
		String[] houseNecessaryConditionList = (String[])request.getParameterValues("houseNecessaryConditionList");
		if(houseNecessaryConditionList!=null){
			for(int i = 0; i<houseNecessaryConditionList.length;i++){
				if(i==0){
					houseNecessaryCondition = houseNecessaryConditionList[i];
				}else{
					houseNecessaryCondition = houseNecessaryCondition + ", "+houseNecessaryConditionList[i];
				}
			}
		}else{
			houseNecessaryCondition = "";			
		}
		houseVo.setHouseNecessaryCondition(houseNecessaryCondition);
		service.insertHouse(houseVo);
		return "redirect:/housetypeandlocation.do?houseSerial="+houseVo.getHouseSerial();
	}
	
	@RequestMapping("/twoStep.do")
	public String twoStepHouseRegister(@ModelAttribute HouseFilterVo houseFilterVo,HttpServletRequest request){
		String[] houseFilterLocationList = (String[])request.getParameterValues("houseFilterLocationList");
		String houseFilterLocation = "";
		for(int i = 0; i<houseFilterLocationList.length;i++){
			if(i==0){
				houseFilterLocation = houseFilterLocationList[i];
			}else{
				houseFilterLocation = houseFilterLocation +", "+houseFilterLocationList[i];
			}
		}
		houseFilterVo.setHouseFilterLocation(houseFilterLocation);
		
		service.insertHouseFilter(houseFilterVo);
		
		return "redirect:/houselocation.do?houseSerial="+houseFilterVo.getHouseSerial();
	}
	
	@RequestMapping("/threeStep.do")
	public String threeStepHouseRegister(){
		System.out.println("threeStep");
		return "redirect:/housefacility.do";
	}
	
	@RequestMapping("/fourStep.do")
	public String fourStepHouseRegister(){
		System.out.println("fourStep");
		return "redirect:/houseimageenrollment.do";
	}
	
	@RequestMapping("/fiveStep.do")
	public String fiveStepHouseRegister(){
		System.out.println("fiveStep");
		return "redirect:/houseschedulemanagement.do";
	}
	
	@RequestMapping("/sixStep.do")
	public String sixStepHouseRegister(){
		System.out.println("sixStep");
		return "redirect:/houseshutdowndate.do";
	}
	
	@RequestMapping("/sevenStep.do")
	public String sevenStepHouseRegister(){
		System.out.println("sevenStep");
		return "redirect:/houseprice.do";
	}
	
	@RequestMapping("/eightStep.do")
	public String eightStepHouseRegister(){
		System.out.println("eightStep");
		return "redirect:/hostingcomplate.do";
	}
	
	
}
