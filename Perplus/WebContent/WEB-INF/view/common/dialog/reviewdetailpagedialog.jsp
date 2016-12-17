<%@page import="com.perplus.review.vo.ReviewPictureVo"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(".commentModifyBnt")
								.on(
										"click",
										function() {
											var comment = $(this).parent()
													.prevAll(".commentContent")
													.text();

											var star = $(this).parent()
													.prevAll(".starlayer")
													.children("div:first")
													.text();

											var rankingSelect = "<select name='commentRating' id='modifyRating'>";
											if (star == 1) {
												rankingSelect = rankingSelect
														+ "<option value='null'>평점</option>"
														+ "<option value=1 selected=true>1</option>"
														+ "<option value=2>2</option>"
														+ "<option value=3>3</option>"
														+ "<option value=4>4</option>"
														+ "<option value=5>5</option>"
														+ "</select>";
											} else if (star == 2) {
												rankingSelect = rankingSelect
														+ "<option value='null'>평점</option>"
														+ "<option value=1>1</option>"
														+ "<option value=2 selected=true>2</option>"
														+ "<option value=3>3</option>"
														+ "<option value=4>4</option>"
														+ "<option value=5>5</option>"
														+ "</select>";
											} else if (star == 3) {
												rankingSelect = rankingSelect
														+ "<option value='null'>평점</option>"
														+ "<option value=1>1</option>"
														+ "<option value=2>2</option>"
														+ "<option value=3 selected=true>3</option>"
														+ "<option value=4>4</option>"
														+ "<option value=5>5</option>"
														+ "</select>";
											} else if (star == 4) {
												rankingSelect = rankingSelect
														+ "<option value='null'>평점</option>"
														+ "<option value=1>1</option>"
														+ "<option value=2>2</option>"
														+ "<option value=3>3</option>"
														+ "<option value=4 selected=true>4</option>"
														+ "<option value=5>5</option>"
														+ "</select>";
											} else if (star == 5) {
												rankingSelect = rankingSelect
														+ "<option value='null'>평점</option>"
														+ "<option value=1>1</option>"
														+ "<option value=2>2</option>"
														+ "<option value=3>3</option>"
														+ "<option value=4>4</option>"
														+ "<option value=5 selected=true>5</option>"
														+ "</select>";
											}

											var content = "<input type='text' class='form-control' name='commentContent' id='modifyContent'  value="+comment+">";

											var btn = "<input type='submit' value='수정완료' class='btn btn-default modifyComplate' ></a>";
											var resetBtn = "<input type='reset' class='btn btn-default' value='초기화'>";
											$(this).parent().parent().find(
													"div.stars").html(
													rankingSelect);
											$(this).parent().parent().find(
													"div.commentContent").html(
													content);

											$(this).parent().html(btn);
											$("#removeAndReset").html(resetBtn);
										});
						$("#commentForm").on("submit", function() {
							if (!$("#commentRating").val()) {
								alert("평점을 선택하세요");
								$("#commentRating").focus();
								return false;
							}
							if (!$("#commentContent").val()) {
								alert("댓글을 입력하세요");
								$("#commentContent").focus();
								return false;
							}
						});
						$("#modifyCommentForm").on("submit", function() {
							var a = $("#modifyRating").val();
							if (a == 'null') {
								alert("평점을 선택하세요");
								$("#modifyRating").focus();
								return false;
							}
							if (!$("#modifyContent").val()) {
								alert("댓글을 입력하세요");
								$("#modifyContent").focus();
								return false;
							}
						});
					});
</script>

<style>
/*  modal fullscreen */
.modal.modal-fullscreen {
	 background-color: #fff !important;
	/* Maximize the main wrappers on the screen */
	/* Make the parent wrapper of the modal box a full-width block */
	/* Remove borders and effects on the content */
	/**
	 * /!\ By using this feature, you force the header and footer to be placed
	 * in an absolute position. You must handle by yourself the margin of the
	 * content.
	 */
	
}
.modal.fade.modal-fullscreen.footer-to-bottom.in{
   
	 z-index: 1030 !important;
}

.modal.modal-fullscreen .modal-dialog, .modal.modal-fullscreen .modal-content
	{

	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
	transform: translate(0, 0) !important;
}

.modal.modal-fullscreen .modal-dialog {
	margin: 0;
	width: 100% !important;
	animation-duration: 0.6s;
}

.modal.modal-fullscreen .modal-content {
	border: none;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-box-shadow: inherit;
	-moz-box-shadow: inherit;
	-o-box-shadow: inherit;
	box-shadow: inherit;
	/* change bg color below */
	/* background:#1abc9c; */
}

.modal.modal-fullscreen.force-fullscreen {
	/* Remove the padding inside the body */
	
}

.modal.modal-fullscreen.force-fullscreen .modal-body {
	padding: 0;
}

