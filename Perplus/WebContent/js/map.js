$(function(){

	function initialize() {
		var mapCanvas = document.getElementById('map-canvas');
		var myLatlng = new google.maps.LatLng(37.402116,127.107020);		// 위경도 설정
		var mapOptions = {			// 구글 맵 옵션
			center: myLatlng, 
			zoom: 16, 
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};

		// 구글 맵 생성
		var map = new google.maps.Map(mapCanvas, mapOptions);
	
		var contentString = '<div style="width:100px;height:50px;">SSM</div>';		// 말풍선 내용
	
		var infowindow = new google.maps.InfoWindow({
			content: contentString,
			size: new google.maps.Size(200,100)
		});
	
		var marker = new google.maps.Marker({
			position: myLatlng,
			map: map, 
		    draggable:true,			// 마커 드래그 가능
			title: 'Hello World!'	// 마커 : 도움말 풍선(마우스 오버 시)
		});
		google.maps.event.addListener(marker, 'click', function() {
			infowindow.open(map, marker);

			if (marker.getAnimation() != null) {
				marker.setAnimation(null);
			} else {
				marker.setAnimation(google.maps.Animation.BOUNCE);
			}
		});

		marker.setMap(map);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
	
});