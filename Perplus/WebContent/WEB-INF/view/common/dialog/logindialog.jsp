<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#login_form").on("submit", function() {
			var value = true;
			$.ajax({
				url : "/Perplus/member/logincheck.do",
				data : {
					"memberEmail" : $("#loginEmail").val(),
					"memberPassword" : $("#loginPassword").val()
				},
				async:false,//ajax sync가 따로 놀아서 전역변수 사용하고 싶을 때 사용.
				dataType : "json",
				success : function(obj) {
					$("#login_error_email").empty();
					$("#login_error_password").empty();
					var emailcheck = obj.login_error_email;
					var passwordcheck = obj.login_error_password;
					if (emailcheck) {
						$("#login_error_email").text(emailcheck);
						$("#loginEmail").focus();
						value=false;
					}
					if (passwordcheck) {
						$("#login_error_password").text(passwordcheck);
						$("#loginPassword").focus();
						value=false;
					}
					/* if(!(emailcheck&&passwordcheck)){
						$("#myModal").hide();
					} */
				},
				error : function(request, error, status) {
					alert(error + "    " + status + "status");
				}
			})
			return value;
		});
	});
</script>


<!-- 로그인 폼 -->
<div class="modal fade" id="myModal" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">로그인</h4>
			</div>
			<form id="login_form">
				<div class="modal-body">
					<div class="form-group">
						<input type="email" class="form-control" id="loginEmail"
							name="memberEmail" placeholder="이메일 주소" required><br>
						<span id="login_error_email"></span>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="loginPassword"
							name="memberPassword" placeholder="password" required><br>
						<span id="login_error_password"></span>
					</div>
				</div>
				<div class="modal-footer">
					<a href="#">비밀번호 찾기</a> <input type="submit" name="login"
						class="btn btn-default" id="loginBtn" value="로그인">
				</div>
			</form>
		</div>
	</div>
</div>