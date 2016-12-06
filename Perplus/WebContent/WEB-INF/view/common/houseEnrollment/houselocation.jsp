<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU" type="text/javascript"></script>

<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10 col-xs-8"></div>
			<div class="col-md-1 col-xs-3">
				<div class="form-group">
					<select class="form-control" style="margin-top: 7px;">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
				</div>
			</div>
			<div class="col-md-1 col-xs-1"></div>
		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="css/image/logos.PNG" alt="logo" />
</a>

<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="housesection">
			<div class="row row-condensed space-4" style="margin-bottom: 40px;">
				<div class="col-xs-1 col-lg-3" >
				
				</div>
				<div class="col-xs-10 col-lg-6" >
					<div class="locationspan">
							<span>숙소 의 위치를 알려주세요</span>	
						</div>
					<div id="map-canvas" style="width: 100%; height: 400px"></div>
					</div>
				</div>
				<div class="col-xs-1 col-lg-3" >
					
				</div>
				
		</div>
	
		<div class="row houseBtns">
			<div class="houseBtn">
				<div class="col-md-4 col-xs-4 previousBtn">
					<a href="${initParam.rootPath}/housetypeandlocation.do">
						<button class="btn btn-default">이전</button>
					</a>
				</div>
				<div class="col-md-4 col-xs-8 col-md-offset-4 nextBtn">
					<a href="${initParam.rootPath}/housefacility.do">
						<button class="btn btn-default">다음</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
