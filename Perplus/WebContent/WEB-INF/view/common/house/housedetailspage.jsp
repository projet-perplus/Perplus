<%@page import="java.util.Map"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!--map key-->
<script src="/Perplus/js/jquery-ui.multidatespicker.js"></script>

<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU"
	type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- ui icon ... 등 -->
<script src="/Perplus/js/map.js"></script>
<!-- datepicker-->
<script type="text/javascript">
$(document).ready(
		function() {
			$(function() {
				$("#datepicker").multiDatesPicker({
							addDisabledDates : [${requestScope.shutdownDate}],
							minDate : 0,
							maxDate : "+${requestScope.house.houseFilter.houseFilterReservationTerm}m",
							showOtherMonths : true,
							selectOtherMonths : true,
							yearSuffix : '년',
							monthNames : [ '1월', '2월', '3월', '4월', '5월',
									'6월', '7월', '8월', '9월', '10월', '11월',
									'12월' ],
							dayNamesMin : [ '일', '월', '화', '수', '목', '금',
									'토' ],
							dateFormat : 'yy-mm-dd',
							showMonthAfterYear : true
						});
			});
			var rating = ${requestScope.house.houseRating};
			var count =${requestScope.comment.totalComments};
			var ratingAvg = rating/count;
			if(count==0){
				ratingAvg=0
			}
			$(".ratingAvg").text("평점:"+ratingAvg.toFixed(2));
			
		});	
</script>
<style>
.bg-4 {
	position: relative;
}

.ui-datepicker-inline {
	width: 100%;
}
</style>

