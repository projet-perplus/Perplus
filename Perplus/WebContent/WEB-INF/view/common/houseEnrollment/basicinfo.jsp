<%@ page contentType="text/html;charset=UTF-8"%>

<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-xs-3"></div>

			<div class="col-md-offset-5 col-md-3 col-xs-offset-5">
				<div class="col-md-8 col-xs-8 page_moveBtn">
					<div class="form-group ">
						<select class="form-control house_step">
							<option value="${initParam.rootPath}/basicinfo.do">1 단계</option>
							<option value="${initParam.rootPath}/housetypeandlocation.do">2
								단계</option>
							<option value="${initParam.rootPath}/houselocation.do">3
								단계</option>
							<option value="${initParam.rootPath}/housefacility.do">4
								단계</option>
							<option value="${initParam.rootPath}/houseimageenrollment.do">5
								단계</option>
							<option value="${initParam.rootPath}/houseschedulemanagement.do">6
								단계</option>
							<option value="${initParam.rootPath}/houseshutdowndate.do">7
								단계</option>
							<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(1/8)</span>
				</div>
			</div>
		</div>
	</div>
</div>

<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="/Perplus/css/image/logos.PNG" alt="logo" />
</a>
<div class="basicbody">
	<div class="container">
		<form action="${initParam.rootPath}/house/oneStep.do" id="">
			<input type="hidden" name="memberEmail"
				value="${sessionScope.login_info.memberEmail}">
			<div class="househeader">
				<div class="row row-condensed space-4">
					<label class="text-left col-sm-6 col-md-3 col-md-offset-2">
						<span>숙소 이름</span>
					</label>
					<div class="col-sm-6 col-md-5">
						<div class="form-group">
							<input type="text" class="form-control" name="houseTitle"
								placeholder="이름을 입력하세요.." required>
						</div>
					</div>
				</div>
				<div class="row row-condensed space-4">
					<label class="text-left col-sm-6 col-md-3 col-md-offset-2">
						<span>숙소 설명</span>
					</label>
					<div class="col-sm-6 col-md-5">
						<div class="form-group">
							<textarea class="form-control" name="houseContent" rows="5"
								placeholder="숙소에 대해 간단히 소개해 주세요."></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="housebody">
				<div class="row row-condensed space-4">
					<label class="text-left col-sm-6 col-md-3 col-md-offset-2">
						<span>게스트 필수 요건</span>
					</label>
					<div class="col-sm-6 col-md-5">
						<div class="necessary">
							<p>인증된 이메일 전화번호</p>
						</div>
						<div class="necessary">
							<p>프로필 사진</p>
						</div>
						<div class="necessary">
							<p>결제 정보</p>
						</div>
						<div class="necessary" style="border: none;">
							<ul></ul>
							<button type="button" class="btn btn-success"
								id="addNecessaryButton">필수 요건 추가</button>
						</div>
					</div>
				</div>
				<div class="row row-condensed space-4 gueststepcontents">
					<div class="col-md-offset-2 col-sm-6 col-md-8">
						<span class="gueststep"> 게스트는 예약할 때 다음의 절차도 완료해야 합니다. </span>
					</div>
				</div>

				<div class="row row-condensed space-4 gueststepcontents">
					<div class="col-md-offset-2 col-sm-6 col-md-8">
						<div class="gueststepcontent">
							<p>* 숙소 이용 규칙에 동의합니다</p>
							<p>* 호스트에게 여행 목적을 설명합니다</p>
						</div>
					</div>
				</div>

				<div class="row houseBtns">
					<div class="col-md-offset-2 col-md-4 col-xs-3 previousBtn">
						<a href="${initParam.rootPath}/hosting.do">
							<button type="button" class="btn btn-default">이전</button>
						</a>
					</div>
					<div class="col-md-offset-3 col-md-3 col-xs-3 nextBtn">
						<button class="btn btn-default">다음</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script src="/Perplus/js/basicinfo.js"></script>