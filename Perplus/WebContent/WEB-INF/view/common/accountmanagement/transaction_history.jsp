<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">

$(document).ready(function(){
	var showmoneyList = ${requestScope.showmoneyList};
	var travelList = ${requestScope.travelList};
	
	var code = "";

	$.each(showmoneyList, function(i){
		var showmoney = showmoneyList[i];
		var travel	= travelList[i];
		alert("showmoney : "+ showmoney+", travel : "+ travel);
		code = code + "<div class='receive-item'>"+
									"<a href='#' class='receiveBtn' data-toggle='modal' data-target='#basicModal'>"+
										"<span class='receiveBtnContant'>"+"예약번호 : "+showmoney.travelSerial+"</span><span class='separator'>┃</span>"+"<span class='receiveBtnContant'>"+"수령예정 금액 : "+showmoney.showmoneyTotalMoney+"</span>"+
									"<br><br></a>"+
								"</div>";

		
		
		
	});	/* each */
	$(".receive-item").html(code);
	
	
	
	
});/* document Ready */


</script>
<div class="tabsdiv">
	<div id="tabs">
	      <ul>
	        <li><a href="#jb-tab-1">수령예정 내역</a></li>
	        <li><a href="#jb-tab-2">수령완료 내역</a></li>
	      </ul>
	      <div class="receive-intended" id="jb-tab-1" style=" min-height: 350px;">
			<div class="receive-item">
				<a>
					<span class="receiveBtnContant">수령 예정 내역이 없습니다.</span>
				</a>
			</div>
	      </div>
	      <div id="jb-tab-2">
	        <p>수령 완료 내역이 없습니다.</p>
	      </div>

	</div>
</div>