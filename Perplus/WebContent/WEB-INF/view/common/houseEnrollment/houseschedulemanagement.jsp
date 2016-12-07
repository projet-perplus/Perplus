<%@ page contentType="text/html;charset=UTF-8"%>
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
			<label class="text-left col-md-3 col-md-offset-2">
				<span>예약일정 관리</span>
			</label>
			<div class="clearfix visible-md-block"></div>
		</div>
		
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4 row-sectionB">
					<label class="text-left col-md-8 col-xs-11">
						<span class="subspan">체크인까지 최소한 어느 정도의 시간 여유가 있어야 하나요?</span>
					</label>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-8">
							<div class="form-group">
								<select class="form-control">
									<option>1일</option>
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
					<label class="text-left col-md-12">
						<span class="subspan">체크인 가능 시간을 선택해 주세요.</span>
					</label>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-1 col-md-8">
						<div class=" col-md-5">
							<div class="form-group">
								<select class="form-control">
									<option>시작 시간</option>
									<option>1시</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class=" col-md-5">
							<div class="form-group">
								<select class="form-control">
									<option>종료 시간</option>
									<option>2시</option>
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
					<label class="text-left col-md-12">
						<span class="subspan">얼마나 먼 날짜 까지 예약할 수 있나요?</span>
					</label>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-8">
							<div class="form-group">
								<select class="form-control">
									<option>6달</option>
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
					<label class="text-left col-sm-6 col-md-12">
						<span class="subspan">몇박 몇일 까지 예약할 수 있나요?</span>
					</label>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-offset-1 col-md-10">
						<div class=" col-md-8">
							<div class="form-group">
								<select class="form-control">
									<option>1박</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control">
									<option>2일</option>
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
		<div class="row houseBtns">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/houseimageenrollment.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<a href="${initParam.rootPath}/houseshutdowndate.do">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>





	



