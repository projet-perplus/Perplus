<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function(){	
	$("#payoutDelete").on("click",function(){
		return confirm("삭제하시겠습니까?");
	});
});
</script>
<div id="dashboard-content">
	<div class="panel-header">
		<span>대금 수령 방법</span>
	</div>
	<div class="panel-body" style=" min-height: 350px;">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-8" style="text-align: center;">
				<c:choose>
					<c:when test="${!empty requestScope.howmoneyList}">
						<div class="row">
							<div class="col-md-3">예금주</div>
							<div class="col-md-3">은행명</div>
							<div class="col-md-3">계좌번호</div>
						</div>

						<c:forEach items="${requestScope.howmoneyList}" var="list">
							<div class="row">
								<div class="col-md-3">${list.howmoneyHolder}</div>
								<div class="col-md-3">${list.howmoneyBank}</div>
								<div class="col-md-3">${list.howmoneyNumber}</div>
								<div class="col-md-3">
									<a
										href="${initParam.rootPath}/member/howmoneyRemove.do?accountSerial=${list.accountSerial}"><button id="payoutDelete">삭제</button></a>
								</div>
							</div>
						</c:forEach>
						<button>
							<span data-toggle="modal" data-target="#payoutpreference">대금
								수령 계좌 추가</span>
						</button>
					</c:when>
					<c:otherwise>
						<span>대금을 지급받으려면 대금 수령 방법을 설정해야 합니다 .</span>
						<br>
						<button>
							<span data-toggle="modal" data-target="#payoutpreference">대금
								수령 계좌 추가</span>
						</button>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
