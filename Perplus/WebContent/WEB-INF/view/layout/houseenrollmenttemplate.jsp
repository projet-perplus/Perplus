<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Perplus</title>
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  
		  <link rel="stylesheet" href="css/style.css"><!-- perplus css -->
		  <link href="css/bootstrap.min.css" rel="stylesheet"><!-- bootstrap css -->
		  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
		  <link href="css/jquery-ui.min.css" rel="stylesheet">
		  <link href="css/datepicker.css" rel="stylesheet"><!-- bootstrap datepicker css -->
		  
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> <!-- jquery script -->
		  <script src="js/jquery-ui.min.js"></script>
		  <script src="js/bootstrap-datepicker.js"></script> <!-- bootstrap datepicker javascript -->
		  <script src="js/js.js"></script>	<!-- perplus javascript -->
		  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
		 <style>
			#map-canvas { width: 500px; height: 400px; background-color: #CCC; }
		</style>
		<!-- <script src="https://maps.googleapis.com/maps/api/js"></script> -->
		<script>
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
		</script>
	 </head>
	 <style>
		.form-control{
			font-size:12px !important; 
			
		}
		.row-condensed>label{
		width:250px !important;
		}
	 </style>
	  
	 <body >
	 	<!-- class="hostingimg" -->
	 	<tiles:insertAttribute name="hosting"/>
	 </body>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU" type="text/javascript"></script>
  	<script src="js/bootstrap.min.js"></script>
</html>