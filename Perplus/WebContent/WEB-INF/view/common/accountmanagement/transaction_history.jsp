<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
function documentLoadDate(){
	var showmethemoneyList = ${requestScope.showmethemoneyList};
	
	$.each(showmethemoneyList, function(I){
		
		
	});	/* each */
	
	
}/* documentLoadDate */

$(document).ready(function(){
	
	
	
	
	
});/* document Ready */


</script>
<div class="tabsdiv">
	<div id="tabs">
	      <ul>
	        <li><a href="#jb-tab-1">수령예정 내역</a></li>
	        <li><a href="#jb-tab-2">수령완료 내역</a></li>
	      </ul>
	      <div class="receive-intended" id="jb-tab-1" style=" min-height: 350px;">
	        <p>수령 예정 내역이 없습니다.</p>
	        <div class="recive-item">
	        	<table>
	        		<tr>
	        			<td>예약번호</td>
	        			<td>하우스 번호</td>
	        			<td>시작일</td>
	        			<td>종료일</td>
	        			<td>인원</td>
	        			<td>금액</td> 
	        		</tr>
	        		
	        	</table>
	        	
	        </div>
	      </div>
	      <div id="jb-tab-2">
	        <p>수령 완료 내역이 없습니다.</p>
	      </div>

	</div>
</div>