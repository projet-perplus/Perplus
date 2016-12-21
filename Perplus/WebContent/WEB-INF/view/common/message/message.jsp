<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	function messageScrollToBottom() {
		var height = $(this).find(".messageWrapper").height();
		$('.messageBody').scrollTop(height);
		$('.chattingContent').focus();
	}

	$(function() {
		var chattingNumber = '${requestScope.returnChattingNumber}';

		
		/* 메시지창 접근 시 스크롤 내려주는 이벤트 */
		$(".chattingDialog").on('shown.bs.modal', messageScrollToBottom)

		$('#a' + chattingNumber).on('hidden.bs.modal', function() {
			if (chattingNumber) {
				location.href = location.href.replace(chattingNumber, "");
			}
		})

		if (chattingNumber) {
			$('#a' + chattingNumber).modal('show');
		}

	})

	/* refresh 30초 주기 */
	$(function() {
		timer = setInterval(function() {
			var url = location.href;
			$(location).attr('href', url);
		}, 30000);
	});
</script>
<div id="dashboard-content">
	<div class="panel-header">
		<span>메시지</span>
	</div>
	<div class="panel-body" style="min-height:400px;">
		<div class="row pasttravel">
			<div class="col-md-12">
				<c:choose>
					<c:when test="${!empty requestScope.chatting}">
						<c:forEach items="${requestScope.chatting}" var="chatting">
							<a href="#" id="chattingdialog" data-toggle="modal"
								class="chattingdialog"
								data-target="#a${chatting.chattingNumber}"><button type="button" class="btn btn-default">
									<c:choose>
										<c:when
											test="${sessionScope.login_info.memberEmail != chatting.memberEmail}">
						${chatting.memberEmail} 님에게 메세지보내기
					</c:when>
										<c:otherwise>
						${chatting.chattingPartner} 님에게 메세지보내기
					</c:otherwise>
									</c:choose>
								</button></a>
							<div class="modal fade chattingDialog"
								id="a${chatting.chattingNumber}" role="dialog"
								aria-labelledby="basicModal" aria-hidden="true">
								<div class="modal-dialog">
									<!-- Modal content-->
									<form action="${initParam.rootPath}/member/chattinglog.do">
										<input type="hidden" name="memberEmail"
											value="${sessionScope.login_info.memberEmail}"> <input
											type="hidden" name="chattingNumber"
											value="${chatting.chattingNumber}">
										<div class="modal-content" style="padding: 0px;">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title">메시지</h4>
											</div>
											<div class="modal-body">
												<div id="messageDiv" class="messageBody"
													style="width: 100%; max-height: 250px; overflow: auto;">
													<div class="messageWrapper">
														<c:forEach items="${chatting.chattingLog}" var="log">
															<c:choose>
																<c:when
																	test="${sessionScope.login_info.memberEmail == log.memberEmail}">
																	<span style="float: right;">${log.chattingContent}
																		: 나</span>
																	<br>
																	<span style="float: right; font-size: 8px; color: blue"><fmt:formatDate
																			value="${log.chattingTime}"
																			pattern="yyyy년 MM월 dd일 HH시 mm분" /></span>
																	<br>
																	<br>
																</c:when>
																<c:otherwise>
																	<span style="float: left;">${log.memberList.memberName}
																		: ${log.chattingContent}</span>
																	<br>
																	<span style="float: left; font-size: 8px; color: blue"><fmt:formatDate
																			value="${log.chattingTime}"
																			pattern="yyyy년 MM월 dd일 HH시 mm분" /></span>
																	<br>
																	<br>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<div class="row-maginTB">
													<div class="col-md-9">
														<div class="form-group">
															<input type="text" class="form-control chattingContent"
																id="chattingContentArea" name="chattingContent">
														</div>
													</div>
													<div class="col-md-2">
														<input type="submit" id="chattingLogSendBtn"
															class="btn btn-default" value="전송">
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<br>
							<br>
						</c:forEach>
					</c:when>
					<c:otherwise>
					채팅이 없습니다.
				</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
