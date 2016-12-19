<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU"
	type="text/javascript"></script>
<script src="/Perplus/js/review-map.js"></script>
<script src="/Perplus/js/map.js"></script>
<script src="/Perplus/js/markerclusterer.js"></script>


<script type="text/javascript">
	$(function() {

		var error = '${requestScope.error}'
		$('#reviewEnrollment').on('hidden.bs.modal', function() {
			if (error) {
				location.href = location.href.replace(error, "");
			}
		})
		if (error) {
			$('#reviewEnrollment').modal('show');
		}
	})
</script>
<!-- 크롬 캐싱 문제 때문에 임의의 쿼리 스트링 추가 (완성본에서는 제거필요) -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#searchLocation").on("click", function() {
			if ($("#locationName").val().length != 0) {
				$("#map-div").find("#location").val($("#locationName").val());
				locationSearch();
			}
		})

		$('.dropdown input, .dropdown label').click(function(e) {
			e.stopPropagation();
		});

		$("input:checkbox[name=marker_filter]").change(function() {
			var markerArray = [];
			$("input:checkbox[name=marker_filter]:checked").each(function() {
				markerArray.push($(this).val());
			});
			modifyMarkerFilter(markerArray);
			resetMapMarker();
		})
	})
/* 		$(".reviewDetail").on("click",function(){
			$.ajax({
				url:"/Perplus/review/showReview.do",
				dataType:"json",
				data:{"reviewSerial":1},
				success:function(obj){
					$("#memEmail").text(obj.review.memberEmail);
					$("#reviewTitle").text(obj.review.reviewTitle);
					$("#reviewPlace").text(obj.review.reviewPlace);
					$("#reviewTime").text(obj.review.reviewPlace);
					$("#reviewRating").text(obj.review.reviewRating);
					$("#reviewContent").text(obj.review.reviewContent);
					
					for(var i=0;i<obj.review.reviewComment.length;i++){
						$("#reviewCommentRating").text(obj.review.reviewComment[i].commentRating);
						$("#reviewCommentMemberEmail").text(obj.review.reviewComment[i].memberEmail);
						$("#reviewCommentContent").text(obj.review.reviewComment[i].commentContent);
					}
				}
			});
		}); */
	
</script>

<div class="container">
	<div id="dashboard-content" class="hotplace">
		<div class="panel-header">

			<div class="col-md-4 col-xs-4 headeCrH panel-PN"
				style="height: 50px; width: 250px;">
				<div class="col-md-12 panel-MT panel-PN">
					<div class="form-group">
						<input type="text" class="form-control" id="locationName"
							placeholder="지역명 도시명,주소">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 col-xs-4">
				<button type="button" id="searchLocation"
					class="btn btn-primary btn-md panel-MT" onclick="">검색</button>


			</div>

			<div class="dropdown panel-MT pull-right" style="right: 1%">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					마커필터 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu " style="min-width: 90px !important;">
					<li style="padding-left: 23%; margin-top: 10px"><label
						class="checkbox-inline"><input type="checkbox"
							name="marker_filter" value="food" checked="checked" onchange="">음식</label>
					<li style="padding-left: 23%; margin-bottom: 10px;"><label
						class="checkbox-inline"><input type="checkbox"
							name="marker_filter" value="hot" checked="checked" onchange="">명소</label>
				</ul>
			</div>


		</div>
		<div id="map-div" class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<!-- stage - 해당 페이지, location - 검색한 지역 string이 저장 -->
					<input type="hidden" id="stage" value="review"> 
					<input type="hidden" id="location">
					<div id="map-canvas" style="width: 100%; height: 489px"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- <a href="#" data-toggle="modal" data-target="#reviewEnrollment"> -->
<!-- 	<input type="hidden" id="reviewForm" /> -->
<!-- </a> -->

<%-- 

<a href="${initParam.rootPath}/review/showReview.do?reviewSerial=1">
</a> --%>
	<!-- reviewSerial은 requestScope의 리뷰시리얼값~~ -->
	<button type="button" class="btn btn-primary" onclick="window.open('/Perplus/review/showReview.do?reviewSerial=1','detail','fullscreen');void(0);">리뷰 상세페이지</button>

<button class="btn btn-primary reviewDetail" data-toggle="modal"
	data-target="#myModalFullscreen" contenteditable="false">다이얼로그로 뺌 ...</button>