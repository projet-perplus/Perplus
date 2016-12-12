<%@ page contentType="text/html;charset=UTF-8"%>
<!-- header -->
<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-xs-3"></div>

			<div class="col-md-offset-6 col-md-3 col-xs-offset-6">
				<div class="col-md-7 page_moveBtn ">
					<div class="col-md-8 ">
						<div class="form-group">
							<select class="form-control house_step">
								<option value="${initParam.rootPath}/basicinfo.do">1 단계</option>
								<option value="${initParam.rootPath}/housetypeandlocation.do">2 단계</option>
								<option value="${initParam.rootPath}/houselocation.do">3 단계</option>
								<option value="${initParam.rootPath}/housefacility.do">4 단계</option>
								<option value="${initParam.rootPath}/houseimageenrollment.do">5 단계</option>
								<option value="${initParam.rootPath}/houseschedulemanagement.do">6 단계</option>
								<option value="${initParam.rootPath}/houseshutdowndate.do">7 단계</option>
								<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
							</select>
						</div>
					</div>
					<div class="col-md-4 page_moveBtn hidden-xs">(5/8)</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do">
	<img src="css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="row row-condensed space-4">
			<label class="text-left col-md-7 col-md-offset-2">
			<span>이미지 등록</span>
			</label>
			<div class="clearfix visible-md-block"></div>
		</div>
		<div class="row row-condensed space-4">
			<div class="col-md-7 col-md-offset-4">
				<span id="fileInputForm"
					style="position: relative; float: left; width: 406px; height: 156px; overflow: hidden; cursor: pointer; background-image: url('/Perplus/css/image/addimage.PNG'); background-repeat: no-repeat;">
					<input type="file" id="filename" name="filename" value=""
					style='margin-left: -10px; width: 400px; height: 150px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'
					onChange="fileUpload()">
				</span>
			</div>
			<label class="text-left col-md-7 col-md-offset-2"> </label>
			<div class="clearfix visible-md-block"></div>
		</div>

		<div class="row houseBtns">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/housefacility.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<a href="${initParam.rootPath}/houseschedulemanagement.do">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>


