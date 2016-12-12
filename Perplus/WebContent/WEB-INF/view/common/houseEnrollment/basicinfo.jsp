<%@ page contentType="text/html;charset=UTF-8"%>

<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-xs-3"></div>
			
			<div class="col-md-offset-6 col-md-3 col-xs-offset-6">
				<div class="col-md-7 page_moveBtn ">
					<div class="col-md-8 ">
						<div class="form-group">
							<select class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
							</select>
						</div>
					</div>
					<div class="col-md-4 page_moveBtn hidden-xs">
						(1/12)
					</div>
				</div>
			 <div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>

<a class="navbar-img" href="${initParam.rootPath}/main.do">
	<img src="css/image/logos.PNG" alt="logo" />
</a>
<div class="basicbody">
	<div class="container">
		<div class="househeader">


			<div class="row row-condensed space-4">
				<label class="text-left col-sm-6 col-md-3 col-md-offset-2">
					<span>숙소 이름</span>
				</label>
				<div class="col-sm-6 col-md-5">
					<div class="form-group">
						<input type="text" class="form-control" name="housename"
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
						<textarea class="form-control" name="houseexplanation" rows="5"
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
						<button class="btn btn-success" id="addNecessaryButton">
							필수 요건 추가
						</button>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4 gueststepcontents">
				<div class="col-md-offset-2 col-sm-6 col-md-8">
					<span class="gueststep">
						게스트는 예약할 때 다음의 절차도 완료해야 합니다.
					</span>
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
				<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
					<a href="${initParam.rootPath}/hosting.do">
					<button class="btn btn-default">이전</button></a>
				</div>
				<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
					<a href="${initParam.rootPath}/housetypeandlocation.do">
					<button class="btn btn-default">다음</button></a>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="js/basicinfo.js"></script>