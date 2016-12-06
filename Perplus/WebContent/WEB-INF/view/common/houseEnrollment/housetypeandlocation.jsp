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
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="housesection">
			<div class="row row-condensed space-4" style="margin-bottom: 80px;">
				<label class="text-left col-sm-6 col-lg-4">
					<span>숙소 유형</span>
				</label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="col-xs-6 col-md-4">
							<div class="form-group">
								<select class="form-control">
									<option>집전체</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6 col-md-4">
							<div class="form-group">
								<select class="form-control">
									<option>게스트 1명</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>
		</div>
		<div class="housesection">
			<div class="row row-condensed space-4" style="margin-bottom: 80px;">
				<label class="text-left col-sm-6 col-lg-4">
					<span>건물 유형</span>
				</label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="col-xs-6 col-md-4">
							<div class="form-group">
								<select class="form-control">
									<option>집전체</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6 col-md-4">
							<div class="form-group">
								<select class="form-control">
									<option>게스트 1명</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>
		</div>
		
		<div class="housesection">
			<div class="row row-condensed space-4" style="margin-bottom: 80px;">
				<label class="text-left col-sm-6 col-lg-4">
					<span>숙소 위치</span>
				</label>
				<div class="col-sm-6 col-lg-8">
					<div class="col-xs-10 col-md-8">
						<div class="form-group">
							<select class="form-control">
								<option>집전체</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
					</div>
					<div class="col-xs-2 col-md-4"></div>
				</div>
			</div>
		</div>

		<div class="row houseBtns">
			<div class="houseBtn">
				<div class="col-md-4 col-xs-4 previousBtn">
					<a href="${initParam.rootPath}/basicinfo.do">
						<button class="btn btn-default">이전</button>
					</a>
				</div>
				<div class="col-md-4 col-xs-8 col-md-offset-4 nextBtn">
					<a href="${initParam.rootPath}/houselocation.do">
						<button class="btn btn-default">다음</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

