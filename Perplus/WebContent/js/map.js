//아이콘들
var tourIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/tours.png");
var defaultIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/default.png");
var restaurantIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/restaurants.png");
var houseIcon = new google.maps.MarkerImage("/Perplus/img/markerIcon/house.png");
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
//맵이 로딩되는 페이지를 알려주는 state
var stage = document.getElementById('stage');

//최초 마커 필터의 상태
var startFilterArray = document.getElementsByName('marker_filter');

//맵 상의 마커를 보관할 array
var markerArray = [];
//마커 필터의 상태를 저장
var filterArray = [];
var geocoder = new google.maps.Geocoder();

$(function() {
	//맵의 기본적 start
	function initialize() {
		
		var geoLocation = location;
//		alert(stage.value);
		var mapCanvas = document.getElementById('map-canvas');
		var myLatlng = new google.maps.LatLng(37.402116, 127.107020); // 위경도
		// 설정
		var mapOptions = { // 구글 맵 옵션
			center : myLatlng,
			zoom : 14,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};

		// 구글 맵 생성
		map = new google.maps.Map(mapCanvas, mapOptions);

		//filter의 초기 값을 filterArray에 저장
		for(var i in startFilterArray){
			if(startFilterArray[i].checked){
				filterArray.push(startFilterArray[i].value);
			}
		}
		//각종 listener 들
		
		
		//공용 이벤트
		google.maps.event.addListener(map, 'idle',function(){
			resetMapMarker();
		});
		

		// 리뷰용 이벤트
		google.maps.event.addListener(map, 'click', function(mouseEvent) {
			// alert(mouseEvent.latLng);
			// 추가적으로 로그인 여부 확인 필요
			if(identifyLoginInfo()!= null){
				if(startMarker == null){
					startMarker=placeMarker(mouseEvent.latLng);
					startMarker.setAnimation(google.maps.Animation.BOUNCE);
				}else if(startMarker != null){
					startMarker.setPosition(mouseEvent.latLng);
				}
				startMarker.setDraggable(true);
			}
			resetMapMarker();
		});
		
		//하우스용 이벤트
		
	}
	google.maps.event.addDomListener(window, 'load', initialize);
});	

function locationSearch(){
	var geoLocation = document.getElementById("location");
	if(geoLocation==null){
		return;
	}
	alert(geoLocation.value);
	
	geocoder.geocode({
		'address' : geoLocation.value
	}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			//도,시,구,동,군,읍,면
			alert(geoLocation.value.trim().charAt(geoLocation.value.trim().length-1));
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
		} else {
			alert("제대로 된 지명을 입력해 주세요.");
		}
	});
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
//마커 필터 배열 수정
function modifyMarkerFilter(array){
	filterArray = array;
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

//범위 안에 있는 마커들을 생성
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
				var markerLatlng = new google.maps.LatLng(this.REVIEWMARKERX, this.REVIEWMARKERY);
				placeMarker(markerLatlng,this.REVIEWMARKERCONSTANT);
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
function placeMarker(location,constant,money) {
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
	default :
		mIcon = defaultIcon;
		break;
	}
	//여기서 house 페이지인지 review 인지 분기 필요할 듯
	var trigger;
	trigger = possibleMarkerWithFilter(mIcon);
	if(trigger){
		var marker = new google.maps.Marker({
			position : location,
			map : map,
			icon : mIcon
		});
		if((mIcon.url).includes('default')){
			google.maps.event.addListener(marker, 'click',function(){
				$('#reviewEnrollment').modal('show');
			});
		}else{
			google.maps.event.addListener(marker, 'click',function(){
				$.ajax({
					url : "/Perplus/map/selectedreview.do",
					type:"post",
					async : false,
					data : {		
						"lat" :  lat.toString(),
						"lng" :  lng.toString(),
					},
					dataType : "JSON",
					success:function(obj){
						$.each(obj,function(){
							var markerLatlng = new google.maps.LatLng(this.REVIEWMARKERX, this.REVIEWMARKERY);
							placeMarker(markerLatlng,this.REVIEWMARKERCONSTANT);
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
			});
			
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

function resetMapMarker(){
	resetAllMarker();
	placeMarkerList(
				map.getBounds().getSouthWest().lat(),map.getBounds().getSouthWest().lng(),map.getBounds().getNorthEast().lat(),
				map.getBounds().getNorthEast().lng());
	//맵 클러스터링
	markerCluster = new MarkerClusterer(map,markerArray,{imagePath:'img/clustering/m'});
}


