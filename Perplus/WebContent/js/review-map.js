//최초 마커 필터의 상태
var startFilterArray = document.getElementsByName('marker_filter');
//마커 필터의 상태를 저장
var filterArray = [];

function addMapclickEventForReview(){
	google.maps.event.addListener(map, 'click', function(mouseEvent) {
		// alert(mouseEvent.latLng);
		// 추가적으로 로그인 여부 확인 필요
		if(identifyLoginInfo()!= null){
			if(startMarker == null){
//				alert(mouseEvent.latLng);
				startMarker=placeMarker(0,mouseEvent.latLng);
				startMarker.setAnimation(google.maps.Animation.BOUNCE);
			}else if(startMarker != null){
				startMarker.setPosition(mouseEvent.latLng);
			}
			startMarker.setDraggable(true);
		}
		resetMapMarker();
	});
}

//마커 필터 배열 수정
function modifyMarkerFilter(array){
	filterArray = array;
}