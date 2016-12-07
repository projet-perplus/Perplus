<%@ page contentType="text/html;charset=UTF-8"%>
<!-- reviewEnrollment-->
<div class="modal fade" id="reviewEnrollment" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog reviewEnrollment-dialog">
		<!-- Modal content-->
		<form action="">
			<div class="modal-content"  style="padding: 0px;">
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
									<input type="text" class="form-control" name="reviewname"
										placeholder="이름을 입력하세요..." required="required">
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 장소명 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="bankname"
										placeholder="은행이름을 입력하세요..." required="required">
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3" > 방문일자 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="visitDate">
										<div class="col-md-5">
											<input type="text" class="form-control"  name="check" id="dpd1" >
										</div>
										<div class="col-md-2">
										~
										</div>
										<div class="col-md-5">
											<input type="text" class="form-control"  name="check" id="dpd2">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 리뷰 제목 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewname"
										placeholder="이름을 입력하세요..." required="required">
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 리뷰제목 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewname"
										placeholder="이름을 입력하세요..." required="required">
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 리뷰 내용</label>
							<div class="col-sm-9">
								<div class="form-group">
  								    <textarea class="form-control" rows="5" id="comment"></textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="row">
								<div class="col-md-6 leftform">
									<button type="button" class="btn btn-default" data-dismiss="modal" style="float:left !important;">취소</button>
								</div>
								<div class="col-md-6 rightform">
									<input type="submit" name="enrollment" class="btn btn-default" value="등록">
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>	
		</form>
	</div>
</div>