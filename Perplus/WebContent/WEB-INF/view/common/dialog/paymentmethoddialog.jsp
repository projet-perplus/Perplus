<%@ page contentType="text/html;charset=UTF-8"%>
<div class="modal fade" id="basicModal" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<form action="">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">새로운 결재 수단</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="radio" style="padding: 0px !important;">
							<div class="col-xs-3">
								<label><input type="radio" name="optradio">visa</label>
							</div>
							<div class="col-xs-3">
								<label><input type="radio" name="optradio">master</label>
							</div>
							<div class="col-xs-3">
								<label><input type="radio" name="optradio">BC</label>
							</div>
							<div class="col-xs-3"></div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 이름 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요" required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 카드번호 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="number" class="form-control" name="cardnumber" placeholder="숫자만 입력하세요..." required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 만료일 </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="yy" placeholder="MM" required="required">
							</div>
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="mm" placeholder="YY" required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> cvc </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="cvc" required="required">
							</div>
							<div class="col-xs-6" style="padding-left: 0px;"></div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 우편번호 </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="post" required="required">
							</div>
							<div class="col-xs-6" style="padding-left: 0px;"></div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-default" id="payment" value="추가">
				</div>
			</div>
		</form>
	</div>
</div>