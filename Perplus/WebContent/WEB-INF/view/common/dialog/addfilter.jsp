<%@ page contentType="text/html;charset=UTF-8"%>

<div class="modal fade" id="addfilterdialog" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">

	<!-- Modal content-->
	<form action="">
		<div class="modal-dialog addfilter">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">추가 필터</h4>
				</div>

				<div class="modal-body">
					<div class="row">
						<div class="col-md-3" style="margin-bottom:15px;">
							<button class="btn btn-primary" style="width: 100%">규모</button>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<select class="form-control">
									<option>침실수</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<select class="form-control">
									<option>욕실수</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<select class="form-control">
									<option>침대수</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row panel-MT">
						<div class="col-md-12">a</div>
					</div>
					<div class="row panel-MT">
						<div class="col-md-12">b</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="row panel-MT">
						<div class="col-md-offset-6 col-sm-offset-5 col-xs-offset-5 col-md-3 col-sm-3 col-xs-3">

							<button class="btn btn-primary" style="width:100%">취소</button>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3">
							<button type="submit" class="btn btn-primary">필터 적용</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>