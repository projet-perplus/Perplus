package com.perplus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.perplus.house.serviceimpl.HouseServiceImpl_choi;
import com.perplus.house.vo.CheckListVo;
import com.perplus.house.vo.CodetableVo;
import com.perplus.house.vo.HouseFilterVo;
import com.perplus.house.vo.HouseVo;

@Controller
@RequestMapping("/house")
public class HouseController_choi {
	
	@Autowired
	private HouseServiceImpl_choi service;
	
	
	@RequestMapping("/oneStepBefore.do")//1step 들어가기전에 필요한 정보들 조회 컨트롤러.
	public String oneStepBefore(){
		System.out.println("oneStepBefore.do");
		System.out.println();
		return "forward:/basicinfo.do";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/oneStep.do")//1step commit 하는 컨트롤러
	public String oneStepHouseRegister(@ModelAttribute HouseVo houseVo, HttpServletRequest request){
		System.out.println("oneStep.do");
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
		return "redirect:/house/twoStepBefore.do?houseSerial="+houseVo.getHouseSerial();
	}
	
	
	@RequestMapping("/twoStepBefore.do")//2step 들어가기전 조회하는 컨트롤러.
	public String twoStepBefore(@RequestParam int houseSerial){
		System.out.println("twoStepBefore.do");
		System.out.println();
		return "redirect:/housetypeandlocation.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/twoStep.do")//2step commit하는 컨트롤러
	public String twoStepHouseRegister(@ModelAttribute HouseFilterVo houseFilterVo,HttpServletRequest request){
		System.out.println("twoStep.do");
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
		
		request.setAttribute("location", houseFilterLocationList[1]);
		return "forward:/house/threeStepBefore.do?houseSerial="+houseFilterVo.getHouseSerial();
	}
	
	
	@RequestMapping("/threeStepBefore.do")//3step 들어가기전에 조회하는 것들...
	public String threeStepBefore(@RequestParam int houseSerial){
		System.out.println("threeStepBefore.do");
		System.out.println();
		return "forward:/houselocation.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/threeStep.do")//3step commit하는 컨트롤러
	public String threeStepHouseRegister(@RequestParam int houseSerial){
		System.out.println("threeStep");
		System.out.println(houseSerial);
		return "redirect:/house/fourStepBefore.do?houseSerial="+houseSerial;
	}
	
	@RequestMapping("/fourStepBefore.do")//4step 들어가기전에 조회하는 것들...
	public String fourStepBefore(@RequestParam int houseSerial, HttpServletRequest request){
		System.out.println("fourStepBefore.do");
		System.out.println();
		List<CodetableVo> convenientFacility = service.codetableFindByKind(1);//편의시설
		List<CodetableVo> secureFacility = service.codetableFindByKind(2);//안전시설
		List<CodetableVo> commonFacility = service.codetableFindByKind(3);//공용시설
		request.setAttribute("convenientFacility", convenientFacility);
		request.setAttribute("secureFacility", secureFacility);
		request.setAttribute("commonFacility", commonFacility);
		return "forward:/housefacility.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	
	@RequestMapping("/fourStep.do")//4step commit하는 컨트롤러
	public String fourStepHouseRegister(@RequestParam int houseSerial,HttpServletRequest request, @RequestParam int houseFilterBedroomNumber,@RequestParam int houseFilterBedNumber,@RequestParam int houseFilterBathroomNumber){
		String[] convenientFacilityList = request.getParameterValues("convenientFacility");//편의시설
		String[] secureFacilityList = request.getParameterValues("secureFacility");//안전시설
		String[] commonFacilityList = request.getParameterValues("commonFacility");//공용시설
		
		HouseFilterVo houseFilter = service.selectHouseFilter(houseSerial);
		
		houseFilter.setHouseFilterBedroomNumber(houseFilterBedroomNumber);
		houseFilter.setHouseFilterBedNumber(houseFilterBedNumber);
		houseFilter.setHouseFilterBathroomNumber(houseFilterBathroomNumber);
		
		
		if(convenientFacilityList!=null&&convenientFacilityList.length!=0){
			for(int i = 0; i<convenientFacilityList.length;i++){
				System.out.println(convenientFacilityList[i]);
				service.insertChecklist(new CheckListVo(0, houseSerial, 1, convenientFacilityList[i]));
			}
		}
		if(secureFacilityList!=null&&secureFacilityList.length!=0){
			for(int i = 0; i<secureFacilityList.length;i++){
				System.out.println(secureFacilityList[i]);
				service.insertChecklist(new CheckListVo(0, houseSerial, 1, secureFacilityList[i]));
			}
		}
		if(commonFacilityList!=null&&commonFacilityList.length!=0){
			for(int i = 0; i<commonFacilityList.length;i++){
				System.out.println(commonFacilityList[i]);
				service.insertChecklist(new CheckListVo(0, houseSerial, 1, commonFacilityList[i]));
			}
		}
		
		
		service.updateHouseFilter(houseFilter);
		System.out.println("fourStep");
		return "redirect:/house/fiveStepBefore.do?houseSerial="+houseSerial;
	}
	
	
	@RequestMapping("/fiveStepBefore.do")//5step 들어가기전에 조회하는 것들...
	public String fiveStepBefore(@RequestParam int houseSerial){
		System.out.println("fiveStepBefore.do");
		System.out.println();
		return "redirect:/houseimageenrollment.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	
	@RequestMapping("/fiveStep.do")//5step commit하는 컨트롤러 이미지 등록 극혐!!!!!!!!!!!!!!!!!!!!!!!!
	public String fiveStepHouseRegister(@RequestParam int houseSerial){
		System.out.println("fiveStep");
		return "redirect:/house/sixStepBefore.do?houseSerial="+houseSerial;
	}
	
	
	@RequestMapping("/sixStepBefore.do")//6step 들어가기전에 조회하는 것들...
	public String sixStepBefore(@RequestParam int houseSerial){
		System.out.println("sixStepBefore.do");
		System.out.println();
		return "redirect:/houseschedulemanagement.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	@RequestMapping("/sixStep.do")//6step commit하는 컨트롤러
	public String sixStepHouseRegister(@RequestParam int houseSerial){
		System.out.println("sixStep");
		return "redirect:/house/sevenStepBefore.do?houseSerial="+houseSerial;
	}
	
	
	@RequestMapping("/sevenStepBefore.do")//7step 들어가기전에 조회하는 것들...
	public String sevenStepBefore(@RequestParam int houseSerial){
		System.out.println("sevenStepBefore.do");
		System.out.println();
		return "redirect:/houseshutdowndate.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("/sevenStep.do")//7step commit하는 컨트롤러
	public String sevenStepHouseRegister(@RequestParam int houseSerial){
		System.out.println("sevenStep");
		return "redirect:/house/eightStepBefore.do?houseSerial="+houseSerial;
	}
	
	
	@RequestMapping("/eightStepBefore.do")//8step 들어가기전에 조회하는 것들...
	public String eightStepBefore(@RequestParam int houseSerial){
		System.out.println("eightStepBefore.do");
		System.out.println();
		return "redirect:/houseprice.do?houseSerial="+houseSerial;
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/eightStep.do")//8step commit하는 컨트롤러
	public String eightStepHouseRegister(){
		System.out.println("eightStep");
		return "redirect:/hostingcomplate.do";
	}	
}
