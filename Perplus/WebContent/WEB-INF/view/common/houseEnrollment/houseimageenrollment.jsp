<%@ page contentType="text/html;charset=UTF-8"%>
<!-- header -->
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
<a class="navbar-img" href="${initParam.rootPath}/main.do">
	<img src="css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="row row-condensed space-4">
			<label class="text-left col-md-7 col-md-offset-2">
				<span >이미지 등록</span>
			</label>
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
			

