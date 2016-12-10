<%@ page contentType="text/html;charset=UTF-8"%>

<div class="modal fade" id="chattingdialog" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<form action="">
			<div class="modal-content"  style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">비밀번호 변경하기</h4>
				</div>
				
				<div class="modal-body">
					비밀번호를 재설정 할수있는 링크 전송
					<input type="email" class="form-control" id="loginEmail"
							name="memberEmail" placeholder="이메일 주소" required><br>
					<span id="login_error_email"></span>
				</div>
				<div class="modal-footer">
						<input type="submit" name="passwordchange"
						class="btn btn-default" id="loginBtn" value="재설정 링크 전송">
				</div>
			</div>	
		</form>
	</div>
</div>


