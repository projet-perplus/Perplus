<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU" type="text/javascript"></script>
<script src="js/map.js"></script>


<div class="container">
	<div class="row">
		<div id="dashboard-content" class="headerM">
			<form action="">
				<div class="panel-header">
					<div class="col-md-4 headerH">
						<div class="col-md-6 panel-MT">
							<div class="form-group">
								<input type="text" class="form-control" name="locationname"
									placeholder="지역명 도시명,주소">
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4">
						<button type="button" class="btn btn-primary btn-md panel-MT">필터</button>
					</div>
					<div class="col-md-4">
						<div class="col-md-6"></div>
						<div class="col-md-6"></div>
					</div>
				</div>
				<div class="panel-body panel-PN">
					<div class="row">
						<div class="col-md-10">
							<div id="map-canvas" style="width: 100%; height: 500px"></div>
						</div>
						<div class="col-md-2">
							<ul>
								<li>
									<a href="#" data-toggle="modal" data-target="#reviewEnrollment">
										<button type="button" class="btn btn-primary">리뷰 작성</button>
									</a>
								</li>
								<li>
									<a href="${initParam.rootPath}/reviewdetailpage.do">
										<button type="button" class="btn btn-primary">리뷰 상세페이지</button>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>




