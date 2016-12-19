function getQueryString(paramName){
	var _tempUrl = decodeURI(window.location.search).toString().substring(1); //url에서 처음부터 '?'까지 삭제;
	if(_tempUrl.includes('&')){
		var _tempArray = _tempUrl.split('&'); // '&'을 기준으로 분리하기
		
		for(var i = 0; _tempArray.length; i++) {
			
			var _keyValuePair = _tempArray[i].split('='); // '=' 을 기준으로 분리하기
			
			if(_keyValuePair[0] == paramName){ // _keyValuePair[0] : 파라미터 명
				// _keyValuePair[1] : 파라미터 값
				return _keyValuePair[1];
			}
		}
	}else{
		var keyValuePair = _tempUrl.split('=');
		if(keyValuePair[0] == paramName){
			return keyValuePair[1];
		}
	}
}

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
				placeMarker(this.REVIEWSERIAL,markerLatlng,this.REVIEWMARKERCONSTANT);
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

