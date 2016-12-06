<%@ page contentType="text/html;charset=UTF-8"%>

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

<div class="basicbody">
	<div class="container">
		<div class="househeader">


			<div class="row row-condensed space-4">
				<label class="text-left col-sm-6 col-lg-4"> <span>숙소
						이름</span>
				</label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="form-group">
							<input type="text" class="form-control" name="housename"
								placeholder="이름을 입력하세요.." required>
						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<label class="text-left col-sm-6 col-lg-4"> <span>숙소
						설명</span>
				</label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="form-group">
							<textarea class="form-control" name="houseexplanation" rows="5"
								placeholder="숙소에 대해 간단히 소개해 주세요."></textarea>
						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>
		</div>
		<div class="housebody">

			<div class="row row-condensed space-4">
				<label class="text-left col-sm-6 col-lg-4"> <span>게스트
						필수 요건</span>
				</label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="necessary">
							<p>인증된 이메일 전화번호 인증 프로필 사진
							<p>
						</div>
						<div class="necessary">
							<p>프로필 사진
							<p>
						</div>
						<div class="necessary">
							<p>결제 정보
							<p>
						</div>
						<div class="necessary" style="border: none;">
							<div class="col-xs-10 col-lg-10"
								style="padding-left: 0px !important;">
								<input type="text" class="form-control" name="necessaryitem"
									placeholder="추가 항목을 입력하세요..">
							</div>
							<div class="col-xs-2 col-lg-2">
								<button class="">+</button>
							</div>


						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>

			<div class="row row-condensed space-4 gueststepcontents">
				<div class="col-sm-6 col-lg-2"></div>
				<div class="col-sm-6 col-lg-10">
					<div class="col-xs-10 col-md-8">
						<span class="gueststep"> 게스트는 예약할 때 다음의 절차도 완료해야 합니다. </span>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>

			<div class="row row-condensed space-4 gueststepcontents">
				<label class="text-left col-sm-6 col-lg-4"> </label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="gueststepcontent">
							<p>* 숙소 이용 규칙에 동의합니다</p>
							<p>* 호스트에게 여행 목적을 설명합니다</p>
						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>

			<div class="row houseBtns">
				<div class="houseBtn">
					<div class="col-md-4 col-xs-4 previousBtn">
						<a href="${initParam.rootPath}/hosting.do"><button
								class="btn btn-default">이전</button></a>
					</div>
					<div class="col-md-4 col-xs-8 col-md-offset-4 nextBtn">
						<a href="${initParam.rootPath}/housetypeandlocation.do"><button
								class="btn btn-default">다음</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>