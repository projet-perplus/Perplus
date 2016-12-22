package com.perplus.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.perplus.house.daoimpl.HouseDaoImpl;
import com.perplus.house.service.HouseService;
import com.perplus.house.vo.CodetableVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
import com.perplus.review.vo.ReviewVo;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@Autowired
	private HouseDaoImpl houseDao; 
	
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
	public String getReviewByMarker(@RequestParam String lat,ModelMap modelMap,	@RequestParam String lng,@RequestParam(defaultValue="1") int page) throws Exception{
		HashMap<String,Double> map = new HashMap<>();
		map.put("lat", Double.valueOf(lat));
		map.put("lng", Double.valueOf(lng));
		System.out.println(map);
		ReviewVo review = reviewService.selectReviewByMarker(map);
		int serial = review.getReviewSerial();
		Map<String,Object> retMap = reviewService.getReviewCommentList(serial,page);
		List<ReviewPictureVo> list = reviewService.getReviewPictureList(serial);
		review.setReviewComment((List<ReviewCommentVo>)retMap.get("list"));
		modelMap.put("review", review);
		modelMap.put("picture", list);
		modelMap.put("pageBean", retMap.get("pageBean"));
		return "reviewdetailPage.hotplacetiles";
	}
	//1. 최초 로딩때 location , 시작일, 종료일, 인원수 가 넘어오게 된다. 
	// -> ajax를 통해 일이 이루어 져야 하며 지도 상의 마커를 불러오는 것을 먼저 수행한다. 
	// 위와 상관없이 Map으로 넘어온 여러 값들을 Map<String, Object> map= new HashMap<>(); 와 같은 형식에 넣어서 보낸다.
	
	//	HashMap List
	//	1. endDay , startDay
	//	2. guestNumber
	//	3. wholeRoom , privateRoom , sharedRoom
	//	4. housePriceMin, housePriceMax
	//	5-1. bedRoomNumber , bathRoomNumber, bedNumber
	//	5-2. 각 체크리스트 key값 (코드테이블 참조)
	@RequestMapping("/showhousebymapandfilter.do")
	@ResponseBody
	public HashMap showHouseByMapAndFilter(@RequestBody String body, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException, ParseException{
		
		ObjectMapper mapper = new ObjectMapper(); 
		HashMap map = mapper.readValue(body,HashMap.class);
		HashMap result = new HashMap();  
		//1.먼저 돈이 0원인지 확인 한다.
		  
		 
		int priceRangeMin= (int) (map.get("housePriceRangeMin"));
		int priceRangeMax=(int) (map.get("housePriceRangeMax"));
		//최초 전체 숙소의 최대 최소 가격 범위 받기 (숙소가 최소 하나는 있다는 가정)
		if(priceRangeMin==0&&priceRangeMax==0){

			 
			result.put("priceRange", houseService.selectHousePriceRange());
			HashMap tmp = (HashMap) result.get("priceRange");
			map.put("housePriceMin",tmp.get("MIN"));
			map.put("housePriceMax",tmp.get("MAX"));   
		}    
		map.put("housePriceMin", map.get("housePriceMin"));
		map.put("housePriceMax", map.get("housePriceMax")); 
//		Calendar cal = Calendar.getInstan ce();
//		cal.setTime(new Date());
//		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
//		Object startDay = map.get("startDay");
//		Object endDay = map.get("endDay");
//		System.out.println(startDay);
//		System.out.println(endDay);
//		
//		if(startDay!=null && endDay==null){
//		//최초 시작일만 선택되었을때
////			Date edDay = fm.parse((String) map.get("endDay"));
//			String currentTime = fm.format(cal.getTime());
//			cal.add(Calendar.MONTH, 6);
//			String str = fm.format(cal.getTime());
//			System.out.println(str);
//			map.put("endDay", cal.getTime());
//			map.put("currentTime", currentTime);
//			 
//		}else if(startDay==null && endDay!=null){
//		//마지막 날만 선택되었을때
////			Date stDay = fm.parse((String) map.get("startDay"));
//			String currentTime = fm.format(cal.getTime());
//			String str = fm.format(cal.getTime());
//			map.put("startDay", str);
//			map.put("currentTime", cal.getTime());
//		}
//		//이외의 상황들은 선택이 아예 안되어 있는 경우이므로 배제하면 된다.
		
//		System.out.println(result); 
		/*
		 * 여기부터 두가지로 나뉘게 되는데
		 * 1. 기본적인 필터 변경에 의한 변경,
		 * 2. 추가필터 버튼에 의한 변경
		 * 위의 차이는 List로 넘어온 값이 있나 없나에 다르게 된다.
		 * 1 -> 기본 필터 , 좌표 , 
		 * 2 -> 기본 필터 , 좌표 ,
		 * 
		 * return value 는 돈의 범위 와 
		 */
//		System.out.println(houseService.selectHouseBySectionAndFilter(map));
		result.put("houseList", houseService.selectHouseBySectionAndFilter(map));
		//만약에 list가 생성이 되었다면 (list 내부가 비어도 상관 없음) 추가필터 버튼으로 넘어온 상태라는 것을 의미한다.
//		System.out.println(map);
//		result.put("houseList", houseService.selectHouseBySectionAndFilter(map));
		 
		
		 
//		System.out.println(result);
		
		return result;
	}
	
	@RequestMapping("/getaddfilterlist.do")
	@ResponseBody
	public HashMap getAddFilterList() { 
		HashMap result = new HashMap();
		List<CodetableVo> convenientFacility = houseService.codetableFindByKind(201);//편의시설
		List<CodetableVo> secureFacility = houseService.codetableFindByKind(202);//안전시설
		List<CodetableVo> commonFacility = houseService.codetableFindByKind(203);//공용시설
		result.put("convenientFacility", convenientFacility);
		result.put("secureFacility", secureFacility);
		result.put("commonFacility", commonFacility);   
		
		return result;
	}

}


