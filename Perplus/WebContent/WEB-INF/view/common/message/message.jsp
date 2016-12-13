<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 채팅.. 상엽이형 ..-->
<script type="text/javascript">
	function messageScrollToBottom() {
		$('#messageDiv').scrollTop($(".messageWrapper").height());
	}

	$(function() {
		$('#chattingdialog').on('shown.bs.modal', messageScrollToBottom)

		$('#chattingdialog').on('hidden.bs.modal', function() {
			if (location.href.indexOf("#popup") != -1) {
				location.href = location.href.replace("#popup", "")
			}
		})

		if (location.href.indexOf("#popup") != -1) {
			$('#chattingdialog').modal('show')
		}

	})
</script>
${requestScope.asdf}
<c:choose>
	<c:when test="${requestScope.chatting != null}">
		<a href="#" id="messageDialog" data-toggle="modal"
			data-target="#chattingdialog"><button>메시지 다이얼로그</button></a>
		<div class="modal fade" id="chattingdialog" role="dialog"
			aria-labelledby="basicModal" aria-hidden="true">
			<div class="modal-dialog">
				<!-- Modal content-->
				<form action="${initParam.rootPath}/member/chattinglog.do">
					<div class="modal-content" style="padding: 0px;">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">메시지</h4>
						</div>

						<div class="modal-body">
							<div id="messageDiv" class="messageBody"
								style="width: 100%; max-height: 250px; overflow: scroll;">
								<div class="messageWrapper">
									<c:forEach items="${requestScope.chatting}" var="chatting">
										<c:forEach items="${chatting.chattingLog}" var="log">
											<c:choose>
												<c:when test="${sessionScope.login_info.memberEmail == log.memberEmail}">
													<span style="float:right;">${log.chattingContent} : 나</span><br><br>
												</c:when>
												<c:otherwise>
													<span style="float:loft;">${log.memberVo.memberName} : ${log.chattingContent}</span><br><br>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:forEach>

								</div>
							</div>
						</div>
						<div class="modal-footer">

							<div class="row-maginTB">
								<div class="form-group">
									<textarea class="form-control" rows="1" id="comment"></textarea>
								</div>
							</div>

							<div class="row">
								<div class="col-md-offset-1 col-md-5 leftform">
									<button type="button" class="btn btn-default"
										data-dismiss="modal" style="float: left !important;">취소</button>
								</div>
								<div class="col-md-5 rightform">
									<input type="submit" name="enrollment" class="btn btn-default"
										value="보내기">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		채팅이 없습니다.
	</c:otherwise>
</c:choose>