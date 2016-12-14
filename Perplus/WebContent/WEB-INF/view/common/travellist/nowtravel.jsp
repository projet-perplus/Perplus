<%@ page contentType="text/html;charset=UTF-8"%>

<div id="dashboard-content">
	<div class="panel-header">
		<span>현재 여행</span>

	</div>
	<div class="panel-body">
		<div class="row nowtravel">
			<div class="col-md-offset-1 col-sm-offset-1">
				
				<div class="col-md-5 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-md-12">
							상태: 여행중(예약 진행중)승인
						</div>
					</div>
					<!-- 목록 하나 -->
					<div class="col-md-10"
						style="margin-right: 15px; margin-bottom: 15px;">

						<div class="row con1" style="background-color: #ccc;">
							<div class="col-md-12" style="padding:0px;">
								<img src="/Perplus/css/image/photo0.jpg" alt="asd" style="width:100%; height:200px" />
							</div>
						</div>

						<div class="row subcon1" style="border: 1px solid #ccc;">
							<div class="row con2">
								<div class="col-md-12">
									<span class="col-md-12"
										style="text-align: center; padding: 5px;">숙소 이름 request</span>
								</div>
							</div>

							<div class="row con3">
								<div class="col-md-12">
									<div class="section3" style="border-top: 2px solid #ccc;">
										<span class="col-md-12"
											style="text-align: center; padding: 5px;"> 숙소 위치 : 경기도
											용인시 처인구 </span>
									</div>
								</div>
							</div>
						</div>
						<div class="row con4">

							<button type="button" class="btn btn-default" style="width: 100%">결제하기</button>
						</div>
					</div>
					<!-- /목록 하나 -->
				</div>

				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="row con3">
						<div class="con-md-12 ">
							<span>선택한 명소
								<button>+</button>
							</span>
						</div>
					</div>
					<div class="row row-condensed">
						<div class="slidebar">
							<div class="carousel slide" id="myCarousel">
								<div class="carousel-inner">
									<div class="active item">
										<!-- 목록 하나 -->
										<div
											class="col-md-offset-3 col-md-6 col-sm-offset-4 col-sm-5 col-xs-offset-3 col-xs-6">
											<img src="/Perplus/css/image/photo0.jpg" alt="asd"
												style="width: 100%; height: 100px" />
										</div>
										<!-- 목록끝 -->
									</div>
									<div class="item">
										<!-- 목록 하나 -->
										<div
											class="col-md-offset-3 col-md-6 col-sm-offset-4 col-sm-5 col-xs-offset-3 col-xs-6">
											<img src="/Perplus/css/image/photo0.jpg" alt="asd"
												style="width: 100%; height: 100px" />
										</div>
										<!-- 목록끝 -->
									</div>
									<div class="item">
										<!-- 목록 하나 -->
										<div
											class="col-md-offset-3 col-md-6 col-sm-offset-4 col-sm-5 col-xs-offset-3 col-xs-6">
											<img src="/Perplus/css/image/photo0.jpg" alt="asd"
												style="width: 100%; height: 100px" />
										</div>
										<!-- 목록끝 -->
									</div>
								</div>
								<!--  left right button -->
								<a class="left carousel-control" href="#myCarousel"
									role="button" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a class="right carousel-control" href="#myCarousel"
									role="button" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
						</div>
						<!--/Slider-->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
