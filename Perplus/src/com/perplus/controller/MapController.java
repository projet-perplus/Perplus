package com.perplus.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	@RequestMapping("/showhousebymapandfilter.do")
	@ResponseBody
	public List<HouseVo> showHouseByMapAndFilter(@RequestParam String body) throws JsonParseException, JsonMappingException, IOException{
		
		ObjectMapper mapper = new ObjectMapper();
		HashMap map = mapper.readValue(body,HashMap.class);
		
		return houseService.selectHouseBySectionAndFilter(map);
	}
}


//function placeMarkerList(southWestLat,southWestLng,northEastLat,northEastLng){
//	$.ajax({
//		url : "/Perplus/map/markerall.do",
//		type:"post",
//		async : false,
//		data : JSON.stringify({key:value,}),
//		contentType : "text/JSON"
//		dataType : "JSON",
//		success:function(obj){
//			$.each(obj,function(){
//				var markerLatlng = new google.maps.LatLng(this.reviewMarkerX, this.reviewMarkerY);
//				placeMarker(this.reviewSerial,markerLatlng,this.reviewMarkerConstant);
//			});
//			if(startMarker!=null){
//				startMarker.setAnimation(google.maps.Animation.BOUNCE);
//				markerArray.push(startMarker);
//			}
//		},
//		error:function(request,error,status){
//			alert(error+ "   "+status+"status");
//		}
//	});
//}
