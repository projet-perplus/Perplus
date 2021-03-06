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
					<span>start</span>
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
		<div class="row row-condensed space-4" style="min-height:400px;">
			<label class="text-left col-md-7 col-md-offset-2 col-xs-10">
				<span>호스트가 될준비가 되셨나요?</span>
			</label>
		</div>
		<div class="housebody">
			<div class="row row-condensed">
				<div
					class="col-md-offset-2 col-sm-offset-2 col-xs-offset-1 col-md-1 col-sm-1 col-xs-3 previousBtn">
					<a href="${initParam.rootPath}/main.do">
						<button class="btn btn-default">아니요</button>
					</a>
				</div>
				<div
					class="col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-1 col-xs-3 nextBtn leftform">
					<a href="${initParam.rootPath}/house/oneStepBefore.do">
						<button class="btn btn-default">예</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
