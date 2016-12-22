<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU"
   type="text/javascript"></script>
<script src="/Perplus/js/map.js"></script>
<script src="/Perplus/js/search-map.js">
</script>
<script type="text/javascript">
var place;
var checkIn;
var checkOut;
var guestNumber;
$(document).ready(function(){
   if(decodeURI(window.location.search).includes('location')){
      place=getQueryString('location');
      $("#location").val(place);
   }
   if(decodeURI(window.location.search).includes('checkIn')){
      checkIn=getQueryString('checkIn');
      $("#dpd1").val(checkIn);
   }
   if(decodeURI(window.location.search).includes('checkOut')){
      checkOut=getQueryString('checkOut');
      $("#dpd2").val(checkOut);
   }
   if(decodeURI(window.location.search).includes('guestNumber')){
      guestNumber=getQueryString('guestNumber');
      jQuery("#guestNumber").val(guestNumber).attr("selected", "selected");
   }
 
   $("#dpd1").datepicker().on("changeDate",function(){
	   printByFilter();
   })
   $("#dpd2").datepicker().on("changeDate",function(){
	   printByFilter();
   })
   
   $(".addfilterBtn").click(function(){
       $(".addfilter").toggle("slow");
    });
});

$(function() {
	$("#slider-range").slider({
		range : true,
		min : 0,
		max : 0,
		values : [ 0,0],
		slide : function(event, ui) {
			$("#amount").val("₩" + ui.values[0] + " - ₩" + ui.values[1]);
		}
	});
	$("#amount").val(
			"₩" + $("#slider-range").slider("values", 0) + " - ₩"
					+ $("#slider-range").slider("values", 1));
	$("#slider-range").on("slidechange", function() {
		printByFilter();
	});
});
//지도 배율의 변화나 추가 필터를 제외한 기존 필터의 변화가 있을때마다 마커를 긁어오는 과정이 필요하다.
//	HashMap List
//	1. endDay , startDay
//	2. guestNumber
//	3. wholeRoom , privateRoom , sharedRoom
//	4. housePriceMin, housePriceMax
//	5-1. bedRoomNumber , bathRoomNumber, bedNumber
//	5-2. 각 체크리스트 key값 (코드테이블 참조)
function printByFilterWithAddFilter(){
	
}
function printByFilter(){
	var obj = {"guestNumber":$("#guestNumber").val().trim()};
	//날짜
	if($("#dpd1").val().trim()=='시작일'&& $("#dpd2").val().trim()=='종료일'){
	}else{
		obj.startDay=$("#dpd1").val().trim();
		obj.endDay=$("#dpd2").val().trim();
	}
	//숙소 유형
	switch($("[name=house-type]:checked").val()){
	case '집전체' : obj.wholeRoom=$("[name=house-type]:checked").val();
		break;
	case '개인실' : obj.privateRoom=$("[name=house-type]:checked").val();
		break;
	case '다인실' : obj.sharedRoom=$("[name=house-type]:checked").val();
		break;
	}
	//사용자가 선택한 금액의 범위
	obj.housePriceMin=$("#slider-range").slider("values",0);
	obj.housePriceMax=$("#slider-range").slider("values",1);
	//최초 로딩때 보여줄 slider 값의 제한 범위
	if($("#slider-range").slider("option","min")){
		
	}
	obj.housePriceRangeMin=$("#slider-range").slider("option","min");
	obj.housePriceRangeMax=$("#slider-range").slider("option","max");
	
	//지도 bound
	
	obj.southWestLat=map.getBounds().getSouthWest().lat();
	obj.southWestLng=map.getBounds().getSouthWest().lng();
	obj.northEastLat=map.getBounds().getNorthEast().lat();
	obj.northEastLng=map.getBounds().getNorthEast().lng();
	
	var body = JSON.stringify(obj);
	
	//alert(body);
	$.ajax({
		url : "/Perplus/map/showhousebymapandfilter.do",
		type : "post",
		async : false,
		data : body,
		contentType : "text/JSON",
		dataType : "JSON",
		success:function(obj){
		},
		error:function(request,error,status){
			alert(error+ "   "+status+"status");
		}
	});
	
}
//		$(":input:radio[name=sample]:checked").val(),
//		"southWestLat":map.getBounds().getSouthWest().lat(),
//		"southWestLng":map.getBounds().getSouthWest().lng(),
//		"northEastLat":map.getBounds().getnorthEast().lat(),
//		"northEastLng":map.getBounds().getSouthEast().lng(),
//		})
//	alert(room);
	
