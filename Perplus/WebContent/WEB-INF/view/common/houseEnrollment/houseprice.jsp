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
							<option value="${initParam.rootPath}/house/oneStepBefore.do">1
								단계</option>
							<option
								value="${initParam.rootPath}/house/twoStepBefore.do?houseSerial=${param.houseSerial}">2
								단계</option>
							<option
								value="${initParam.rootPath}/house/threeStepBefore.do?houseSerial=${param.houseSerial}">3
								단계</option>
							<option
								value="${initParam.rootPath}/house/fourStepBefore.do?houseSerial=${param.houseSerial}">4
								단계</option>
							<option
								value="${initParam.rootPath}/house/fiveStepBefore.do?houseSerial=${param.houseSerial}">5
								단계</option>
							<option
								value="${initParam.rootPath}/house/sixStepBefore.do?houseSerial=${param.houseSerial}">6
								단계</option>
							<option
								value="${initParam.rootPath}/house/sevenStepBefore.do?houseSerial=${param.houseSerial}">7
								단계</option>
							<option selected
								value="${initParam.rootPath}/house/eightStepBefore.do?houseSerial=${param.houseSerial}">8
								단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(8/8)</span>
				</div>
			</div>
		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="/Perplus/css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
		<form action="${initParam.rootPath}/house/eightStep.do">
			<input type="hidden" name="houseSerial"
				value=<%=request.getParameter("houseSerial")%>>
			<div class="row row-condensed space-4">
				<label class="text-left col-md-7 col-md-offset-2"> <span>요금
						설정</span>
				</label>
				<div class="clearfix visible-md-block"></div>
			</div>

			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection"
					style="height: 392px;">
					<div class="row row-condensed space-4" style="margin-bottom: 0px">
						<label class="text-left col-sm-6 col-md-12"> <span
							class="subspan">기본 요금</span>
						</label>
						<div class="clearfix visible-md-block"></div>
						<div class="col-md-offset-1 col-md-10">
							<div class=" col-md-8">
								<div class="form-group">
									<input type="number" class="form-control" name="houseFilterPrice"
										placeholder="KRW/박" required>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-2 col-md-10 price_message">
						<span>* 기본 요금은 회원님이 정한 기본 1박당 요금입니다</span>
					</div>

				</div>
			</div>
			<div class="row houseBtns">
				<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
					<a href="${initParam.rootPath}/houseshutdowndate.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
					<a href="${initParam.rootPath}/house/eightStep.do">
						<button class="btn btn-default">다음</button>
					</a>
				</div>
			</div>
		</form>
	</div>
</div>