<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
$(document).ready(function() {
	$("#cardNumber").on("keyup", function() {
		var cardnumber = this.value;
		var paymentType = "null";
		$("#bc").css("border", "none");
   		$("#visa").css("border", "none");
   		$("#mastercard").css("border", "none");

        //카드 번호가 유효한지 검사
        //정규식이 캡처 그룹들 중 하나에 들어있는 숫자를 캡처
        //BC : 94로 시작하는 14자리
		//Visa : 4로 시작하는 12자리나 16자리
		//MasterCard : 51~55로 시작하는 16자리

        var match = /^(?:(94[0-9]{14})|(4[0-9]{11}(?:[0-9]{4})?)|(5[1-5][0-9]{14}))$/.exec(cardnumber);

        if(match) {
        	//정규식 캡처 그룹과 같은 순서로 카드 종류 나열
        	var types = ['bc', 'visa', 'mastercard'];
        	
        	console.log(match);

			//일치되는 캡처 그룹 검색
			//일치부 배열의 0번째 요소 (전체 일치부중 첫 일치부)를 건너뜀
			for(var i = 1; i < match.length; i++) {
				if(match[i]) {
					var tmp=types[i-1];
                    if(tmp=="bc"){
                      	$("#bc").css("border", "solid blue");
                    	paymentType="bc";
                   	}else if(tmp=="visa"){
                   		$("#visa").css("border", "solid blue");
                   		paymentType="visa";
              		}else if(tmp=="mastercard"){
              			$("#mastercard").css("border", "solid blue");
              			paymentType="mastercard";
                   	}else{
                   		paymentType="etc";
                   	}
                   break;
				}
			}
        }
        $("#paymentType").html("<input type='hidden' name='paymentType' value='"+paymentType+"'>");
	});
});

//maxlength 체크
function maxLengthCheck(object){
	if (object.value.length > object.maxLength){
		object.value = object.value.slice(0, object.maxLength);
	}
}
</script>
<div class="modal fade" id="basicModal" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog" style="transform: translate(0, 10%) !important;">
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
							<div class="col-xs-4" >
								<div id="visa">	
									<img src="/Perplus/css/image/visa.png" style="margin-left:8px;">
								</div>
							</div>
							
							<div class="col-xs-4">
								<div id="mastercard">
									<img src="/Perplus/css/image/master.png" style="margin-left:8px;">
								</div>
							</div>
							
							<div class="col-xs-4">
								<div id="bc">
									<img src="/Perplus/css/image/bc.png" style="margin-left:8px;">
								</div>
							</div>
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
								<input type="number" class="form-control" name="cardNumber" id="cardNumber" placeholder="숫자만 입력하세요..." maxlength="16" oninput="maxLengthCheck(this)" required>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 만료일 </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="mm" placeholder="MM" Maxlength="2" oninput="maxLengthCheck(this)" required >
							</div>
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="yy" placeholder="YY" Maxlength="2" oninput="maxLengthCheck(this)" required>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> cvc </label>
						<div class="col-sm-9">
							<div class="col-xs-6" style="padding-left: 0px;">
								<input type="number" class="form-control" name="cardCvc" Maxlength="3" oninput="maxLengthCheck(this)" required>
							</div>
							<div class="col-xs-6" style="padding-left: 0px;"></div>
						</div>
					</div>
					<div id="paymentType"></div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-default" id="payment" value="추가">
				</div>
			</div>
		</form>
	</div>
</div>