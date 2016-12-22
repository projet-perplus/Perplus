<%@ page contentType="text/html;charset=UTF-8"%>
<script>
	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideToggle("slow");
		});
	});
</script>




<style>
#panel, #flip {
	text-align: center;
}

#panel {
	display: none;
}
</style>



<div id="dashboard-content">
	<div class="panel-header">
		<span>예약 관리</span>
	</div>
	<div class="panel-body" style="min-height: 450px;">

		<!-- 메뉴 1나 -->

		<div class="row scheduleManagement">
			<div class="col-md-offset-1 col-md-10">
				<div id="flip">
					<button
						style="width: 100%; background-color: #fff; border: 1px solid #ccc; padding: 5px;">
						<div class="col-md-2 col-sm-2 col-xs-4">숙소명 : </div>
						<div class="col-md-8 col-sm-8 col-xs-6">숙소 이름</div>
						<div class="col-md-2 col-sm-2 col-xs-2">V</div>
					</button>
				</div>
			</div>
		</div>
		<div class="row scheduleManagement">
			<div class="col-md-offset-1 col-md-10">
				<div id="panel">
					<div class="col-md-12 col-sm-12 col-xs-12"
						style="border: 1px solid #ccc;">

						<!-- 숙소 누르면 나올 꺼-->
						
						<div class="col-md-12 col-sm-12 col-xs-12 schedule"
							style="margin-top: 15px;">
							<div class="schedulePrice">
								<div class="col-md-6 col-sm-6 col-xs-6">예약 기간</div>
								<div class="col-md-6 col-sm-6 col-xs-6">yyyy-mm-dd ~
									yyyy-mm-dd</div>
							</div>
						</div>
						
						<div class="col-md-12 col-sm-12 col-xs-12 schedule ">
							<div class="schedulePrice">
								<div class="col-md-6 col-sm-6 col-xs-6">인 원</div>
								<div class="col-md-6  col-sm-6 col-xs-6">인원수</div>

							</div>
						</div>

						<div class="col-md-12 col-sm-12 col-xs-12 schedule ">
							<div class="schedulePrice">
								<div class="col-md-6 col-sm-6 col-xs-6">체크인 시간</div>
								<div class="col-md-6 col-sm-6 col-xs-6">체크인 시간</div>

							</div>
						</div>

						<div class="col-md-12 col-sm-12 col-xs-12 schedule ">

							<div class="schedulePrice">
								<div class="col-md-6 col-sm-6 col-xs-6">$박</div>
								<div class="col-md-6 col-sm-6 col-xs-6">가격</div>

							</div>
						</div>

						<div class="col-md-12 col-sm-12 col-xs-12 schedule ">

							<div class="schedulePrice">
								<div class="col-md-6 col-sm-6 col-xs-6">서비스 수수료</div>
								<div class="col-md-6 col-sm-6 col-xs-6">가격</div>

							</div>
						</div>

						<div class="col-md-12 col-sm-12 col-xs-12 schedule ">
							<div class="schedulePrice">
								<div class="col-md-6 col-sm-6 col-xs-6">여행 크레딧</div>
								<div class="col-md-6 col-sm-6 col-xs-6">가격</div>

							</div>
						</div>
						
						<div class="col-md-12 col-sm-12 col-xs-12 schedule ">
							<div class="schedulePrice ">
								<div class="col-md-6 col-sm-6 col-xs-6">합계</div>
								<div class="col-md-6 col-sm-6 col-xs-6">가격</div>
							</div>
						</div>
						
						<div class="col-md-12 col-sm-12 col-xs-12 row-maginTB">
							<div
								class="col-md-offset-1 col-sm-offset-2 col-xs-offset-0 col-md-4 col-sm-3 col-xs-6">
								<button type="button" class="btn btn-success">예약 허가</button>
							</div>
							
							<div
								class="col-md-offset-3 col-md-offset-3 col-sm-offset-2 col-xs-offset-1 col-md-2 col-sm-4 col-xs-4">
								<button type="button" class="btn btn-danger">까기</button>
							</div>
							
						</div>
						<!-- 나올꺼 끝 드럽게 기넹 -->
					</div>
				</div>
			</div>
		</div>
		<!--/ 메뉴 1나 -->
	</div>

</div>
