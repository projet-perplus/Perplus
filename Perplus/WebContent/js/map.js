$(function() {
	var map;
	var markerCluster;
	function initialize() {
		var mapCanvas = document.getElementById('map-canvas');
		var myLatlng = new google.maps.LatLng(37.402116, 127.107020); // 위경도
		// 설정
		var mapOptions = { // 구글 맵 옵션
			center : myLatlng,
			zoom : 16,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};

		// 구글 맵 생성
		map = new google.maps.Map(mapCanvas, mapOptions);

		var contentString = '<div style="width:100px;height:50px;">SSM</div>'; // 말풍선
		// 내용

		var infowindow = new google.maps.InfoWindow({
			content : contentString,
			size : new google.maps.Size(200, 100)
		});
		google.maps.event.addListener(map, 'idle',function(){
			resetAllMarker();
			placeMarkerList(
						map.getBounds().getSouthWest().lat(),map.getBounds().getSouthWest().lng(),map.getBounds().getNorthEast().lat(),
						map.getBounds().getNorthEast().lng());
			//맵 클러스터링
			markerCluster = new MarkerClusterer(map,markerArray,{imagePath:'img/clustering/m'});
		});
		google.maps.event.addListener(map, 'click', function(mouseEvent) {
			// alert(mouseEvent.latLng);
			
			placeMarker(mouseEvent.latLng);
		});

		// var marker = new google.maps.Marker({
		// position: myLatlng,
		// map: map,
		// draggable:true, // 마커 드래그 가능
		// title: 'Hello World!' // 마커 : 도움말 풍선(마우스 오버 시)
		// });
		// google.maps.event.addListener(marker, 'click', function() {
		// infowindow.open(map, marker);
		//
		// if (marker.getAnimation() != null) {
		// marker.setAnimation(null);
		// } else {
		// marker.setAnimation(google.maps.Animation.BOUNCE);
		// }
		// });

		// marker.setMap(map);
	}
	//맵 상의 마커를 보관할 array
	var markerArray = [];
	
	function setMapOnAll(map){
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
					placeMarker(markerLatlng);
				});
			},
			error:function(request,error,status){
				alert(error+ "   "+status+"status");
			}
		});
	}
	var markers;
	function placeMarker(location) {		
		var marker = new google.maps.Marker({
			position : location,
			map : map,
			draggable : true,
		});
		markerArray.push(marker);
	}
	
	google.maps.event.addDomListener(window, 'load', initialize);
	
//////////////////////////////////////////////////
//	
//	function initialize() {
//	     
//        var mapOptions = {
//                            zoom: 18, // 지도를 띄웠을 때의 줌 크기
//                            mapTypeId: google.maps.MapTypeId.ROADMAP
//                        };
//         
//         
//        var map = new google.maps.Map(document.getElementById("map-canvas"), // div의 id과 값이 같아야 함. "map-canvas"
//                                    mapOptions);
//         
//        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
//        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
//     
//        // 마커로 사용할 이미지 주소
//        var image = new google.maps.MarkerImage( '주소 여기에 기입!',
//                                                    new google.maps.Size(size_x, size_y),
//                                                    '',
//                                                    '',
//                                                    new google.maps.Size(size_x, size_y));
//         
//        // Geocoding 메인 페이지에서 검색을 눌렀을 때 모든 인자*****************************************************
//        var parameter;
//        if(parameter != null){
//        	var address = parameter[0]; // DB에서 주소 가져와서 검색하거나 왼쪽과 같이 주소를 바로 코딩.
//        }
//        
//        function getUrlVars(){
//        	var parameter = [] , hash;
//        	var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
//        	for(var i =0;i<hashes.length;i++){
//        		hash = hashes[i].split('=');
//        		parameter.push(hash[0]);
//        		parameter[hash[0]] = hash[1];
//        	}
//        	return parameter;
//        }
//        
//        var marker = null;
//        var geocoder = new google.maps.Geocoder();
//        geocoder.geocode( { 'address': address}, function(results, status) {
//            if (status == google.maps.GeocoderStatus.OK) {
//                map.setCenter(results[0].geometry.location);
//                marker = new google.maps.Marker({
//                                map: map,
//                                icon: image, // 마커로 사용할 이미지(변수)
//                                title: '한밭도서관', // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
//                                position: results[0].geometry.location
//                            });
// 
//                var content = "한밭도서관<br/><br/>Tel: 042-580-4114"; // 말풍선 안에 들어갈 내용
//             
//                // 마커를 클릭했을 때의 이벤트. 말풍선
//                var infowindow = new google.maps.InfoWindow({ content: content});
//                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
//            } else {
//                alert("Geocode was not successful for the following reason: " + status);
//            }
//        });
//        // Geocoding // *****************************************************
//         
//    }
//    google.maps.event.addDomListener(window, 'load', initialize);
//});
//////////////////////////////////////////////////
//	var lat = 0;
//	var lng = 0;
//	
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
	});
