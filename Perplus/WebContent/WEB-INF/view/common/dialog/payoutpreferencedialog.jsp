<%@ page contentType="text/html;charset=UTF-8"%>

<!-- payoutpreference  dialog -->
<div class="modal fade" id="payoutpreference" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<form action="">
			<div class="modal-content"  style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">대금 수령 계정 추가</h4>
				</div>
				
				<div class="modal-body">

					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 예금주 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" class="form-control" name="accountholder"
									placeholder="이름을 입력하세요..." required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 은행명 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" class="form-control" name="bankname"
									placeholder="은행이름을 입력하세요..." required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 계좌번호 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="number" class="form-control" name="accountnumber"
									placeholder="숫자만 입력하세요..." required="required">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" name="enrollment" class="btn btn-default"
							value="등록">
					</div>
				</div>
			</div>	
		</form>
	</div>
</div>