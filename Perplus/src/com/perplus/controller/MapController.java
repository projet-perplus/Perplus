package com.perplus.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.perplus.house.service.HouseService;
import com.perplus.house.vo.HouseVo;
import com.perplus.member.vo.MemberVo;
import com.perplus.review.service.ReviewService;
import com.perplus.review.vo.ReviewCommentVo;
import com.perplus.review.vo.ReviewPictureVo;
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
	public HashMap showHouseByMapAndFilter(@RequestBody String body) throws JsonParseException, JsonMappingException, IOException{
		
		ObjectMapper mapper = new ObjectMapper(); 
		HashMap map = mapper.readValue(body,HashMap.class);
		HashMap result = new HashMap(); 
		//1.먼저 돈이 0원인지 확인 한다.
		int priceRangeMin= ((int)map.get("housePriceRangeMin"));
		int priceRangeMax=((int)map.get("housePriceRangeMax"));
		//최초 전체 숙소의 최대 최소 가격 범위 받기 
		
		if(priceRangeMin==0&&priceRangeMax==0){
			result.put("priceRange", houseService.selectHousePriceRange());
		}
		map.put("southWestLat", (Double)map.get("southWestLat"));
		map.put("southWestLng", (Double)map.get("southWestLng"));
		map.put("northEastLat", (Double)map.get("northEastLat"));
		map.put("northEastLng", (Double)map.get("northEastLng"));
		
		System.out.println(result); 
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
		
		
		System.out.println(map);
		
		return result;
	}
}


