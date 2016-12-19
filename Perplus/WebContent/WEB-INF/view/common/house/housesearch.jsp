<%@ page contentType="text/html;charset=UTF-8"%>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU"
	type="text/javascript"></script>
<script src="/Perplus/js/map.js"></script>
<script>
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 500,
			values : [ 75, 300 ],
			slide : function(event, ui) {
				$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
			}
		});
		$("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1));
	});
</script>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-7 col-sm-12 col-xs12" style="padding-left: 0px">
			<input type="hidden" id="stage" value="travel"> <input
				type="hidden" id="location">
			<div id="map-canvas" style="width: 100%; height: 600px;"></div>
		</div>
		<div class="col-md-5 col-sm-12 col-xs-12">

			<div class="row panel-MT">
				<div class="col-md-12">
					<div class="col-md-2 col-sm-2 col-xs-12 rightform leftform">
						<span class="btn btn-primary"
							style="margin-bottom: 15px !important;">날짜</span>
					</div>


					<div class="col-md-3 col-sm-3 col-xs-4 ">

						<input type="text" class="form-control" name="check" id="dpd1"
							placeholder="yy-mm-dd" value="시작일 ">

					</div>


					<div class="col-md-3 col-sm-3 col-xs-4 ">

						<input type="text" class="form-control" name="check" id="dpd2"
							placeholder="yy-mm-dd" value="종료일">

					</div>

					<div class="col-md-3 col-sm-3 col-xs-4 ">
						<select class="form-control ">
							<option>한명</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row panel-MT">
				<div class="checkbox">
					<div class="col-md-3 rightform " style="margin-bottom: 15px;">
						<button class="btn btn-primary">숙소 유형</button>
					</div>
					<div class="col-md-2 col-xs-offset-1 col-xs-3  rightform leftform">
						<label><input type="checkbox" value="">집전체</label>
					</div>
					<div class="col-md-2 col-xs-3 rightform leftform">
						<label><input type="checkbox" value="">개인실</label>
					</div>
					<div class="col-md-2 col-xs-3 rightform leftform">
						<label><input type="checkbox" value="">다인실</label>
					</div>
				</div>
			</div>

			<div class="row panel-MT">
				<div class="checkbox">
					<div class="col-md-3 col-sm-3 col-xs-12 rightform ">
						<span class="btn btn-primary " style="margin-top: 13px;">가격
							범위</span>
					</div>
					<div
						class="col-md-8 col-sm-8 col-xs-8 col-xs-offset-1 col-md-offset-0"
						style="padding-left: 0px;">
						<p>
							<label for="amount" style="padding-left: 0px;">Price
								range:</label> <input type="text" id="amount" readonly
								style="border: 0; color: #f6931f; font-weight: bold;">
						</p>

						<div id="slider-range"></div>
					</div>
				</div>
			</div>

			<div class="row row-condensed space-4">
				<div class="col-md-12">
					<a href="#" data-toggle="modal" data-target="#addfilterdialog"><button
							class="btn btn-primary">추가 필터</button></a>
				</div>

			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-12">
					<a href="${initParam.rootPath}/house/houseDetail.do?houseSerial=1"><button
							class="btn btn-primary">숙소 상세 페이지</button></a>
				</div>
			</div>

			<div class="row " style="margin-right:20px">
				<div class="col-md-12"
					style="overflow: scroll; border: 2px solid #ccc; height: 255px">

					<!-- 목록 하나 -->
					<div class="col-md-3 col-sm-4 col-xs-4"
						style="margin: 12px 24px 12px 24px;">
						<div class="row con1">
							<div class="row con1">
								<div class="col-md-12" style="padding: 0px;">
									<img src="/Perplus/css/image/photo0.jpg" alt="asd"
										style="width: 100%; height: 150px" />
								</div>
							</div>

							<div class="row subcon1" style="border: 1px solid #ccc;">
								<div class="row con2">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">숙소 이름
											request</span>
									</div>
								</div>
							</div>

							<div class="row subcon2" style="border: 1px solid #ccc;">
								<div class="row con3">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">가격 request</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 목록 하나 -->
	
					<!-- 목록 하나 -->
					<div class="col-md-3 col-sm-4 col-xs-4"
						style="margin: 12px 24px 12px 24px;">
						<div class="row con1">
							<div class="row con1">
								<div class="col-md-12" style="padding: 0px;">
									<img src="/Perplus/css/image/photo0.jpg" alt="asd"
										style="width: 100%; height: 150px" />
								</div>
							</div>

							<div class="row subcon1" style="border: 1px solid #ccc;">
								<div class="row con2">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">숙소 이름
											request</span>
									</div>
								</div>
							</div>

							<div class="row subcon2" style="border: 1px solid #ccc;">
								<div class="row con3">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">가격 request</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 목록 하나 -->
					
					
					<!-- 목록 하나 -->
					<div class="col-md-3 col-sm-4 col-xs-4"
						style="margin: 12px 24px 12px 24px;">
						<div class="row con1">
							<div class="row con1">
								<div class="col-md-12" style="padding: 0px;">
									<img src="/Perplus/css/image/photo0.jpg" alt="asd"
										style="width: 100%; height: 150px" />
								</div>
							</div>

							<div class="row subcon1" style="border: 1px solid #ccc;">
								<div class="row con2">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">숙소 이름
											request</span>
									</div>
								</div>
							</div>

							<div class="row subcon2" style="border: 1px solid #ccc;">
								<div class="row con3">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">가격 request</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 목록 하나 -->
					
					<!-- 목록 하나 -->
					<div class="col-md-3 col-sm-4 col-xs-4"
						style="margin: 12px 24px 12px 24px;">
						<div class="row con1">
							<div class="row con1">
								<div class="col-md-12" style="padding: 0px;">
									<img src="/Perplus/css/image/photo0.jpg" alt="asd"
										style="width: 100%; height: 150px" />
								</div>
							</div>

							<div class="row subcon1" style="border: 1px solid #ccc;">
								<div class="row con2">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">숙소 이름
											request</span>
									</div>
								</div>
							</div>

							<div class="row subcon2" style="border: 1px solid #ccc;">
								<div class="row con3">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">가격 request</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 목록 하나 -->
					
					<!-- 목록 하나 -->
					<div class="col-md-3 col-sm-4 col-xs-4"
						style="margin: 12px 24px 12px 24px;">
						<div class="row con1">
							<div class="row con1">
								<div class="col-md-12" style="padding: 0px;">
									<img src="/Perplus/css/image/photo0.jpg" alt="asd"
										style="width: 100%; height: 150px" />
								</div>
							</div>

							<div class="row subcon1" style="border: 1px solid #ccc;">
								<div class="row con2">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">숙소 이름
											request</span>
									</div>
								</div>
							</div>

							<div class="row subcon2" style="border: 1px solid #ccc;">
								<div class="row con3">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">가격 request</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 목록 하나 -->
					
					<!-- 목록 하나 -->
					<div class="col-md-3 col-sm-4 col-xs-4"
						style="margin: 12px 24px 12px 24px;">
						<div class="row con1">
							<div class="row con1">
								<div class="col-md-12" style="padding: 0px;">
									<img src="/Perplus/css/image/photo0.jpg" alt="asd"
										style="width: 100%; height: 150px" />
								</div>
							</div>

							<div class="row subcon1" style="border: 1px solid #ccc;">
								<div class="row con2">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">숙소 이름
											request</span>
									</div>
								</div>
							</div>

							<div class="row subcon2" style="border: 1px solid #ccc;">
								<div class="row con3">
									<div class="col-md-12">
										<span class="col-md-12"
											style="text-align: center; padding: 5px; font-size:12px;">가격 request</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 목록 하나 -->




				</div>
			</div>
		</div>
	</div>
</div>