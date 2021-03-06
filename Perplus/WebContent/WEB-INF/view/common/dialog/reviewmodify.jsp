<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!--reviewContent의 HTML 코드를 JAVA로 바꿔주기 위한 코드 -->
<%
	pageContext.setAttribute("CR", "\r");
	pageContext.setAttribute("LF", "\n");
	pageContext.setAttribute("CRLF", "\r\n");
	pageContext.setAttribute("SP", "&nbsp;");
	pageContext.setAttribute("BR", "<br>");
	pageContext.setAttribute("AP", "&amp;");
	pageContext.setAttribute("GT", "&gt;");
	pageContext.setAttribute("LT", "&lt;");
%>

<c:set var="cmt"
	value="${fn:replace(requestScope.review.reviewContent, BR,LF)}" />
<c:set var="cmt" value="${fn:replace(cmt,SP,' ')}" />
<c:set var="cmt" value="${fn:replace(cmt,AP,'&')}" />
<c:set var="cmt" value="${fn:replace(cmt,GT,'>')}" />
<c:set var="cmt" value="${fn:replace(cmt,LT,'<')}" />

<!-- reviewModify-->
<div class="modal fade" id="reviewmodify" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog reviewEnrollment-dialog"
		style="transform: translate(0, 0) !important;">
		<!-- Modal content-->
		<form action="${initParam.rootPath}/review/modifyReview.do"
			method="post" enctype="multipart/form-data" id="modifyform">


			<input type="hidden" name="reviewSerial"
				value="${requestScope.review.reviewSerial }"> <input
				type="hidden" name="memberEmail"
				value="${requestScope.review.memberEmail }"> <input
				type="hidden" name="reviewMarkerX"
				value="${requestScope.review.reviewMarkerX }"> <input
				type="hidden" name="reviewMarkerY"
				value="${requestScope.review.reviewMarkerY }"> <input
				type="hidden" name="reviewMarkerConstant"
				value="${requestScope.review.reviewMarkerConstant}">


			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="title">
						<div class="row">
							<div class="col-md-4 col-sm-4 col-xs-4" style="margin-top: 5px;">
								<h4 class="modal-title">리뷰 수정</h4>
							</div>
							<div
								class="col-md-offset-4 col-md-3 col-sm-offset-4 col-sm-3 col-xs-offset-2 col-xs-5">
								<select name="marker" class="form-control" autocomplete="off"
									required>
									<option value="" selected>마커 종류</option>
									<option value=1>음식</option>
									<option value=2>명소</option>
								</select>
							</div>
						</div>
					</div>
				</div>



				<div class="modal-body">
					<div class="payoutpreferencedialog">
						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2"> 리뷰제목 </label>
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewTitle"
										value="${requestScope.review.reviewTitle }" required>
									<span class="errorMessage"></span>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2"> 장소명 </label>
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewPlace"
										value="${requestScope.review.reviewPlace }" required>
									<span class="errorMessage"></span>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2">방문일자 </label>
							<div class="col-md-8">
								<div class="form-group">
									<div class="visitDate">
										<input type="text" class="form-control" name="reviewTime"
											id="datepicker2"
											value=<fmt:formatDate value="${requestScope.review.reviewTime}" pattern="yyyy-MM-dd"/>
											required> <span class="errorMessage"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2">사진 등록</label>
							<div class="col-md-9 col-sm-9">
								<ul></ul>
								<button type="button" class="btn btn-success addImg" id="addImg">
									이미지 추가</button>
							</div>

						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-md-offset-1 col-md-2"> 평점 </label>
						<div class="col-sm-9">
							<div class="stars stars-example-bootstrap" style="height: 40px;">
								<c:if test="${requestScope.review.reviewRating==1 }">
									<select id="example-bootstrap" name="reviewRating"
										autocomplete="off" required>
										<option value="">평점</option>
										<option value=1 selected>1</option>
										<option value=2>2</option>
										<option value=3>3</option>
										<option value=4>4</option>
										<option value=5>5</option>
									</select>
									<span class="errorMessage"></span>
								</c:if>
								<c:if test="${requestScope.review.reviewRating==2 }">
									<select id="example-bootstrap" name="reviewRating"
										autocomplete="off" required>
										<option value=1>1</option>
										<option value=2 selected>2</option>
										<option value=3>3</option>
										<option value=4>4</option>
										<option value=5>5</option>
									</select>
									<span class="errorMessage"></span>
								</c:if>
								<c:if test="${requestScope.review.reviewRating==3 }">
									<select id="example-bootstrap" name="reviewRating"
										autocomplete="off" required>
										<option value="">평점</option>
										<option value=1>1</option>
										<option value=2>2</option>
										<option value=3 selected>3</option>
										<option value=4>4</option>
										<option value=5>5</option>
									</select>
									<span class="errorMessage"></span>
								</c:if>
								<c:if test="${requestScope.review.reviewRating==4 }">
									<select id="example-bootstrap" name="reviewRating"
										autocomplete="off" required>
										<option value="">평점</option>
										<option value=1>1</option>
										<option value=2>2</option>
										<option value=3>3</option>
										<option value=4 selected>4</option>
										<option value=5>5</option>
									</select>
									<span class="errorMessage"></span>
								</c:if>
								<c:if test="${requestScope.review.reviewRating==5 }">
									<select id="example-bootstrap" name="reviewRating"
										autocomplete="off" required>
										<option value="">평점</option>
										<option value=1>1</option>
										<option value=2>2</option>
										<option value=3>3</option>
										<option value=4>4</option>
										<option value=5 selected>5</option>
									</select>
									<span class="errorMessage"></span>
								</c:if>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-md-offset-1 col-md-2"> 리뷰 내용</label>
						<div class="col-md-8">
							<div class="form-group">
								<textarea class="form-control" rows="5" id="comment"
									name="reviewContent" required>${ cmt}</textarea>
								<span class="errorMessage"></span>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="row">
							<div class="col-md-offset-1 col-md-5 leftform">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="float: left !important;">취소</button>
							</div>
							<div class="col-md-5 rightform">
								<input type="submit" name="enrollment" class="btn btn-danger"
									value="등록">
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>





<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
<script>
	// just for the demos, avoids form submit
	jQuery.validator.setDefaults({
		debug : true,
		success : "valid"
	});
	var form = $("#modifyform");
	form.validate({
		submitHandler : function(form) {
			form.submit();
		}
	});
</script>