.modal.modal-fullscreen.force-fullscreen .modal-header, .modal.modal-fullscreen.force-fullscreen .modal-footer
	{
	left: 0;
	position: absolute;
	right: 0;
}

.modal.modal-fullscreen.force-fullscreen .modal-header {
	top: 0;
}

.modal.modal-fullscreen.force-fullscreen .modal-footer {
	bottom: 0;
}
.modal-backdrop.fade.in{
	height:100% !important;
}
</style>

<!-- /.container -->
<div class="modal fade modal-fullscreen  footer-to-bottom"
	id="myModalFullscreen" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog animated zoomInLeft">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">숙소 상세 페이지</h4>

			</div>
			<div class="modal-body" style="background-color: #fff">
				<!-- 사진 출력 부분 -->
				<div class="container reviewslide">
					<div class="row">
						<div class="slidebar">
							<div class="carousel slide" id="myCarousel">
								<div class="carousel-inner">
									<c:choose>
										<c:when test="${empty requestScope.picture }">
											<div class="active item">
												<img
													src="${initParam.rootPath }/uploadReviewPicture/no-images.png"
													style="width: 770px !important; height: 300px !important;">
											</div>
										</c:when>
										<c:otherwise>
											<c:forEach items="${requestScope.picture }" var="picture">
												<c:choose>
													<c:when test="${picture.pictureOrder==1}">
														<div class="active item">
															<img
																src="/Perplus/uploadReviewPicture/${picture.pictureName }"
																style="width: 770px !important; height: 300px !important;">
														</div>
													</c:when>
													<c:otherwise>
														<div class="item">
															<img
																src="/Perplus/uploadReviewPicture/${picture.pictureName }"
																style="width: 770px !important; height: 300px !important;">
														</div>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</div>

								<!--  left right button -->
								<a class="left carousel-control" href="#myCarousel"
									role="button" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a class="right carousel-control" href="#myCarousel"
									role="button" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
						</div>
						<!--/Slider-->
					</div>
					<!-- /row -->

					<!--hidden-xs-->
					<div class="row" id="slider-thumbs" style="margin-top: 10px;">
						<!--Bottom switcher of slider -->
						<ul>
							<c:choose>
								<c:when test="${empty requestScope.picture }">
									<li><a class="thumbnail" id="carousel-selector-0"> <img
											src="${initParam.rootPath }/uploadReviewPicture/no-images.png"
											style="width: 170px !important; height: 100px !important;">
									</a></li>
								</c:when>
								<c:otherwise>
									<c:forEach items="${requestScope.picture }" var="picture">
										<li><a class="thumbnail"
											id="carousel-selector-${picture.pictureOrder-1 }"> <img
												src="/Perplus/uploadReviewPicture/${picture.pictureName }"
												style="width: 170px !important; height: 100px !important;" />
										</a></li>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>

					<!-- REVIEW 내용 출력 부분 -->
					<div class="housesection">
						<div class="row row-condensed space-4">
							<label class="text-left col-md-2"> <span>작성자</span>
							</label>
							<div class="col-md-6">${requestScope.review.memberEmail }</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-2"> <span>리뷰 제목</span>
							</label>
							<div class="col-md-6">${requestScope.review.reviewTitle }</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-2"> <span>장소명</span>
							</label>
							<div class="col-md-6">${requestScope.review.reviewPlace }</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-2"> <span>방문일자</span>
							</label>
							<div class="col-md-6">
								<fmt:formatDate value="${requestScope.review.reviewTime }"
									pattern="yyyy-MM-dd" />
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-2"> <span>평점</span>
							</label>
							<div class="col-md-6">${requestScope.review.reviewRating }</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-2"> <span>내용</span>
							</label>
							<div class="col-md-6">${requestScope.review.reviewContent }</div>
						</div>

						<!-- REVIEW 수정/삭제 버튼 -->
						<c:if
							test="${requestScope.review.memberEmail == sessionScope.login_info.memberEmail}">
							<div class="row row-condensed space-4">
								<div class="col-md-offset-9">
									<a href="#" data-toggle="modal" data-target="#reviewmodify">
										<button class="btn btn-default">수정</button>
									</a> <a
										href="${initParam.rootPath}/review/removeReview.do?reviewSerial=${requestScope.review.reviewSerial}">
										<button type="submit" class="btn btn-default">삭제</button>
									</a>
								</div>
							</div>
						</c:if>

						<!-- 댓글 입력 폼 -->
					</div>
					<c:if test="${sessionScope.login_info!=null }">
						<form
							action="${initParam.rootPath}/review/registerReviewComment.do"
							id="commentForm">
							<input type="hidden" name="reviewSerial"
								value="${requestScope.review.reviewSerial}"> <input
								type="hidden" name="memberEmail"
								value="${sessionScope.login_info.memberEmail }">
							<div class="row row-condensed space-4">
								<div class="col-md-1">
									<div class="stars stars-example-bootstrap">
										<select id="commentRating" name="commentRating">
											<option value="">평점</option>
											<option value=1>1</option>
											<option value=2>2</option>
											<option value=3>3</option>
											<option value=4>4</option>
											<option value=5>5</option>
										</select>
									</div>
								</div>
								<div class="col-md-2">작성자</div>
								<div class="col-md-7">
									<input type="text" class="form-control" name="commentContent"
										id="commentContent" placeholder="댓글을 입력하세요">
								</div>
								<div class="col-md-2">
									<!-- <button type="submit" class="btn btn-default">작성</button> -->
									<input type="submit" value="작성" class="btn btn-default"
										id="commentBnt">
								</div>
							</div>
						</form>
					</c:if>

					<!--달려진 댓글 출력 -->
					<c:forEach items="${requestScope.review.reviewComment }"
						var="comment" varStatus="index">

						<form
							action="${initParam.rootPath }/review/modifyReviewComment.do"
							id="modifyCommentForm">
							<div class="row row-condensed space-4" id="commentArea">
								<input type="hidden" name="reviewSerial"
									value="${comment.reviewSerial}" /> <input type="hidden"
									name="memberEmail" value="${comment.memberEmail }" /> <input
									type="hidden" name="commentSerial"
									value="${comment.commentSerial }" />
								<div class="col-md-1 starlayer">
									<div class="stars stars-example-bootstrap">${comment.commentRating }</div>
								</div>
								<div class="col-md-2">${comment.memberEmail }</div>
								<div class="col-md-5 commentContent">${comment.commentContent }</div>
								<div class="col-md-2">
									<fmt:formatDate value="${comment.commentTime }"
										pattern="yyyy-MM-dd HH:mm:ss" />
								</div>

								<!-- 댓글 수정 삭제 버튼 -->
								<c:if
									test="${comment.memberEmail == sessionScope.login_info.memberEmail}">
									<div class="col-md-1" id="modifyBtn">
										<input type="button" value="수정"
											class="btn btn-default commentModifyBnt" id="${index.index }">
									</div>
								</c:if>

								<c:if
									test="${comment.memberEmail == sessionScope.login_info.memberEmail}">
									<div class="col-md-1" id="removeAndReset">
										<a
											href="${initParam.rootPath}/review/removeReviewComment.do?reviewSerial=${requestScope.review.reviewSerial}&commentSerial=${comment.commentSerial}">
											<input type="button" value="삭제" class="btn btn-default"
											id="commentBnt">
										</a>
									</div>
								</c:if>
							</div>
						</form>
					</c:forEach>

					<!--댓글 페이징 처리 부분  -->
					<!-- 첫 페이지로 이동 -->
					<a
						href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=1">첫페이지로
						이동&nbsp;</a>
					<!--
		이전 페이지 그룹 처리.
		만약에 이전페이지 그룹이 있으면 링크처리하고 없으면 화살표만 나오도록 처리.
	 -->
					<c:choose>
						<c:when test="${requestScope.pageBean.previousPageGroup }">
							<a
								href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${requestScope.pageBean.beginPage -1 }">
								<%-- 현재 페이지 그룹의 시작 페이지-1을 요청.(이전 페이지 그룹의 마지막 페이지 요청)  --%>
								◀&nbsp;&nbsp;
							</a>
						</c:when>
						<c:otherwise>
	 		◀&nbsp;&nbsp;
	 	</c:otherwise>
					</c:choose>

					<!-- 
		현재 page가 속한 page 그룹내의 페이지들 링크.
		현재 pageGroup의 시작page ~ 끝 page
	 -->
					<!-- 만약에 p가 현재페이지면 링크처리를 하지 않고 p가 현재페이지가 아니라면 링크처리. -->

					<c:forEach begin="${requestScope.pageBean.beginPage }"
						end="${requestScope.pageBean.endPage }" step="1" var="page">
						<c:choose>
							<c:when test="${page == requestScope.pageBean.page }">
					[${page }]&nbsp;&nbsp;
				</c:when>
							<c:otherwise>
								<a
									href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${page }">
									${page }&nbsp;&nbsp; </a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 
		다음페이지 그룹으로 이동
		만약에 다음페이지 그룹이 있으면 링크 처리 없으면 화살표만 나오도록 처리
	 -->
					<c:choose>
						<c:when test="${requestScope.pageBean.nextPageGroup }">
							<%--현재 페이지 그룹의 마지막 page+1(다음 페이지 그룹의 시작페이지로 이동) --%>
							<a
								href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${requestScope.pageBean.beginPage +1 }">
								▶ </a>
						</c:when>
						<c:otherwise>
			▶
		</c:otherwise>
					</c:choose>

					<!-- 마지막 페이지 -->
					<a
						href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${requestScope.pageBean.totalPage }">마지막
						페이지</a>
				</div>
				<!-- container close-->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

