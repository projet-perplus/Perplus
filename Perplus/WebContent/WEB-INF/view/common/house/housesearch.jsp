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
			<div id="map-canvas" style="width: 100%; height: 626px !important"></div>
		</div>
		<div class="col-md-5 col-sm-12 col-xs-12">

				<div class="row panel-MT">
					<div class="col-md-3 col-sm-3 col-xs-3 rightform ">
						<button class="btn btn-primary">날짜</button>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3 rightform leftform">
						<button class="btn btn-primary">시작일</button>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3 rightform leftform">
						<button class="btn btn-primary">종료일</button>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3 rightform leftform">
						<button class="btn btn-primary">인원</button>
					</div>
				</div>
				<div class="row panel-MT">
					<div class="checkbox">
						<div class="col-md-3 rightform " style="margin-bottom:15px;">
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
							<button class="btn btn-primary" style="margin-top: 13px;">가격
								범위</button>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 col-xs-offset-1 col-md-offset-0" style="padding-left:0px;">
							<p>
								<label for="amount" style="padding-left:0px;">Price range:</label> <input type="text"
									id="amount" readonly
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
						<a href="${initParam.rootPath}/housedetailspage.do"><button
								class="btn btn-primary">숙소 상세 페이지</button></a>
					</div>
				</div>
		
			<div class="row">
				<div class="col-md-12">
				S
				</div>
			</div>
		</div>
	</div>
</div>

