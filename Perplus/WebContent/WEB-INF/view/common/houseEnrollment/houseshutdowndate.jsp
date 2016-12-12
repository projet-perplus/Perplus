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
							<select class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
					</div>
					<div class="col-md-4 page_moveBtn hidden-xs">
						(7/12)
					</div>
				</div>
			 <div class="clearfix"></div>
			</div>
		</div>
	</div>
</div><a class="navbar-img" href="${initParam.rootPath}/main.do">
	<img src="css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
	
		<div class="row row-condensed space-4">
			<label class="text-left col-md-7 col-md-offset-2">
				<span >호스팅을 원하지 않는 날짜를 차단하려면 클릭하세요</span>
			</label>
			<div class="clearfix visible-md-block"></div>
		</div>
		
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4 row-sectionB">
					<label class="text-left col-sm-6 col-md-12">
						<span class="subspan">호스팅을 원하지 않는 날짜를 차단하려면 클릭하세요</span>
					</label>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-8">
							Date: <input type="text" id="datepicker1">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row houseBtns">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/houseschedulemanagement.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<a href="${initParam.rootPath}/houseprice.do">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>