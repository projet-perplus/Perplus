<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU" type="text/javascript"></script>
<script src="js/map.js"></script>
<script src="js/markerclusterer.js"></script>
<!-- 크롬 캐싱 문제 때문에 임의의 쿼리 스트링 추가 (완성본에서는 제거필요) -->
<script type="text/javascript">
$(document).ready(function(){
	$("#searchLocation").on("click",function(){
		if($("#locationName").val().length != 0){
			$("#map-div").find("#location").val($("#locationName").val());
			locationSearch();
		}
	})
})
</script>


<div class="container">
	<div id="dashboard-content" class="hotplace">
		<div class="panel-header">
		
			<div class="col-md-4 col-xs-4 headeCrH panel-PN" style="height:50px; width: 250px;">
				<div class="col-md-12 panel-MT panel-PN">
					<div class="form-group">
						<input type="text" class="form-control" id="locationName"
							placeholder="지역명 도시명,주소">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 col-xs-4"> 
				<button type="button" id="searchLocation" class="btn btn-primary btn-md panel-MT" onclick="">검색</button>
				
				
			</div>

			<div class="dropdown panel-MT pull-right" style="right: 1%">
  				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
  						마커필터
  					<span class="caret"></span>
  				</button>
			    <ul class="dropdown-menu " style="min-width:90px !important;">
					<li style="padding-left: 23%; margin-top:10px">
						<label class="checkbox-inline"><input type="checkbox" name="maker_filter" value="food">음식</label>
<!-- 						<a href="#" data-toggle="modal" data-target="#reviewEnrollment"> -->
<!-- 							<button type="button" class="btn btn-primary">리뷰 작성</button> -->
<!-- 						</a> -->
					</li>
					<li style="padding-left: 23%;margin-bottom:10px;">
						<label class="checkbox-inline"><input type="checkbox" name="maker_filter" value="hot">명소</label>
<%-- 						<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=26">   <!-- reviewSerial은 requestScope의 리뷰시리얼값~~ --> --%>
<!-- 							<button type="button" class="btn btn-primary">리뷰 상세페이지</button> -->
<!-- 						</a> -->
					</li>
	 		    </ul>
			</div>
			
			
		</div>
		<div id ="map-div" class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<input type="hidden" id="stage" value="travel">
					<input type="hidden" id="location">
					<div id="map-canvas" style="width: 100%; height:489px"></div>
				</div>
			</div>
		</div>
	</div>
</div>	

