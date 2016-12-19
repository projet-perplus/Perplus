<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU" type="text/javascript"></script>
<script src="js/map.js"></script>
<script type="text/javascript">
function getMarkerLocation(){
	var url ="/Perplus/housefacility.do?lat="+markerArray[0].getPosition().lat().toString()+"&lng="
	+markerArray[0].getPosition().lng().toString();
	location.href=url;
}
</script>
<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-xs-3"></div>
			
			<div class="col-md-offset-5 col-md-3 col-xs-offset-5">
				<div class="col-md-8 col-xs-8 page_moveBtn">
					<div class="form-group ">
						<select class="form-control house_step">
							<option value="${initParam.rootPath}/basicinfo.do">1 단계</option>
							<option value="${initParam.rootPath}/housetypeandlocation.do">2 단계</option>
							<option selected="selected" value="${initParam.rootPath}/houselocation.do" >3 단계</option>
							<option value="${initParam.rootPath}/housefacility.do">4 단계</option>
							<option value="${initParam.rootPath}/houseimageenrollment.do">5 단계</option>
							<option value="${initParam.rootPath}/houseschedulemanagement.do">6 단계</option>
							<option value="${initParam.rootPath}/houseshutdowndate.do">7 단계</option>
							<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm " style="margin-top:15px;">
					<span>(3/8)</span>
				</div>
			</div>
		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="css/image/logos.PNG" alt="logo" />
</a>

<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 housesection">
			
				<div class="row row-condensed space-4" style="margin-bottom: 40px;">
					<div class="col-md-offset-2 col-md-8" >
						<div class="locationspan">
							<span>숙소 의 위치를 알려주세요</span>	
						</div>
						<input type="hidden" id="stage" value="register">
<%-- 						<input type="hidden" id="location" value="${reqeustScope.location}"> --%>
						<input type="hidden" id="location" value="경기도 용인시 수지구">
						<div id="map-canvas" style="width: 100%; height: 400px"></div>
					</div>
				</div>
			</div>
		</div>

		<div class="row houseBtns">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/housetypeandlocation.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<button class="btn btn-default" onclick="getMarkerLocation()">다음</button>
			</div>
		</div>
	</div>
</div>
