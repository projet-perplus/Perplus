<%@ page contentType="text/html;charset=UTF-8"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
var selectedCardSerial;

$(document).ready(function(){
	var paymentList = ${ requestScope.paymentList};
	var code = "";
	
	$.each(paymentList, function(i){
		var cardNumberFormatted = formatCardNumber(paymentList[i].cardNumber);
		var cardImage = getCardImageTag(paymentList[i].paymentType);
		var cardSerial = paymentList[i].cardSerial;
		
		code = code + "<a href='#' class='paymentBtn paymentDeleteBtn'>"+
                                 "<span class='paymentBtnImage'>"+cardImage+"</span>" + 
                                 "<span class='pamentBtnName'>"+cardNumberFormatted+"</span>"+
                                 "<input class='cardSerial' type='hidden' value='"+cardSerial+"' >"+
	                           "</a>";
	    });//each
	$("#addCard").before(code);	// 카드 리스트 노출
	
    $(".paymentDeleteBtn").on("click", function(){	// 노출 된 카드 선택 시 해당 카드 삭제
    	selectedCardSerial = $(this).find(".cardSerial").val();
    	$("#dialog-confirm").dialog( "open" );
    });//paymentDeleteBtn
});	//(document).ready


$( function() {	// 다이얼 로그 노출
	$( "#dialog-confirm" ).dialog({
		resizable: false,
		autoOpen: false,
		height: "auto",
		width: 300,
		modal: true,
		open: function(event, ui) {
			$(".ui-dialog-titlebar-close", $(this).parent()).hide();
			console.log($(this).filter(".pamentBtnName").val());
		},
		buttons: {
			"삭제": function() {
				var url = "/Perplus/member/deletePayment.do?cardSerial=" + selectedCardSerial;
				location.replace(url);
// alert(selectedCardSerial);
				$( this ).dialog( "close" );
			},
		"취소": function() {
			$( this ).dialog( "close" );
		}
	}
  });
});


//memberEmail에 해당하는 DB payment 조회 후 출력 없으면 추가 버튼만 출력
var regCardNumberFormats = {	// 자릿수 비교해서 포맷 지정
		'12' : {
			reg : /^([0-9]{4}).*([0-9]{4})$/ ,
			format : '$1-****-$2'
		},
		'14' : {
			reg : /^([0-9]{4}).*([0-9]{4})$/,
			format : '$1-******-$2'
		},
		'15' : {
			reg : new RegExp("^([0-9]{4}).*([0-9]{5})$"),
			format : '$1-******-$2'
		},
		'16' : {
			reg : new RegExp("^([0-9]{4}).*([0-9]{4})$"),
			format : '$1-****-****-$2'
		}
};

function formatCardNumber(number){	// 카드번호 문자열로 치환
	if(typeof number === 'number'){
		number = number.toString();
	}
	
	var len = number.length;	// 카드 번호 길이
	var cardNumberFormat = regCardNumberFormats[len.toString()] || regCardNumberFormats['16'];	// 카드번호 길이에 따른 포맷 or 지정한 길이에 없으면 기본 16
	var cardNumberFormatted = number.replace(cardNumberFormat.reg, cardNumberFormat.format);	//실 변환
	
	return cardNumberFormatted;
}

function getCardImageTag(paymentType){	// 리스트의 카드 이미지 로드
	if(paymentType === 'bc'){
		return "<img src='https://www.bccard.com/images/individual/common/gnb/btn_logo.png' height='25' />";
	}else if(paymentType === 'visa'){
		return "<img src='https://jobs.visa.com/sites/visa/images/visa_logo_blu.png' height='25' />";	
	}else if(paymentType === 'mastercard'){
		return "<img src='http://www.mastercard.com/kr/consumer/find-a-card/images/creditcard_logo_master.gif' height='25' />";
	}
	
}

function deleteCard(cardSerial){
	
	
}

</script>

<div id="dashboard-content">

	<div class="panel-header">
		<span>결제 수단</span>
	</div>
	<div id="dialog-confirm" title="삭제">
  		<p><span class="ui-icon ui-icon-alert" style="float:left; margin:3px 12px 20px 0;"></span>카드를 삭제 하시겠습니까?</p>
	</div>
	<div class="panel-body" style="text-align:center;">
		<a href="#" class="paymentBtn" data-toggle="modal" data-target="#basicModal" id="addCard">
				<span class="paymentBtnImage"><img src="/Perplus/css/image/plusIcon.png" /></span>
				<span class="pamentBtnName">신규 카드 추가</span>
		</a>
	</div>
</div>





