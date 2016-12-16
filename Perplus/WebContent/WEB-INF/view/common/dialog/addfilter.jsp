<%@ page contentType="text/html;charset=UTF-8"%>

<div class="modal fade" id="rejectdialog" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">

		<!-- Modal content-->
		<form action="">
		<div class="modal-dialog">
			<div class="modal-content"  style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">예약 취소 사유</h4>
				</div>
				
				<div class="modal-body">
					<textarea class="form-control" name="rejectmessage" rows="5"></textarea>
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
		</form>
	</div>