<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<option selected
								value="${initParam.rootPath}/house/sixStepBefore.do?houseSerial=${param.houseSerial}">6
								단계</option>
							<option
								value="${initParam.rootPath}/house/sevenStepBefore.do?houseSerial=${param.houseSerial}">7
								단계</option>
							<option
								value="${initParam.rootPath}/house/eightStepBefore.do?houseSerial=${param.houseSerial}">8
								단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(6/8)</span>
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
		<form action="${initParam.rootPath}/house/sixStep.do">
			<input type="hidden" name="houseSerial"
				value=<%=request.getParameter("houseSerial")%>>
			<div class="row row-condensed space-4">
				<label class="text-left col-md-3 col-md-offset-2"> <span>예약일정
						관리</span>
				</label>
				<div class="clearfix visible-md-block"></div>
			</div>

			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-8 col-xs-11"> <span
							class="subspan">체크인까지 최소한 어느 정도의 여유가 있어야 하나요?</span>
						</label>
						<div class="clearfix visible-md-block"></div>
						<div class="col-md-offset-1 col-md-10">
							<div class=" col-md-8">
								<div class="form-group">
									<select class="form-control" name="houseFilterCheckinTerm">
										<c:forEach begin="1" end="20" var="number">
											<option value="${number}">${number}일</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-12"> <span class="subspan">체크인
								가능 시간을 선택해 주세요.</span>
						</label>
						<div class="clearfix visible-md-block"></div>
						<div class="col-md-offset-1 col-md-8">
							<div class=" col-md-5">
								<div class="form-group">
									<select class="form-control" name="houseFilterCheckinStart">
										<option>시작 시간</option>
										<c:forEach begin="0" end="23" var="number">
											<option value="${number}">${number}시</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class=" col-md-5">
								<div class="form-group">
									<select class="form-control" name="houseFilterCheckinEnd">
										<option>종료 시간</option>
										<c:forEach begin="0" end="23" var="number">
											<option value="${number}">${number}시</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-12"> <span class="subspan">얼마나
								먼 날짜 까지 예약할 수 있나요?</span>
						</label>
						<div class="clearfix visible-md-block"></div>
						<div class="col-md-offset-1 col-md-10">
							<div class=" col-md-8">
								<div class="form-group">
									<select class="form-control" name="houseFilterReservationTerm">
										<option value=1>1달</option>
										<option value=2>2달</option>
										<option value=3>3달</option>
										<option value=4>4달</option>
										<option value=5>5달</option>
										<option value=6>6달</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-sm-6 col-md-12"> <span
							class="subspan">몇박 몇일 까지 예약할 수 있나요?</span>
						</label>
						<div class="clearfix visible-md-block"></div>
						<div class="col-md-offset-1 col-md-10">
							<div class=" col-md-8">
								<div class="form-group">
									<select class="form-control" name="houseFilterBakMin">
										<option value=1>최소 일수</option>
										<c:forEach begin="1" end="10" var="cnt">
											<option>${cnt}박</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<select class="form-control" name="houseFilterBakMax">
										<option value=1>최대 일수</option>
										<c:forEach begin="10" end="40" var="cnt">
											<option>${cnt}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed">
				<div
					class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-1 col-sm-1 col-xs-1 previousBtn">
					<a href="${initParam.rootPath}/houseimageenrollment.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div
					class="col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-1 col-xs-1 nextBtn leftform">
					<button class="btn btn-default">다음</button>
				</div>
			</div>
		</form>
	</div>
</div>








