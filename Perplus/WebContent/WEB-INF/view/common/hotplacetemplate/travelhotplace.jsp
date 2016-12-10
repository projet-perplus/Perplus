<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU" type="text/javascript"></script>
<script src="js/map.js"></script>

<div class="container">
	<div id="dashboard-content" class="hotplace">
		<div class="panel-header">
		
			<div class="col-md-4 col-xs-4 headeCrH panel-PN" style="height:50px;">
				<div class="col-md-6 panel-MT panel-PN">
					<div class="form-group">
						<input type="text" class="form-control" name="locationname"
							placeholder="지역명 도시명,주소">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			
			<div class="col-md-4 col-xs-3"> 
				<button type="button" class="btn btn-primary btn-md panel-MT">필터</button>
			</div>
			
			<div class="col-md-4 col-xs-5">
				<div class="dropdown panel-MT pull-right">
	  				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
	  						마커보기
	  					<span class="caret"></span>
	  				</button>
				    <ul class="dropdown-menu ">
						<li>
							<a href="#" data-toggle="modal" data-target="#reviewEnrollment">
								<button type="button" class="btn btn-primary">리뷰 작성</button>
							</a>
						</li>
						<li>
							<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=2">
								<button type="button" class="btn btn-primary">리뷰 상세페이지</button>
							</a>
						</li>
		 		    </ul>
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<div id="map-canvas" style="width: 100%; height: 600px"></div>
				</div>
			</div>
		</div>
	</div>
</div>	

