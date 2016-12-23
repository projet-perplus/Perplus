<%@ page contentType="text/html;charset=UTF-8"%>

<script type="text/javascript">

function convertDateFormat(dateValue){ /* 데이트 포맷 바꿔주기 */
	dateValue = dateValue.replace(' KST', ''); /* KST 제거 */
	var dateVal = new Date(dateValue);
	
	var date = dateVal .getDate();
	var month = dateVal .getMonth() + 1;
	var year = dateVal .getFullYear();
	
	var formattedDate = year+"/"+month+"/"+date;
	return formattedDate;
}

$(document).ready(function(){
	var showmoneyList = ${requestScope.showmoneyList};
	var travelList = ${requestScope.travelList};
	var payInfoList = ${requestScope.payInfoList};
	var code = "";

	$.each(showmoneyList, function(i){
		var showmoney = showmoneyList[i];
		var travel	= travelList[i];
		var payInfo = payInfoList[i];
		
		code = code + "<div class='receive-item'>"+
									"<a href='#' class='receiveBtn' data-toggle='modal' data-target='#paymentcardselectdialog'>"+
										"<span class='receiveBtnContant'>예약번호 : "+showmoney.travelSerial+"</span>"+
										"<span class='separator'>┃</span>"+
										"<span class='receiveBtnContant'>숙박날짜 : "+convertDateFormat(travel.travelStart)+" ~ "+convertDateFormat(travel.travelEnd)+"</span><br><br>"+
										"<span class='receiveBtnContant'>인원 : "+travel.travelNumber+" 명</span>"+
										"<span class='separator'>┃</span>"+
										"<span class='receiveBtnContant'>결제일 : "+convertDateFormat(payInfo.payInfoDate)+"</span>"+
										"<span class='separator'>┃</span>"+
										"<span class='receiveBtnContant'>수령예정 금액 : "+showmoney.showmoneyTotalMoney+"</span>"+
									"<br><br></a>"+
								"</div>";
	});	/* each */
	$(".receive-intended>.receive-item").html(code); /* 수령예정 내역 기본 붙이기 */
	
	/* AJAX */
	$("#receive-completedBtn").on("click", function(){
		$.ajax({
			url : "/Perplus/member/transaction_history_ajax.do",
			data : {
				"status" : "completed",
			},
			dataType : "json",
			success : function(obj) {
				alert("sad");
				var showmoneyList = obj.showmoneyList;
				var travelList = obj.travelList;
				var payInfoList = obj.travelList;
				var code = "";

				$.each(showmoneyList, function(i){
					var showmoney = showmoneyList[i];
					var travel	= travelList[i];
					var payInfo = payInfoList[i];
					
					code = code + "<div class='receive-item'>"+
												"<a href='#' class='receiveBtn' data-toggle='modal' data-target='#paymentcardselectdialog'>"+
													"<span class='receiveBtnContant'>예약번호 : "+showmoney.travelSerial+"</span>"+
													"<span class='separator'>┃</span>"+
													"<span class='receiveBtnContant'>숙박날짜 : "+convertDateFormat(travel.travelStart)+" ~ "+convertDateFormat(travel.travelEnd)+"</span><br><br>"+
													"<span class='receiveBtnContant'>인원 : "+travel.travelNumber+" 명</span>"+
													"<span class='separator'>┃</span>"+
													"<span class='receiveBtnContant'>결제일 : "+convertDateFormat(payInfo.payInfoDate)+"</span>"+
													"<span class='separator'>┃</span>"+
													"<span class='receiveBtnContant'>수령예정 금액 : "+showmoney.showmoneyTotalMoney+"</span>"+
												"<br><br></a>"+
											"</div>";
				});	/* each */
				$(".receive-completed>.receive-item").html(code); /* 수령완료 내역 기본 붙이기 */
				
				
			},
			error : function(request, error, status) {
				
				
			}
			
		}); /* ajax */
		
	});  /*receiveCompletedBtn */
	
	
	
	
});/* document Ready */


</script>
<div class="tabsdiv">
	<div id="tabs">
		<ul>
			<li><a href="#jb-tab-1" id="receive-intendedBtn">수령예정 내역</a></li>
			<li><a href="#jb-tab-2" id="receive-completedBtn">수령완료 내역</a></li>
		</ul>
		<div class="receive-intended" id="jb-tab-1" style=" min-height: 350px;">
			<div class="receive-item">
				<a>
					<span class="receiveBtnContant">수령 예정 내역이 없습니다.</span>
				</a>
			</div>
		</div>
		<div class="receive-completed" id="jb-tab-2">
			<div class="receive-item">
				<a>
					<span class="receiveBtnContant receiveCompletedBtn">수령 완료 내역이 없습니다.</span>
				</a>
			</div>
		</div>
	</div>
</div>