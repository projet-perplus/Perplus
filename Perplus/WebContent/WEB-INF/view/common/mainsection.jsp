<%@ page contentType="text/html;charset=UTF-8"%>

<!-- First Container 메인 배경 -->
<div class="container-fluid bg-1 text-center">
	<div class="mainLogo">
		<img src="/Perplus/css/image/mainLogo.PNG" alt="logo">
	</div>
</div>

<!-- Second Container 필터 폼-->
<div class="filterForm">
<div class="container bg-2 text-center">
		<div class="row">
			<div class="col-md-12">
				<form method="post" action="">
					<div class="col-md-4 borderR">
						<div class="col-md-12">
							<div class="form-group">
								<label for="location">위치</label><br> <input type="text"
									class="form-control" name="location" id="location"
									placeholder="목적지 도시명 주소">
							</div>
						</div>
					</div>
					<div class="col-md-4 borderR">
						<div class="col-md-6">
							<div class="form-group">
								<label for="location">체크인</label><br> <input type="text"
									class="form-control" name="check" id="dpd1"
									placeholder="yy-mm-dd">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="location">체크아웃</label><br> <input type="text"
									class="form-control" name="check" id="dpd2"
									placeholder="yy-mm-dd">
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-7 borderR">
							<div class="form-group">
								<label for="secl1">인원</label> <select class="form-control"
									name="personnel" id="GuestInput">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-md-5">
							<a href="${initParam.rootPath}/housesearch.do"><button
									type="button" class="btn btn-default btn-lg" name="roomssearch"
									id="Search">숙소 검색</button></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>