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
	
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4" style="margin-bottom: 80px;">
					<label class="text-left col-sm-6 col-md-3">
						<span>숙박 시설</span>
					</label>
					<div class="col-sm-6 col-md-8">
						<div class="col-xs-4 col-md-4">
							<div class="form-group">
								<select class="form-control">
									<option>침실 개수</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-xs-4 col-md-4">
							<div class="form-group">
								<select class="form-control">
									<option>숙박가능 인원</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-xs-4 col-md-4">
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
				<div class="row row-condensed space-4" style="margin-bottom: 80px;">
					<label class="text-left col-sm-6 col-md-3">
						<span>편의 시설</span>
					</label>
					<div class="col-sm-6 col-md-8">
							checkbox
					</div>
				</div>
			</div>
		</div>
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4" style="margin-bottom: 80px;">
					<label class="text-left col-sm-6 col-md-3">
						<span>안전 시설</span>
					</label>
					<div class="col-sm-6 col-md-8">
							checkbox
					</div>
				</div>
			</div>
		</div>
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4" style="margin-bottom: 80px;">
					<label class="text-left col-sm-6 col-md-3">
						<span>공용 시설</span>
					</label>
					<div class="col-sm-6 col-md-8">
							checkbox
					</div>
				</div>
			</div>
		</div>
	

		<div class="row houseBtns">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/houselocation.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<a href="${initParam.rootPath}/houseimageenrollment.do">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>

