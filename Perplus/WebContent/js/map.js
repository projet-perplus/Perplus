$(function() {
//	var map;
//	function initialize() {
//		var mapCanvas = document.getElementById('map-canvas');
//		var myLatlng = new google.maps.LatLng(37.402116, 127.107020); // 위경도
//		// 설정
//		var mapOptions = { // 구글 맵 옵션
//			center : myLatlng,
//			zoom : 16,
//			mapTypeId : google.maps.MapTypeId.ROADMAP
//		};
//
//		// 구글 맵 생성
//		map = new google.maps.Map(mapCanvas, mapOptions);
//
//		var contentString = '<div style="width:100px;height:50px;">SSM</div>'; // 말풍선
//		// 내용
//
//		var infowindow = new google.maps.InfoWindow({
//			content : contentString,
//			size : new google.maps.Size(200, 100)
//		});
//
//		google.maps.event.addListener(map, 'click', function(mouseEvent) {
//			// alert(mouseEvent.latLng);
//			placeMarker(mouseEvent.latLng);
//			// alert(map.getBounds().getSouthWest().lat());
//			// alert(map.getBounds().getSouthWest().lng());
//			// alert(map.getBounds().getNorthEast().lat());
//			// alert(map.getBounds().getNorthEast().lng());
//
//		});
//
//		// var marker = new google.maps.Marker({
//		// position: myLatlng,
//		// map: map,
//		// draggable:true, // 마커 드래그 가능
//		// title: 'Hello World!' // 마커 : 도움말 풍선(마우스 오버 시)
//		// });
//		// google.maps.event.addListener(marker, 'click', function() {
//		// infowindow.open(map, marker);
//		//
//		// if (marker.getAnimation() != null) {
//		// marker.setAnimation(null);
//		// } else {
//		// marker.setAnimation(google.maps.Animation.BOUNCE);
//		// }
//		// });
//
//		// marker.setMap(map);
//	}
//
//	function placeMarker(location) {
//		var marker = new google.maps.Marker({
//			position : location,
//			map : map,
//			draggable : true
//		});
//	}
//	google.maps.event.addDomListener(window, 'load', initialize);
//////////////////////////////////////////////////
	
	function initialize() {
	     
        var mapOptions = {
                            zoom: 18, // 지도를 띄웠을 때의 줌 크기
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("map-canvas"), // div의 id과 값이 같아야 함. "map-canvas"
                                    mapOptions);
         
        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
     
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( '주소 여기에 기입!',
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding 메인 페이지에서 검색을 눌렀을 때 모든 인자*****************************************************
        var parameter;
        if(parameter != null){
        	var address = parameter[0]; // DB에서 주소 가져와서 검색하거나 왼쪽과 같이 주소를 바로 코딩.
        }
        
        function getUrlVars(){
        	var parameter = [] , hash;
        	var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        	for(var i =0;i<hashes.length;i++){
        		hash = hashes[i].split('=');
        		parameter.push(hash[0]);
        		parameter[hash[0]] = hash[1];
        	}
        	return parameter;
        }
        
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // 마커로 사용할 이미지(변수)
                                title: '한밭도서관', // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
                                position: results[0].geometry.location
                            });
 
                var content = "한밭도서관<br/><br/>Tel: 042-580-4114"; // 말풍선 안에 들어갈 내용
             
                // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });
        // Geocoding // *****************************************************
         
    }
    google.maps.event.addDomListener(window, 'load', initialize);
});
//////////////////////////////////////////////////
//var lat = 위도[변경];
//var lng = 경도[변경];
//
//var map;
//var markersArray = []; // 마커들이 담길 배열
//
//var geocoder;
//
//function initialize() {
//
//	var haightAshbury = new google.maps.LatLng(lat, lng);
//	var mapOptions = {
//		zoom : 14,
//		center : haightAshbury,
//		mapTypeId : 'roadmap'
//	};
//	geocoder = new google.maps.Geocoder();
//	map = new google.maps.Map(document.getElementById("맵이 표현될 element ID[변]"),
//			mapOptions);
//
//	if (markersArray.length === 0) {
//		addMarker(haightAshbury);
//	}
//
//	google.maps.event.addListener(map,'click',function(e) {
//				geocoder.geocode({'latLng' : e.latLng},	function(results, status) {
//					if (status == google.maps.GeocoderStatus.OK) {
//						if (results[0]) {
//							if (marker) {
//								marker
//										.setPosition(e.latLng);
//							} else {
//								marker = new google.maps.Marker({
//											position : e.latLng,
//											map : map
//										});
//							}
//
//						} else {
//							document
//									.getElementById('geocoding').innerHTML = 'No results found';
//						}
//					} else {
//						document
//								.getElementById('geocoding').innerHTML = 'Geocoder failed due to: '
//								+ status;
//					}
//				});
//			});
//
//}
//
//function addMarker(location) {
//
//	$.ajax({
//		type : "POST or GET[변경]",
//		url : "ajax호출할 url[변경]",
//		data : "ajax data[변경]",
//		success : function(data) {
//
//			var markers = [];
//			if (data) {
//
//				// 만약 ajax처리를 하지 않고 배열로 테스트 할경우 아래 처리 반복문으로 처리하세요
//				$.each(data, function(i, val) {
//					var latLng = new google.maps.LatLng(0, 0);
//					var marker = new google.maps.Marker({
//						position : latLng,
//						title : 마커타이틀[변경],
//						map : map
//					});
//
//					markers.push(marker);
//				});
//			}
//			markersArray = markers;
//
//		},
//		error : function(xmlRequest) {
//			alert(xmlRequest.status + " " + xmlRequest.statusText + " "
//					+ xmlRequest.responseText);
//		}
//	});
//}