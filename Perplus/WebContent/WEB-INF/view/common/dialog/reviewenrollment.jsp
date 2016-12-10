<%@ page contentType="text/html;charset=UTF-8"%>
<!-- reviewEnrollment-->

<div class="modal fade" id="reviewEnrollment" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog reviewEnrollment-dialog">
		<!-- Modal content-->
		<form action="${initParam.rootPath}/review/registerReview.do"
			method="post" enctype="multipart/form-data">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">리뷰등록</h4>
				</div>
				<div class="modal-body">
					<div class="payoutpreferencedialog">
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 리뷰제목 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewTitle"
										placeholder="제목을 입력하세요..." required="required">
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 장소명 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewPlace"
										placeholder="장소명을 입력하세요..." required="required">
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3">방문일자 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="visitDate">
										<input type="text" class="form-control" name="reviewTime"
											id="datepicker2">
									</div>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3">사진 등록</label>
							<div class="col-md-9">
								<ul></ul>
								<button type="button" class="btn btn-success" id="addImg">
									이미지 추가</button>
							</div>

						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 평점 </label>
						<div class="col-sm-9">
							<div class="stars stars-example-bootstrap" style="height: 40px;">
								<select id="example-bootstrap" name="reviewRating"
									autocomplete="off">
									<option value=1>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
									<option value=4>4</option>
									<option value=5>5</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 리뷰 내용</label>
						<div class="col-sm-9">
							<div class="form-group">
								<textarea class="form-control" rows="5" id="comment"
									name="reviewContent"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="row">
							<div class="col-md-6 leftform">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="float: left !important;">취소</button>
							</div>
							<div class="col-md-6 rightform">
								<input type="submit" name="enrollment" class="btn btn-default"
									value="등록">
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
