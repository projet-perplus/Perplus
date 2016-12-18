<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$(function() {
			$(".datepicker").datepicker();
		});
	});
</script>
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
							<option selected="selected"
								value="${initParam.rootPath}/houseshutdowndate.do">7 단계</option>
							<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(7/8)</span>
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

		<div class="row row-condensed space-4">
			<label class="text-left col-md-7 col-md-offset-2"> <span>호스팅을
					원하지 않는 날짜를 차단하려면 클릭하세요</span>
			</label>
			<div class="clearfix visible-md-block"></div>
		</div>

		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection ">
				<div class="row row-condensed space-4 row-sectionB">
					<label class="text-left col-sm-6 col-md-12"> <span
						class="subspan">호스팅을 원하지 않는 날짜를 차단하려면 클릭하세요</span>
					</label>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-6">
							1 Date:
							<div class="datepicker"></div>

						</div>
						<div class=" col-md-6">
							1 Date:
							<div class="datepicker"></div>
						</div>
					</div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-6">
							1 Date:
							<div class="datepicker"></div>

						</div>
						<div class=" col-md-6">
							1 Date:
							<div class="datepicker"></div>
						</div>

					</div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-6">
							1 Date:
							<div class="datepicker"></div>

						</div>
						<div class=" col-md-6">
							1 Date:
							<div class="datepicker"></div>
						</div>

					</div>

				</div>
			</div>
		</div>
		<div class="row houseBtnMB">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/houseschedulemanagement.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<a href="${initParam.rootPath}/house/sevenStep.do">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>