<%@ page contentType="text/html;charset=UTF-8"%>
<style>
.bg-4{
	position:relative;
}
</style>

<div id="dashboard-content">
	<div class="panel-header">
		<span>예약 관리</span>
	</div>
	<div class="panel-body" style="min-height: 450px;">
		<div class="row scheduleManagement">
			<div class="col-md-offset-2">

				<div class="col-md-10" style="padding: 0px;">
					<button
						style="width: 100%; background-color: #fff; border: 1px solid #ccc; padding: 5px;">
						<div class="col-md-2">숙소명</div>
						<div class="col-md-8">숙소 이름</div>
						<div class="col-md-2">V</div>
					</button>
				</div>

				<!-- 숙소 누르면 나올 꺼-->

				<div class="col-md-12">
					<div class="row">
						<div class=" col-md-10 "
							style="border: 1px solid #00b386;">


							<div class="row schedule" style="margin-top: 15px;">
								<div class="schedulePrice">
									<div class="col-md-6">예약 기간</div>
									<div class="col-md-6">yyyy-mm-dd ~ yyyy-mm-dd</div>
								</div>
							</div>
							<div class="row schedule" style="margin-top: 15px;">
								<div class="schedulePrice">
									<div class="col-md-6">인 원</div>
									<div class="col-md-6">인원수</div>
								</div>
							</div>

							<div class="row schedule" style="margin-top: 15px;">
								<div class="schedulePrice">
									<div class="col-md-6">체크인 시간</div>
									<div class="col-md-6">체크인 시간</div>
								</div>
							</div>

							<div class="row schedule" style="margin-top: 15px;">

								<div class="schedulePrice">
									<div class="col-md-6">$박</div>
									<div class="col-md-6">가격</div>
								</div>
							</div>

							<div class="row schedule" style="margin-top: 15px;">

								<div class="schedulePrice">
									<div class="col-md-6">서비스 수수료</div>
									<div class="col-md-6">가격</div>
								</div>
							</div>

							<div class="row schedule" style="margin-top: 15px;">

								<div class="schedulePrice">
									<div class="col-md-6">여행 크레딧</div>
									<div class="col-md-6">가격</div>
								</div>
							</div>

							<div class="row schedule" style="margin-top: 15px;">

								<div class="schedulePrice">
									<div class="col-md-6">합계</div>
									<div class="col-md-6">가격</div>
								</div>
							</div>

							<div class="row schedule" style="margin-top: 15px;">
								<div class="col-md-offset-2 col-md-4 ">
									<button type="button" class="btn btn-danger">예약 허가</button>
								</div>
								<div class="col-md-offset-2 col-md-4">
									<button type="button" class="btn btn-default">까기</button>
								</div>
							</div>
						</div>
					</div>
				</div><!-- 나올꺼 끝 드럽게 기넹 -->
				
				
				
			</div>
		</div>
	</div>
</div>


