<%@ page contentType="text/html;charset=UTF-8"%>

<!-- payoutpreference  dialog -->
<div class="modal fade" id="payoutpreference" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<form action="${initParam.rootPath}/member/howgetmoneyRegister.do" onsubmit="return confirm('등록하시겠습니까?')">
			<input type="hidden" name="memberEmail"
				value="${sessionScope.login_info.memberEmail}">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">대금 수령 계정 추가</h4>
				</div>

				<div class="modal-body">

					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 예금주 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" class="form-control" name="howgetmoneyHolder"
									placeholder="이름을 입력하세요..." required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 은행명 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" class="form-control" name="howgetmoneyBank"
									placeholder="은행이름을 입력하세요..." required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 계좌번호 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="number" class="form-control"
									name="howgetmoneyNumber" placeholder="숫자만 입력하세요..."
									required="required">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-default" value="등록">
					</div>
				</div>
			</div>
		</form>
	</div>
</div>