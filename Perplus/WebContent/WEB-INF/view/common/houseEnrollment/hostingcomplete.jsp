<%@ page contentType="text/html;charset=UTF-8"%>
<!-- header -->
<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-xs-3"></div>

			<div class="col-md-offset-5 col-md-3 col-xs-offset-5">
				<div class="col-md-8 col-xs-8 page_moveBtn">
					<div class="form-group ">
						<select class="form-control house_step">
							<option selected="selected"
								value="${initParam.rootPath}/basicinfo.do">완료</option>
							<option value="${initParam.rootPath}/house/oneStepBefore.do">1
								단계</option>
							<option
								value="${initParam.rootPath}/house/twoStepBefore.do?${param.houseSerial}">2
								단계</option>
							<option
								value="${initParam.rootPath}/house/threeStepBefore.do?${param.houseSerial}">3
								단계</option>
							<option
								value="${initParam.rootPath}/house/fourStepBefore.do?${param.houseSerial}">4
								단계</option>
							<option
								value="${initParam.rootPath}/house/fiveStepBefore.do?${param.houseSerial}">5
								단계</option>
							<option
								value="${initParam.rootPath}/house/sixStepBefore.do?${param.houseSerial}">6
								단계</option>
							<option
								value="${initParam.rootPath}/house/sevenStepBefore.do?${param.houseSerial}">7
								단계</option>
							<option
								value="${initParam.rootPath}/house/eightStepBefore.do?${param.houseSerial}">8
								단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>complate</span>
				</div>
			</div>
		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="row row-condensed space-4" style="height: 496px;">
			<label class="text-left col-md-7 col-md-offset-2"> <span>호스팅이
					완료되었습니다.</span>
			</label>
			<div class="clearfix visible-md-block"></div>
		</div>

		<div class="row row-condensed">
			<div
				class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-1 col-sm-1 col-xs-1 previousBtn">
				<a href="${initParam.rootPath}/houseprice.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div
				class="col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-1 col-xs-1 nextBtn leftform">
				<a
					href="${initParam.rootPath}/house/houseDetail.do?houseSerial=${param.houseSerial}">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>


