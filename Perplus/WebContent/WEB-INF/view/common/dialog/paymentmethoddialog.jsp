<%@ page contentType="text/html;charset=UTF-8"%>
<div class="modal fade" id="basicModal" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<form action="/Perplus/member/registerPayment.do" id="regist_payment_form">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">새로운 결재 수단</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="radio" style="padding: 0px !important;">
							<div class="col-xs-3">
								<label><input type="radio" name="paymentType">visa</label>
							</div>
							<div class="col-xs-3">
								<label><input type="radio" name="paymentType">master</label>
							</div>
							<div class="col-xs-3">
								<label><input type="radio" name="paymentType">BC</label>
							</div>
							<div class="col-xs-3"></div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 이름 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" class="form-control" name="cardName" placeholder="이름을 입력하세요" required>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 카드번호 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="number" class="form-control" name="cardNumber" placeholder="숫자만 입력하세요..." required>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 만료일 </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="mm" placeholder="MM" required>
							</div>
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="yy" placeholder="YY" required>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> cvc </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="cardCvc" required>
							</div>
							<div class="col-xs-6" style="padding-left: 0px;"></div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 우편번호 </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="cardpost" required>
							</div>
							<div class="col-xs-6" style="padding-left: 0px;"></div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" name="login" class="btn btn-default" id="loginBtn" value="저장">
				</div>
			</div>
		</form>
	</div>
</div>