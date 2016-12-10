<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
	var emailCheck = true;
	$(document).ready(function() {
		$("#joinEmail").on("keyup", function() {
			var email = this.value;
			$.ajax({
				url : "/Perplus/member/emailCheck.do",
				data : {
					"email" : email
				},
				dataType : "JSON",
				beforeSend : function() {
					if (!email) {
						return false;
					}
				},
				success : function(obj) {
					emailCheck = obj.result;

					if (emailCheck) {
						$("#emailDupMessage").text("중복된 아이디 입니다.");
					} else {
						$("#emailDupMessage").text("사용할 수 있는 아이디 입니다.");
					}
				},
				error : function(request, error, status) {
				}
			})
		});
		$("#member_join_form").on("submit", function() {
			if (emailCheck) {
				alert("중복된 아이디입니다.");
				$("#joinEmail").focus();
				return false;
			}
			alert("회원가입을 축하드립니다.");
		});
	});
</script>
<!-- 회원가입 폼 -->
<div class="modal fade" id="join" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">회원 가입</h4>
			</div>
			<div class="modal-body">
				<form action="/Perplus/member/join.do" id="member_join_form">
					<div class="form-group">
						<input type="email" class="form-control" id="joinEmail"
							name="memberEmail" placeholder="이메일 주소" required
							autocomplete="off"><span id="emailDupMessage"></span>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="name"
							name="memberName" placeholder="이름" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="joinPassword"
							name="memberPassword" placeholder="password" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control"  name="memberBirthday" id="datepicker1" placeholder="생년월일">
					</div>
					<div class="modal-footer">
						<input type="submit" name="login" class="btn btn-default btn-lg"
							id="loginBtn" value="회원가입">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>