//function placeMarkerList(southWestLat,southWestLng,northEastLat,northEastLng){
//$.ajax({
//	url : "/Perplus/map/markerall.do",
//	type:"post",
//	async : false,
//	data : JSON.stringify({key:value,}),
//	contentType : "text/JSON"
//	dataType : "JSON",
//	success:function(obj){
//		$.each(obj,function(){
//			var markerLatlng = new google.maps.LatLng(this.reviewMarkerX, this.reviewMarkerY);
//			placeMarker(this.reviewSerial,markerLatlng,this.reviewMarkerConstant);
//		});
//		if(startMarker!=null){
//			startMarker.setAnimation(google.maps.Animation.BOUNCE);
//			markerArray.push(startMarker);
//		}
//	},
//	error:function(request,error,status){
//		alert(error+ "   "+status+"status");
//	}
//});
//}
//}
</script>
<div class="container-fluid">
   <div class="row">
      <div class="col-md-7 col-sm-12 col-xs12" style="padding-left: 0px">
         <input type="hidden" id="stage" value="search"> <input
            type="hidden" id="location">
         <div id="map-canvas" style="width: 100%; height: 400px;"></div>
         <!--  숙소 리스트 -->
         <div class="row " style="margin-right: 0px; margin-left: 0px;">
            <div class="col-md-12"
               style="overflow: auto; border: 2px solid #ccc; height: 218px;">

               <!-- 목록 하나 -->
               <div class="col-md-3 col-sm-4 col-xs-4"
                  style="margin: 12px 24px 12px 24px;">
                  <div class="row con1">
                     <div class="row con1">
                        <div class="col-md-12" style="padding: 0px;">
                           <img src="/Perplus/css/image/photo0.jpg" alt="asd"
                              style="width: 100%; height: 150px" />
                        </div>
                     </div>

                     <div class="row subcon1" style="border: 1px solid #ccc;">
                        <div class="row con2">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">숙소
                                 이름 request</span>
                           </div>
                        </div>
                     </div>

                     <div class="row subcon2" style="border: 1px solid #ccc;">
                        <div class="row con3">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">가격
                                 request</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 목록 하나 -->
               <!-- 목록 하나 -->
               <div class="col-md-3 col-sm-4 col-xs-4"
                  style="margin: 12px 24px 12px 24px;">
                  <div class="row con1">
                     <div class="row con1">
                        <div class="col-md-12" style="padding: 0px;">
                           <img src="/Perplus/css/image/photo0.jpg" alt="asd"
                              style="width: 100%; height: 150px" />
                        </div>
                     </div>

                     <div class="row subcon1" style="border: 1px solid #ccc;">
                        <div class="row con2">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">숙소
                                 이름 request</span>
                           </div>
                        </div>
                     </div>

                     <div class="row subcon2" style="border: 1px solid #ccc;">
                        <div class="row con3">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">가격
                                 request</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 목록 하나 -->



               <!-- 목록 하나 -->
               <div class="col-md-3 col-sm-4 col-xs-4"
                  style="margin: 12px 24px 12px 24px;">
                  <div class="row con1">
                     <div class="row con1">
                        <div class="col-md-12" style="padding: 0px;">
                           <img src="/Perplus/css/image/photo0.jpg" alt="asd"
                              style="width: 100%; height: 150px" />
                        </div>
                     </div>

                     <div class="row subcon1" style="border: 1px solid #ccc;">
                        <div class="row con2">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">숙소
                                 이름 request</span>
                           </div>
                        </div>
                     </div>

                     <div class="row subcon2" style="border: 1px solid #ccc;">
                        <div class="row con3">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">가격
                                 request</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 목록 하나 -->

               <!-- 목록 하나 -->
               <div class="col-md-3 col-sm-4 col-xs-4"
                  style="margin: 12px 24px 12px 24px;">
                  <div class="row con1">
                     <div class="row con1">
                        <div class="col-md-12" style="padding: 0px;">
                           <img src="/Perplus/css/image/photo0.jpg" alt="asd"
                              style="width: 100%; height: 150px" />
                        </div>
                     </div>

                     <div class="row subcon1" style="border: 1px solid #ccc;">
                        <div class="row con2">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">숙소
                                 이름 request</span>
                           </div>
                        </div>
                     </div>

                     <div class="row subcon2" style="border: 1px solid #ccc;">
                        <div class="row con3">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">가격
                                 request</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 목록 하나 -->

               <!-- 목록 하나 -->
               <div class="col-md-3 col-sm-4 col-xs-4"
                  style="margin: 12px 24px 12px 24px;">
                  <div class="row con1">
                     <div class="row con1">
                        <div class="col-md-12" style="padding: 0px;">
                           <img src="/Perplus/css/image/photo0.jpg" alt="asd"
                              style="width: 100%; height: 150px" />
                        </div>
                     </div>

                     <div class="row subcon1" style="border: 1px solid #ccc;">
                        <div class="row con2">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">숙소
                                 이름 request</span>
                           </div>
                        </div>
                     </div>

                     <div class="row subcon2" style="border: 1px solid #ccc;">
                        <div class="row con3">
                           <div class="col-md-12">
                              <span class="col-md-12"
                                 style="text-align: center; padding: 5px; font-size: 12px;">가격
                                 request</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 목록 하나 -->

            </div>
         </div>

      </div>

      <div class="col-md-5 col-sm-12 col-xs-12">

         <div class="row panel-MT">
            <div class="col-md-12">
               <!-- 숙소 출력 -->
               <div class="col-md-2 col-sm-2 col-xs-12 rightform leftform">
                  <span class="btn btn-primary"
                     style="margin-bottom: 15px !important;">날짜</span>
               </div>


               <div class="col-md-3 col-sm-3 col-xs-4 ">

                  <input type="text" class="form-control" name="check" id="dpd1"
                     placeholder="yy-mm-dd" value="시작일 ">

               </div>


               <div class="col-md-3 col-sm-3 col-xs-4 ">

                  <input type="text" class="form-control" name="check" id="dpd2"
                     placeholder="yy-mm-dd" value="종료일">

               </div>

               <div class="col-md-3 col-sm-3 col-xs-4 ">
                  <select class="form-control" id="guestNumber"
                     onchange="printByFilter()">
                     <option value="default" selected="selected">인원수</option>
                     <c:forEach var="i" begin="1" end="100" step="1">
                        <option value="${i}">${i}</option>
                     </c:forEach>
                  </select>
               </div>
            </div>
         </div>
         <div class="row panel-MT">
            <div class="checkbox">
               <div class="col-md-3 rightform " style="margin-bottom: 15px;">
                  <button class="btn btn-primary">숙소 유형</button>
               </div>
               <div class="col-md-2 col-xs-offset-1 col-xs-3  rightform leftform">
                  <label><input type="radio" name="house-type"
                     onchange="printByFilter()" value="집전체" checked="checked">집전체</label>
               </div>
               <div class="col-md-2 col-xs-3 rightform leftform">
                  <label><input type="radio" name="house-type"
                     onchange="printByFilter()" value="개인실">개인실</label>
               </div>
               <div class="col-md-2 col-xs-3 rightform leftform">
                  <label><input type="radio" name="house-type"
                     onchange="printByFilter()" value="다인실">다인실</label>
               </div>
            </div>
         </div>

         <div class="row panel-MT">
            <div class="checkbox">
               <div class="col-md-3 col-sm-3 col-xs-12 rightform ">
                  <span class="btn btn-primary " style="margin-top: 13px;">가격
                     범위</span>
               </div>
               <div
                  class="col-md-8 col-sm-8 col-xs-8 col-xs-offset-1 col-md-offset-0"
                  style="padding-left: 0px;">
                  <p>
                     <label for="amount" style="padding-left: 0px;">Price
                        range:</label> <input type="text" id="amount" readonly
                        style="border: 0; color: #f6931f; font-weight: bold;">
                  </p>

                  <div id="slider-range"></div>
               </div>
            </div>
         </div>

         <div class="row row-condensed space-4">
            <div class="col-md-12">

               <!-- <a href="#" data-toggle="modal" data-target="#addfilterdialog"> -->
               <button class="btn btn-primary addfilterBtn ">추가 필터</button>
               <!-- </a> -->

            </div>
         </div>

         <div class="row row-condensed space-4">
            <div class="col-md-12 addfilter" style="display: none;">

               <form action="">
                  <div class="col-md-2 col-sm-2 col-xs-12  rightform leftform"
                     style="margin-bottom: 15px;">
                     <span class="btn btn-primary">규모</span>
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3 ">
                     <div class="form-group">
                        <select class="form-control">
                           <option>침실수</option>
                           <option>2</option>
                           <option>3</option>
                           <option>4</option>
                        </select>
                     </div>
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3 ">
                     <div class="form-group">
                        <select class="form-control">
                           <option>욕실수</option>
                           <option>2</option>
                           <option>3</option>
                           <option>4</option>
                        </select>
                     </div>
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3 ">
                     <div class="form-group">
                        <select class="form-control">
                           <option>침대수</option>
                           <option>2</option>
                           <option>3</option>
                           <option>4</option>
                        </select>
                     </div>
                  </div>
                  <div class="clearfix"></div>
                  <div class="row panel-MT">
                     <div class="col-md-12">a</div>
                  </div>
                  <div class="row panel-MT">
                     <div class="col-md-12">b</div>
                  </div>
                  <div class="row panel-MT">
                     <div class="col-md-12">c ...</div>
                  </div>

                  <div class="modal-footer">
                     <div class="row panel-MT">
                        <div
                           class="col-md-offset-6 col-sm-offset-5 col-xs-offset-5 col-md-2 col-sm-3 col-xs-3">

                           <button class="btn btn-primary">취소</button>
                        </div>
                        <div class="col-md-2 col-sm-3 col-xs-3">
                           <button type="submit" class="btn btn-primary">필터 적용</button>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>


<!--          <div class="row row-condensed space-4"> -->
<!--             <div class="col-md-12"> -->
<%--                <a href="${initParam.rootPath}/house/houseDetail.do?houseSerial=3"><button --%>
<!--                      class="btn btn-primary">숙소 상세 페이지</button></a> -->
<!--             </div> -->
<!--          </div> -->

      </div>
   </div>
</div>