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
							<option value="${initParam.rootPath}/basicinfo.do">1 단계</option>
							<option value="${initParam.rootPath}/housetypeandlocation.do">2
								단계</option>
							<option value="${initParam.rootPath}/houselocation.do">3
								단계</option>
							<option selected="selected"
								value="${initParam.rootPath}/housefacility.do">4 단계</option>
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
							<div class="col-md-6">
								<div class="form-group">
									<select class="form-control">
										<option>침실 개수</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<select class="form-control">
										<option>욕실수</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
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
						<div class="col-md-8">
							<c:forEach items="${requestScope.convenientFacility}"
								var="convenient">
								<label><input type="checkbox" name="convenientFacility"
									value="${convenient.value}"> ${convenient.value}</label>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-3"> <span>안전 시설</span>
						</label>
						<div class=" col-md-8">
							<c:forEach items="${requestScope.secureFacility}"
								var="secureFacility">
								<label><input type="checkbox" name="secureFacility"
									value="${secureFacility.value}">
									${secureFacility.value}</label>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection">
					<div class="row row-condensed space-4 row-sectionB">
						<label class="text-left col-md-3"> <span>공용 시설</span>
						</label>
						<div class=" col-md-8">
							<c:forEach items="${requestScope.commonFacility}"
								var="commonFacility">
								<label><input type="checkbox" name="commonFacility"
									value="${commonFacility.value}">
									${commonFacility.value}</label>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>


			<div class="row houseBtnMB">
				<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
					<a href="${initParam.rootPath}/houselocation.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
						<button type="submit" class="btn btn-default">다음</button>
				</div>
			</div>
		</form>
	</div>
</div>