<div class="container houseslide">
	<div class="row">
		<div class="slidebar">
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
					<c:choose>
						<c:when test="${empty requestScope.picture}">
							<div class="active item">
								<img src="${initParam.rootPath }/housePicture/no-images.png"
									style="width: 770px !important; height: 300px !important;">
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach items="${requestScope.picture}" var="picture">
								<c:choose>
									<c:when test="${picture.pictureOrder==1}">
										<div class="active item">
											<img src="/Perplus/housePicture/${picture.pictureName }"
												style="width: 770px !important; height: 300px !important;">
										</div>
									</c:when>
									<c:otherwise>
										<div class="item">
											<img src="/Perplus/housePicture/${picture.pictureName }"
												style="width: 770px !important; height: 300px !important;">
										</div>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>

				<!--  left right button -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<!--/Slider-->
	</div>
	<!--/row-->
	<!--hidden-xs-->
	<div class="row" id="slider-thumbs" style="margin-top: 10px;">
		<!--Bottom switcher of slider -->
		<ul>
			<c:choose>
				<c:when test="${empty requestScope.picture}">
					<li><a class="thumbnail" id="carousel-selector-0"> <img
							src="${initParam.rootPath }/housePicture/no-images.png"
							style="width: 170px !important; height: 100px !important;">
					</a></li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${requestScope.picture}" var="picture">
						<li><a class="thumbnail"
							id="carousel-selector-${picture.pictureOrder-1 }"> <img
								src="/Perplus/housePicture/${picture.pictureName }"
								style="width: 170px !important; height: 100px !important;" />
						</a></li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<!-- /slider-thumbs -->


	<div class="row row-condensed space-4">
		<div class="col-md-9 col-sm-8">
			<!-- 숙소 상세 페이지 메뉴 시작 -->
			<div class="col-md-9">
				<div class="row row-maginTB">
					<label class="text-left col-md-4 "> <span class="rowFT">
							${requestScope.house.houseTitle }</span>
					</label>
					<div class="col-md-7 panel-MT"></div>
				</div>
				<div class="row">
					<div class="col-md-4 col-md-offset-1">지역:${requestScope.house.houseFilter.houseFilterLocation }</div>
					<div class="col-md-4 ratingAvg"></div>
					<div class="col-md-3">후기
						개수:${requestScope.comment.totalComments }</div>
				</div>

				<div class="row row-maginTB space-4">
					<div class="col-md-8 rowFT">상세 설명</div>
					<div class="clearfix"></div>
				</div>

				<div class="row">
					<div class="col-md-offset-1 col-md-8">${requestScope.house.houseContent }</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 rowFT">게스트 제약 사항</div>
					<div class="clearfix"></div>

					<c:set var="conditions"
						value="${requestScope.house.houseNecessaryCondition}" />
					<c:set var="necessaryCondition" value="${fn:split(conditions,',')}" />
					<div class="col-md-8 col-md-offset-1">
						<c:forEach var="condition" items="${necessaryCondition }">
							<li>${condition }</li>
						</c:forEach>
					</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 rowFT">옵션</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 col-md-offset-1">
						<li>제공범위 : ${requestScope.house.houseFilter.houseFilterRange }</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>게스트 수 :
							${requestScope.house.houseFilter.houseFilterGuestNumber}</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>건물 유형 : ${requestScope.house.houseFilter.houseFilterType}</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>방 개수 :
							${requestScope.house.houseFilter.houseFilterRoomNumber }</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>침실 수 :
							${requestScope.house.houseFilter.houseFilterBedroomNumber }</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>침대 수 :
							${requestScope.house.houseFilter.houseFilterBedNumber}</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>욕실 수 :
							${requestScope.house.houseFilter.houseFilterBathroomNumber}</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>최소 ${requestScope.house.houseFilter.houseFilterBakMin }박</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>최대 ${requestScope.house.houseFilter.houseFilterBakMax }박</li>
					</div>
					<div class="col-md-8 col-md-offset-1">
						<li>숙소 가격 :
							${requestScope.house.houseFilter.houseFilterPrice}</li>
					</div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 rowFT">시설</div>
					<div class="clearfix"></div>
				</div>
				<div class="row row-condensed space-4">
					<div class="col-md-8 col-md-offset-1">
						<p>
							안전시설
							</p2>
					</div>
					<c:forEach items="${requestScope.house.houseFilter.checkList }"
						var="checkList">
						<c:if test="${checkList.codeKind==1}">
							<div class="col-md-8 col-md-offset-1">
								<li>${checkList.value }</li>
							</div>
						</c:if>
					</c:forEach>
					<div class="col-md-8 col-md-offset-1">편의시설</div>
					<c:forEach items="${requestScope.house.houseFilter.checkList }"
						var="checkList">
						<c:if test="${checkList.codeKind==2}">
							<div class="col-md-8 col-md-offset-1">
								<li>${checkList.value }</li>
							</div>
						</c:if>
					</c:forEach>
					<div class="col-md-8 col-md-offset-1">공용시설</div>
					<c:forEach items="${requestScope.house.houseFilter.checkList }"
						var="checkList">
						<c:if test="${checkList.codeKind==3}">
							<div class="col-md-8 col-md-offset-1">
								<li>${checkList.value }</li>
							</div>
						</c:if>
					</c:forEach>
					<div class="clearfix"></div>

				</div>
				<div class="row row-condensed space-4">
					<div class="col-md-8">
						<div class="col-md-6 rowFT" style="padding-left: 0px;">후기</div>
						<div class="col-md-6 ratingAvg" style="margin-top: 14px;">별점</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<c:if test="${sessionScope.login_info!=null }">
					<form action="${initParam.rootPath}/house/registerHouseComment.do"
						id="commentForm">
						<input type="hidden" name="houseSerial"
							value="${requestScope.house.houseSerial}"> <input
							type="hidden" name="memberEmail"
							value="${sessionScope.login_info.memberEmail }">
						<div class="row row-condensed space-4">
							<div class="col-md-2">
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
							<div class="col-md-6">
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

				<c:forEach items="${requestScope.comment.commentList}" var="comment"
					varStatus="index">
					<div class="row row-condensed space-4" id="commentArea">
						<div class="col-md-1 starlayer">
							<div class="stars stars-example-bootstrap">${comment.commentRating }</div>
						</div>
						<div class="col-md-3">${comment.memberEmail }</div>
						<div class="col-md-5 commentContent">${comment.commentContent }</div>
						<div class="col-md-2">
							<fmt:formatDate value="${comment.commentTime }"
								pattern="yyyy-MM-dd HH:mm:ss" />
						</div>

						<!-- 댓글 삭제 버튼 -->
						<c:if
							test="${comment.memberEmail == sessionScope.login_info.memberEmail}">
							<div class="col-md-1" id="removeAndReset">
								<a
									href="${initParam.rootPath}/house/removeHouseComment.do?houseSerial=${requestScope.house.houseSerial}&commentSerial=${comment.commentSerial}">
									<input type="button" value="삭제" class="btn btn-default"
									id="commentBnt">
								</a>
							</div>
						</c:if>
					</div>
				</c:forEach>

				<!--댓글 페이징 처리 부분  -->
				<!-- 첫 페이지로 이동 -->
				<a
					href="${initParam.rootPath}/house/houseDetail.do?houseSerial=${requestScope.house.houseSerial}&page=1">첫페이지로
					이동&nbsp;</a>
				<!--
		이전 페이지 그룹 처리.
		만약에 이전페이지 그룹이 있으면 링크처리하고 없으면 화살표만 나오도록 처리.
	 -->

				<c:choose>
					<c:when test="${requestScope.comment.pageBean.previousPageGroup }">
						<a
							href="${initParam.rootPath}/house/houseDetail.do?houseSerial=${requestScope.house.houseSerial}&page=${requestScope.comment.pageBean.beginPage -1 }">
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

				<c:forEach begin="${requestScope.comment.pageBean.beginPage }"
					end="${requestScope.comment.pageBean.endPage }" step="1" var="page">
					<c:choose>
						<c:when test="${page == requestScope.comment.pageBean.page }">
					[${page }]&nbsp;&nbsp;
				</c:when>
						<c:otherwise>
							<a
								href="${initParam.rootPath}/house/houseDetail.do?houseSerial=${requestScope.house.houseSerial}&page=${page }">
								${page }&nbsp;&nbsp; </a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 
		다음페이지 그룹으로 이동
		만약에 다음페이지 그룹이 있으면 링크 처리 없으면 화살표만 나오도록 처리
	 -->
				<c:choose>
					<c:when test="${requestScope.comment.pageBean.nextPageGroup }">
						<%--현재 페이지 그룹의 마지막 page+1(다음 페이지 그룹의 시작페이지로 이동) --%>
						<a
							href="${initParam.rootPath}/house/houseDetail.do?houseSerial=${requestScope.house.houseSerial}&page=${requestScope.comment.pageBean.beginPage +1 }">
							▶ </a>
					</c:when>
					<c:otherwise>
			▶
		</c:otherwise>
				</c:choose>
				<!-- 마지막 페이지 -->
				<a
					href="${initParam.rootPath}/house/houseDetail.do?houseSerial=${requestScope.house.houseSerial}&page=${requestScope.comment.pageBean.totalPage }">마지막
					페이지</a>
			</div>
			<!-- /숙소 상세 페이지 메뉴 끝 -->

			<div class="col-md-3 panel-MT zzimSection"
				style="margin-bottom: 30px;">
				<c:choose>
					<c:when test="${empty requestScope.zzim}">
						<a
							href="${initParam.rootPath}/member/registerHouseZzim.do?memberEmail=${sessionScope.login_info.memberEmail}&houseSerial=${requestScope.house.houseSerial}">
							<button class="btn zzim"
								style="padding: 0px; background-color: #fff;">
								<img src="/Perplus/css/image/heartBlank.png"
									style="height: 55px;">
							</button>
						</a>
					</c:when>
					<c:otherwise>
						<a
							href="${initParam.rootPath}/member/cancleHouseZzim.do?houseZzimSerial=${requestScope.zzim.houseZzimSerial}">
							<button class="btn" id="zzimCancle"
								style="padding: 0px; background-color: #fff;">
								<img src="/Perplus/css/image/heart.png" style="height: 55px;">
							</button>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>


		<div class="col-md-3 col-sm-4">
			<!-- right date -->
			<div class="row ">
				<div class="col-md-12">
					<span>예약 가능 날짜</span>
					<div id="datepicker"></div>
				</div>
			</div>

			<div class="row row-maginTB">
				<div
					class="col-md-offset-0 col-sm-offset-1 col-xs-offset-2 col-md-12 col-sm-10 col-xs-8">
					<a href="#" data-toggle="modal" data-target="#reservationdialog">
						<button class="btn btn-danger" style="width: 100%">예약하기</button>
					</a>
				</div>
			</div>

			<!-- 결제 하기 예약 취소는 예약이 되있는 상태에서 보여줘야 한다 -->
			<div class="row row-maginTB">
				<div
					class="col-md-offset-0 col-sm-offset-1 col-xs-offset-2 col-md-12 col-sm-10 col-xs-8">
					<a href="#" data-toggle="modal" data-target="#reservationdialog">
						<button class="btn btn-danger" style="width: 100%">예약취소</button>
					</a>
				</div>
			</div>

			<div class="row row-maginTB">
				<div
					class="col-md-offset-0 col-sm-offset-1 col-xs-offset-2 col-md-12 col-sm-10 col-xs-8">
					<a href="#" data-toggle="modal"
						data-target="#paymentcardselectdialog">
						<button class="btn btn-danger" style="width: 100%">결제하기</button>
					</a>
				</div>
			</div>

			<div class="row row-maginTB">
				<div
					class="col-md-offset-0 col-sm-offset-1 col-xs-offset-2 col-md-12 col-sm-10 col-xs-8">
					<a
						href="${initParam.rootPath}/member/chattingcreate.do?chattingPartner=${requestScope.house.memberEmail}">
						<button class="btn btn-primary" style="width: 100%">호스트와연락</button>
					</a>
				</div>
			</div>

			<c:if
				test="${requestScope.house.memberEmail == sessionScope.login_info.memberEmail}">
				<div class="row row-maginTB">
					<!-- 					<div
						class="col-md-offset-0 col-sm-offset-1 col-xs-offset-2 col-md-6 col-sm-10 col-xs-8">
						<a href="#">
							<button class="btn btn-success"
								style="width: 100%; margin-bottom: 15px;">수정하기</button>
						</a>
					</div> -->

					<div
						class="col-md-offset-0 col-sm-offset-1 col-xs-offset-2 col-md-12 col-sm-10 col-xs-8">
						<a
							href="${initParam.rootPath}/house/removeHouse.do?houseSerial=${requestScope.house.houseSerial}">
							<button class="btn btn-danger" style="width: 100%">삭제</button>
						</a>
					</div>
				</div>
			</c:if>
		</div>
	</div>



	<div class="row row-condensed space-4">
		<div class="col-md-12 col-sm-12 col-xs-12" style="padding: 0px;">
			<div id="map-canvas"
				style="width: 100%; height: 300px; padding: 15px;"></div>
			<!--맵-->
		</div>
	</div>
</div>