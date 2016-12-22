
//아이콘들
var tourIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/tours.png");
var defaultIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/default.png");
var restaurantIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/restaurants.png");
var houseIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/house.png");
var registerIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/register.png");

//맵
var map;
//맵 클러스터
var markerCluster;
//로그인 사용자의 default 마커
var startMarker;
//각 마커의 상수
const MARKER_CONSTANT_TOUR = 211;
const MARKER_CONSTANT_RESTAURANT = 212;
const MARKER_CONSTANT_HOUSE = 213;
const MARKER_CONSTANT_REGISTER = 214;
//맵이 로딩되는 페이지를 알려주는 state
//1.review 2.register 3.search
var stage ;

//맵 상의 마커를 보관할 array
var markerArray = [];

var geocoder = new google.maps.Geocoder();


$(document).on('pageload',function(){
	initialize();
});

$(function() {
	//맵의 기본적 start
	function initialize() {
		
		stage= document.getElementById('stage').value;
		
		
		var mapCanvas = document.getElementById('map-canvas');
		var myLatlng = new google.maps.LatLng(37.402116, 127.107020); // 위경도
		// 설정
		var mapOptions = { // 구글 맵 옵션
			center : myLatlng,
			zoom : 14,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		$(window).resize(function(){
			google.maps.event.trigger(map,"resize");
		})
		// 구글 맵 생성
		map = new google.maps.Map(mapCanvas, mapOptions);

		//filter의 초기 값을 filterArray에 저장(review일때)
		if(stage == 'review'){
			for(var i in startFilterArray){
				if(startFilterArray[i].checked){
					filterArray.push(startFilterArray[i].value);
				}
			}
		}
		//각종 listener 들
		
		//공용 이벤트
		
		// 리뷰용 이벤트
		if(stage == 'review'){
			addMapclickEventForReview();
			google.maps.event.addListener(map, 'idle',function(){
				resetMapMarker();
			});
		}
		
		//하우스용 이벤트
		if(stage == 'search'){
			google.maps.event.addListener(map, 'idle',function(){
				resetMapMarker();
			});
		}
		google.maps.event.addListenerOnce(map,'bounds_changed', function() {
			//최초 로딩때 location이 넘어오는 search 일때 검사
			var geoLocation = document.getElementById("location");
			if(geoLocation.value.length!=0){
				locationSearch(); 
			}else if(stage=='search'){
				map.setZoom(7);
			}
		});
	}
	google.maps.event.addDomListener(window, 'load', initialize) ;
});	
//리뷰에서는 이벤트가 있을때 부르게 되고 나머지는 최초 남아있는 location 값으로 부르게 된다.
function locationSearch(){
	
	var geoLocation = document.getElementById("location");
	if(geoLocation==null || geoLocation.length==0){
		return;
	}
	
	geocoder.geocode({
		'address' : geoLocation.value
	}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			//도,시,구,동,군,읍,면
//			alert(geoLocation.value.trim().charAt(geoLocation.value.trim().length-1));
			switch(geoLocation.value.trim().charAt(geoLocation.value.trim().length-1)){
			case "도" :
				map.setZoom(9);
				break;
			case "시" :
				map.setZoom(11);
				break;
			case "구" :
				map.setZoom(13);
				break;
			default :
				map.setZoom(16);
				break;
			}
			map.setCenter(results[0].geometry.location);
			//만약 register 에서 넘어온 상태라면 화면 중앙에 마커를 출력해 준다.
			if(stage == 'register'){
				placeMarker(0,results[0].geometry.location,214);
			}
		} else {
			alert("제대로 된 지명을 입력해 주세요.");
		}
	});
	//숙소 검색에서 최초 printByFilter를 부르는 곳
	if(stage == 'search'){
		printByFilter();
	}
}

function setMapOnAll(){
	for(var i =0 ;i<markerArray.length;i++){
		markerArray[i].setMap(map);
	}
}
//모든 마커들을 리셋
function resetAllMarker(){
	setMapOnAll(null);
	markerArray =[];
	if(markerCluster!=null){
		markerCluster.clearMarkers();
	}
}

//로그인 여부를 받는다
function identifyLoginInfo(){
	var member;
	$.ajax({
		url : "/Perplus/map/logininfo.do",
		type:"post",
		async : false,
		dataType : "JSON",
		success:function(obj){
			member=obj;
		}
	});
	return member;
}

