<%@page import="com.perplus.review.vo.ReviewPictureVo"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>


<div class="container reviewslide">
	<div class="row">
		<div class="slidebar">
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
					<c:forEach items="${requestScope.picture }" var="picture">
						<c:choose>
							<c:when test="${picture.pictureOrder==1}">
								<div class="active item">
									<img src="/Perplus/uploadReviewPicture/${picture.pictureName }"
										style="width: 770px !important; height: 300px !important;">
								</div>
							</c:when>
							<c:otherwise>
								<div class="item">
									<img src="/Perplus/uploadReviewPicture/${picture.pictureName }"
										style="width: 770px !important; height: 300px !important;">
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>

				<!--  left right button -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a> 
				<a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div><!--/Slider-->
	</div><!-- /row -->
	
	<!--hidden-xs-->
	<div class="row" id="slider-thumbs" style="margin-top: 10px;">
		<!--Bottom switcher of slider -->
		<ul>
		<c:forEach items="${requestScope.picture }" var="picture">
			<li>
				<a class="thumbnail" id="carousel-selector-${picture.pictureOrder-1 }">
					<img src="/Perplus/uploadReviewPicture/${picture.pictureName }" 
					    	style="width: 170px !important; height:100px !important;"/>
				</a>
			</li>
		</c:forEach>
		</ul>
	</div>
	
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
				<%-- <fmt:formatDate value="${requestScope.review.reviewTime}" pattern="yyyy-MM-dd"/> --%>
				${requestScope.review.reviewTime}
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
	</div>

	<form action="${initParam.rootPath}/review/registerReviewComment.do">
		<input type="hidden" name="reviewSerial" value="${requestScope.review.reviewSerial}">
		<div class="row row-condensed space-4">
			<div class="col-md-1">
				<div class="stars stars-example-bootstrap">
					<select id="commentRating" name="commentRating" autocomplete="off">
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
				<input type="text" class="form-control" name="commentContent" id="commentContent"
					placeholder="댓글을 입력하세요">
			</div>
			<div class="col-md-2">
				<!-- <button type="submit" class="btn btn-default">작성</button> -->
				<input type="submit" value="작성" class="btn btn-default" id="commentBnt">
			</div>
		</div>
	</form>
	
	<c:forEach items="${requestScope.review.reviewComment }" var="comment">
		<div class="row row-condensed space-4">
			<div class="col-md-1">
				<div class="stars stars-example-bootstrap">
					${comment.commentRating }
				</div>
			</div>
			<div class="col-md-2">${comment.memberEmail }</div>
			<div class="col-md-5">${comment.commentContent }</div>
			<div class="col-md-2">시간</div>
			<div class="col-md-1">수정</div>
			<div class="col-md-1">삭제</div>
		</div>
	</c:forEach>
	
		<!-- 첫 페이지로 이동 -->
	<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=1">첫페이지로 이동&nbsp;</a>
	<!--
		이전 페이지 그룹 처리.
		만약에 이전페이지 그룹이 있으면 링크처리하고 없으면 화살표만 나오도록 처리.
	 -->
	 <c:choose>
	 	<c:when test="${requestScope.pageBean.previousPageGroup }">
	 		<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${requestScope.pageBean.beginPage -1 }"> <%-- 현재 페이지 그룹의 시작 페이지-1을 요청.(이전 페이지 그룹의 마지막 페이지 요청)  --%>
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
	
	<c:forEach begin="${requestScope.pageBean.beginPage }" end="${requestScope.pageBean.endPage }" step="1" var="page">
			<c:choose>
				<c:when test="${page == requestScope.pageBean.page }">
					[${page }]&nbsp;&nbsp;
				</c:when>
				<c:otherwise>
					<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${page }">
						${page }&nbsp;&nbsp;
					</a>
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
			<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${requestScope.pageBean.beginPage +1 }">
				▶
			</a>
		</c:when>		
		<c:otherwise>
			▶
		</c:otherwise>
	</c:choose>
	
	<!-- 마지막 페이지 -->
	<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=${requestScope.review.reviewSerial }&page=${requestScope.pageBean.totalPage }">마지막 페이지</a>
</div> <!-- container close-->
