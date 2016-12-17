<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
$(document).ready(function(){
	$("#passwordconfirmform").on("submit", function(){
		var value = $("#passwordconfirmvalue").val();
		var memberpassword = "${sessionScope.login_info.memberPassword}";
		if(value!=memberpassword){
			alert("password가 틀립니다! 확인해 주세요.");
			return false;
		}
		return confirm("탈퇴하시겠습니까?");
		
	});
	
});
</script>
<!-- 비밀 번호 확인-->
<div class="modal fade" id="passwordconfirm" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<form id="passwordconfirmform" action="/Perplus/member/delete.do">
		<input type="hidden" name="memberEmail" value="${sessionScope.login_info.memberEmail}">
			<div class="modal-content"  style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">비밀번호 확인</h4>
				</div>
				
				<div class="modal-body"> 
					<div class="form-group">
						<input type="password" class="form-control"
							   id="passwordconfirmvalue" placeholder="비밀번호를 입력하세요..." required><br>
						<span id="error_password"></span>
					</div>
				</div>
				<div class="modal-footer">
				    <input type="submit" name="passwordconfirm" 
							class="btn btn-default" id="passwordconfirm" value="확인">
				</div>
			</div>	
		</form>
	</div>
</div>