//범위 안에 있는 마커들을 생성 (review)
function placeMarkerList(southWestLat,southWestLng,northEastLat,northEastLng){
	$.ajax({
		url : "/Perplus/map/markerall.do",
		type:"post",
		async : false,
		data : {				
			"southWestLat" :  southWestLat.toString(),
			"southWestLng" :  southWestLng.toString(),
			"northEastLat" :  northEastLat.toString(),
			"northEastLng" :  northEastLng.toString()
		},
		dataType : "JSON",
		success:function(obj){
			$.each(obj,function(){
				var markerLatlng = new google.maps.LatLng(this.reviewMarkerX, this.reviewMarkerY);
				placeMarker(this.reviewSerial,markerLatlng,this.reviewMarkerConstant);
			});
			if(startMarker!=null){
				startMarker.setAnimation(google.maps.Animation.BOUNCE);
				markerArray.push(startMarker);
			}
		},
		error:function(request,error,status){
			alert(error+ "   "+status+"status");
		}
	});
}
//마커를 위치시키는 함수 이며 2가지 경우로 나뉜다
//1.DB에서 마커들을 긁어와 출력
//2.로그인된 사용자가 맵을 클릭 했을때 default 마커 설치(로그인이 안되 있는 것은 click 이벤트일때 거른다.)
function placeMarker(serial,location,constant,money) {
	var mIcon;
	switch(constant){
	case MARKER_CONSTANT_TOUR :
		mIcon = tourIcon;
		break;
	case MARKER_CONSTANT_RESTAURANT :
		mIcon = restaurantIcon;
		break;
	case MARKER_CONSTANT_HOUSE :
		mIcon = houseIcon;
		break;
	case MARKER_CONSTANT_REGISTER :
		mIcon = registerIcon;
		break;
	default :
		mIcon = defaultIcon;
		break;
	}
	//기본적 trigger는 true 이며 마커 종류 필터가 작동하는 review 에서만 trigger를 변경한다. 
	var trigger=true;
	if(stage == 'review'){
		trigger = possibleMarkerWithFilter(mIcon);
	}
	if(trigger){
		var marker = new google.maps.Marker({
			position : location,
			map : map,
			icon : mIcon,
			title : serial.toString()
		});
		if((mIcon.url).includes('default')){
			google.maps.event.addListener(marker, 'click',function(){
				$('#reviewEnrollment').modal('show'); 
				setSendPosition();
			});
		}else if((mIcon.url).includes('register')){
			marker.setDraggable(true);
		}else if((mIcon.url).includes('house')){
			
		}else{
			google.maps.event.addListener(marker, 'click', function(){	
//				alert(serial);
				var url = "/Perplus/review/showReview.do?reviewSerial="+serial;
//				alert(url);
				window.open(url);
			})
		}
		markerArray.push(marker);
		if(mIcon == houseIcon){
			var str = comma(30000);
			marker.setLabel(str);
		}
		return marker;
	}
}
//필터에 따른 출력 가능한 마커만 markerArray에 push
function possibleMarkerWithFilter(mIcon){
	if((mIcon.url).includes('default')){
		return true;
	}
	if(filterArray.length==2){
		return true;
	}else if(filterArray.length==0){
		return false;
	}else{
		if(filterArray[0] == 'food'){
			if((mIcon.url).includes('restaurants')){
				return true;
			}
		}else{
			if((mIcon.url).includes('tours')){
				return true;
			}
		}
	}
	return false;
}
//원화 정규식 (공용)
function comma(money) {
    str = String(money);
    str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')
    return str.concat(' ₩');
}

function resetMapMarker(location){
	var addFilterTriggerStatus = document.getElementById('addfiltertrigger').value;
	if(addFilterTriggerStatus== 'true'&&stage =='search'){
		map.setOptions({draggable: false,zoomControl: false,scrollwheel: false});
		return;
	}else{
		map.setOptions({draggable: true,zoomControl: true,scrollwheel: true});
	}
	resetAllMarker();
	if(stage == 'review'){
		placeMarkerList(
					map.getBounds().getSouthWest().lat(),map.getBounds().getSouthWest().lng(),map.getBounds().getNorthEast().lat(),
					map.getBounds().getNorthEast().lng());
	}else if(stage == 'search'){
		
		printByFilter();
	}
	//맵 클러스터링(각 적용되는 템플릿에 <script src="/Perplus/js/markerclusterer.js"></script> 라이브러리 추가 필요)
	markerCluster = new MarkerClusterer(map,markerArray,{imagePath:'img/clustering/m'});
}


