<%@ page contentType="text/html;charset=UTF-8"%>
<!-- 로그인 폼 -->
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">로그인</h4>
			</div>
			<div class="modal-body">
				<form action="">
					<div class="form-group">
						<input type="email" class="form-control" id="email" name="email"
							placeholder="이메일 주소" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="pass"
							name="password" placeholder="password" required>
					</div>
			</div>
			<div class="modal-footer">
				<a href="#">비밀번호 찾기</a>
				<input type="submit" name="login" class="btn btn-default" id="loginBtn" value="로그인">
			</div>
			</form>
		</div>
	</div>
</div>