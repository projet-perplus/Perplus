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
			<div class="col-xs-12" style="text-align: center;">
				<c:choose>
					<c:when test="${!empty requestScope.howmoneyList}">
						<div class="row row-maginTB">
							<div class="col-md-3 col-xs-3" style="font-weight:bold; color:#000; ">예금주</div>
							<div class="col-md-3 col-xs-3" style="font-weight:bold; color:#000; ">은행명</div>
							<div class="col-md-3 col-xs-4" style="font-weight:bold; color:#000; ">계좌번호</div>
						</div>

						<c:forEach items="${requestScope.howmoneyList}" var="list">
							<div class="row row-maginTB">
								<div class="col-md-3 col-xs-3" style="line-height:2;">${list.howmoneyHolder}</div>
								<div class="col-md-3 col-xs-4" style="line-height:2;">${list.howmoneyBank}</div>
								<div class="col-md-3 col-xs-3" style="line-height:2;">${list.howmoneyNumber}</div>
								<div class="col-md-3 col-xs-12" style="line-height:2;" align="right">
									<a
										href="${initParam.rootPath}/member/howmoneyRemove.do?accountSerial=${list.accountSerial}"><button id="payoutDelete" class="btn btn-danger">삭제</button></a>
								</div>
							</div>
						</c:forEach>
						<button class="btn btn-success">
							<span data-toggle="modal" data-target="#payoutpreference">대금
								수령 계좌 추가</span>
						</button>
					</c:when>
					<c:otherwise>
						<span>대금을 지급받으려면 대금 수령 방법을 설정해야 합니다 .</span>
						<br>
						<button class="btn btn-success">
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
