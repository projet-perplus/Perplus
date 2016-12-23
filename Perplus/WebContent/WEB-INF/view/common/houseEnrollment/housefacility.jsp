<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<option selected
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
							<option
								value="${initParam.rootPath}/house/eightStepBefore.do?houseSerial=${param.houseSerial}">8
								단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(4/8)</span>
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
		<form action="${initParam.rootPath}/house/fourStep.do">
			<input type="hidden" name="houseSerial"
				value=<%=request.getParameter("houseSerial")%>>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-3"> <span>숙박 시설</span>
						</label>
						<div class="col-md-8">
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="houseFilterBedroomNumber">
										<option value="1">침실 개수</option>
										<c:forEach begin="1" end="30" var="cnt">
											<option value="${cnt}">${cnt }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="houseFilterBedNumber">
										<option value="">침대 개수</option>
										<c:forEach begin="1" end="30" var="cnt">
											<option value="${cnt}">${cnt }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="houseFilterBathroomNumber">
										<option value="">욕실 개수</option>
										<c:forEach begin="1" end="30" var="cnt">
											<option>${cnt }</option>
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
						<label class="text-left col-md-3"> <span>편의 시설</span>
						</label>
						<div class="col-md-9">
							<div class="row">
								<c:forEach items="${requestScope.convenientFacility}"
									var="convenient">
									<div class="col-md-3 col-xs-6">
										<label><input type="checkbox"
											name="convenientFacility" value="${convenient.value}">
											${convenient.value}</label>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-3"> <span>안전 시설</span>
						</label>
						<div class=" col-md-9">
							<div class="row">
								<c:forEach items="${requestScope.secureFacility}"
									var="secureFacility">
									<div class="col-md-3 col-xs-6">
										<label><input type="checkbox" name="secureFacility"
											value="${secureFacility.value}">
											${secureFacility.value}</label>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-3"> <span>공용 시설</span>
						</label>
						<div class=" col-md-9">
							<div class="row">

								<c:forEach items="${requestScope.commonFacility}"
									var="commonFacility">
									<div class="col-md-3 col-xs-6">
										<label><input type="checkbox" name="commonFacility"
											value="${commonFacility.value}">
											${commonFacility.value}</label>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row row-condensed">

				<div
					class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-1 col-sm-1 col-xs-1 previousBtn">
					<a href="${initParam.rootPath}/houselocation.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div
					class="col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-1 col-xs-1 nextBtn">
					<button class="btn btn-default">다음</button>
				</div>
			</div>

		</form>
	</div>
</div>

