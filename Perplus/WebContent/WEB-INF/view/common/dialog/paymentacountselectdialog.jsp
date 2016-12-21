<%@ page contentType="text/html;charset=UTF-8"%>

<div class="modal fade" id="paymentcardselectdialog" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">

	<!-- Modal content-->
	<form action="">
		<div class="modal-dialog addfilter">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">계좌 선택</h4>
				</div>

				<div class="modal-body">
					<div class="row panel-MT">
						<div class="col-md-12">
							<h4>계좌를 선택 해주세요</h4>
						</div>
					</div>
					<div class="row panel-MT">
						<div class="col-md-3">
							 예금주
						</div>
						<div class="col-md-3">
							 은행명
						</div>
						<div class="col-md-6">
							계좌 번호 list 
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<div class="row panel-MT">
						<div
							class="col-md-offset-6 col-sm-offset-5 col-xs-offset-5 col-md-3 col-sm-3 col-xs-3">

							<button class="btn btn-primary" style="width: 100%">취소</button>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3">
							<button type="submit" class="btn btn-primary">선택 완료</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>

